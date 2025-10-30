Class {
	#name : 'RSBlocHostTest',
	#superclass : 'TestCase',
	#category : 'Roassal-Bloc-Tests',
	#package : 'Roassal-Bloc',
	#tag : 'Tests'
}

{ #category : 'tests' }
RSBlocHostTest >> testAddShapeAfterOpen [

	| canvas shape1 element1 shape2 element2 form |
	canvas := RSCanvas new.
	canvas extent: 400 @ 300.
	canvas useBlocHost.

	canvas addShape:
		(shape1 := RSCircle new
			color: Color red;
			position: -25 asPoint;
			extent: 50 asPoint;
			yourself).

	"This emulates opening"
	canvas host canvasElement
		elementAtShape: shape1
		ifFound: [ :found | element1 := found ]
		ifNone: [ self fail ].

	"Add a shape after open"
	canvas addShape:
		(shape2 := RSCircle new
			color: Color green;
			position: 25 asPoint;
			extent: 50 asPoint;
			yourself).
	canvas signalUpdate.

	canvas host canvasElement
		elementAtShape: shape2
		ifFound: [ :found | element2 := found ]
		ifNone: [ self fail ].

	self
		assert: element2 transformation matrix x - 25
		equals: element1 transformation matrix x + 25.

	form := canvas asForm.
	self
		assert: (form colorAt: (canvas extent/2) - 25 asPoint)
		equals: Color red.
	self
		assert: (form colorAt: (canvas extent/2) + 25 asPoint)
		equals: Color green
]

{ #category : 'tests' }
RSBlocHostTest >> testAsForm [

	| canvas form |
	canvas := RSCanvas new.
	canvas useBlocHost.

	canvas extent: 200 @ 100.
	canvas color: Color blue.
	canvas addShape:
		(RSBox new
			color: Color red;
			extent: 20 @ 10;
			yourself).
	form := canvas asForm.

	self assert: form isForm.
	self assert: form extent equals: 200 @ 100.
	self assert: (form colorAt: 1@1) equals: Color blue.
	self assert: (form colorAt: form extent // 2) equals: Color red
]
