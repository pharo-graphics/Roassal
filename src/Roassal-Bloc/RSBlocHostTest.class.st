Class {
	#name : 'RSBlocHostTest',
	#superclass : 'TestCase',
	#category : 'Roassal-Bloc-Tests',
	#package : 'Roassal-Bloc',
	#tag : 'Tests'
}

{ #category : 'private' }
RSBlocHostTest >> formOfOpenedCanvas: aCanvas [
	"Bloc renders a space only once it is opened in a window, so open it, take the form and wait for the window to close."

	| space form |
	aCanvas host createSpace.
	space := aCanvas host space.
	space show.
	self waitUntil: [ space isOpened and: [ space root extent = aCanvas extent ] ].
	form := space root asForm.
	space close.
	self waitUntil: [ space isOpened not ].
	^ form
]

{ #category : 'tests' }
RSBlocHostTest >> testAddShapeAfterOpen [

	| canvas shape1 element1 shape2 element2 form |
	canvas := RSCanvas new.
	canvas extent: 400 @ 300.
	canvas useBlocHost.

	canvas addShape: (shape1 := RSCircle new
		           color: Color red;
		           position: -25 @ -25;
		           extent: 50 @ 50;
		           yourself).

	"This emulates opening"
	canvas host canvasElement elementAtShape: shape1 ifFound: [ :found | element1 := found ] ifNone: [ self fail ].

	"Add a shape after open"
	canvas addShape: (shape2 := RSCircle new
		           color: Color green;
		           position: 25 @ 25;
		           extent: 50 @ 50;
		           yourself).
	canvas signalUpdate.

	canvas host canvasElement elementAtShape: shape2 ifFound: [ :found | element2 := found ] ifNone: [ self fail ].

	self assert: element2 transformation matrix x - 25 equals: element1 transformation matrix x + 25.

	form := self formOfOpenedCanvas: canvas.
	self assert: (form colorAt: canvas extent / 2 - (25 @ 25)) equals: Color red.
	self assert: (form colorAt: canvas extent / 2 + (25 @ 25)) equals: Color green
]

{ #category : 'tests' }
RSBlocHostTest >> testAsForm [

	| canvas form |
	canvas := RSCanvas new.
	canvas useBlocHost.

	canvas extent: 200 @ 100.
	canvas color: Color blue.
	canvas addShape: (RSBox new
		 color: Color red;
		 extent: 20 @ 10;
		 yourself).
	form := self formOfOpenedCanvas: canvas.

	self assert: form isForm.
	self assert: form extent equals: 200 @ 100.
	self assert: (form colorAt: 1 @ 1) equals: Color blue.
	self assert: (form colorAt: form extent // 2) equals: Color red
]

{ #category : 'tests' }
RSBlocHostTest >> testClick [

	| canvas shape positionInRSCanvas canvasElement container positionInBlSpace |

	"We add a canvas to a container element that has a position (to add complexity)"
	canvas := RSCanvas new.
	canvas useBlocHost.
	shape := RSBox new
		         color: Color red;
		         position: 20 @ 10;
		         extent: 40 @ 30;
		         yourself.
	canvas addShape: shape.
	canvasElement := canvas host canvasElement.
	container := BlElement new
		             background: Color green;
		             position: 20 @ 10;
		             extent: 400 @ 300;
		             yourself.
	container addChild: canvasElement.

	canvas
		when: RSMouseLeftClick
		do: [ :evt | positionInRSCanvas := evt position ]
		for: self.

	"Click at the center of the RSBox"
	positionInBlSpace := 250.0@245.0.
	"(canvasElement elementAtShape: shape) boundsInSpace center"

	BlSpace
		simulateEvents: {
			((BlMouseDownEvent button: BlMouseButton primary)
				 position: positionInBlSpace;
				 yourself).
			((BlMouseUpEvent button: BlMouseButton primary)
				 position: positionInBlSpace;
				 yourself) }
		on: container.

	self
		assert: (canvasElement canvasPointInBlSpace: positionInRSCanvas)
		equals: positionInBlSpace.
	self
		assert: (canvasElement canvasPointInBlLocal: positionInRSCanvas)
		equals: positionInBlSpace - container position
]

{ #category : 'private' }
RSBlocHostTest >> waitUntil: aBlock [
	"Poll aBlock until it answers true, failing the test if that takes longer than about five seconds."

	| attempts |
	attempts := 0.
	[ aBlock value or: [ attempts > 500 ] ] whileFalse: [
		attempts := attempts + 1.
		(Delay forMilliseconds: 10) wait ].
	self assert: aBlock value description: 'Timed out waiting for the Bloc space to open or close'
]
