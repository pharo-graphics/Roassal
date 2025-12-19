"
I'm a RSHost that represents a RSCanvas as BlElement instances, eventually in a BlSpace (window).
"
Class {
	#name : 'RSBlocHost',
	#superclass : 'RSHost',
	#instVars : [
		'space',
		'canvasElement',
		'lastMousePosition',
		'dirtyRectangle'
	],
	#category : 'Roassal-Bloc-Core',
	#package : 'Roassal-Bloc',
	#tag : 'Core'
}

{ #category : 'converting' }
RSBlocHost >> asForm [

	self createSpace.
	^ space root asForm
]

{ #category : 'opening' }
RSBlocHost >> canvasElement [
	"Analog to RSCanvas>>createMorph"

	^ canvasElement ifNil: [
		canvasElement := RSCanvasElement newWithCanvas: canvas ]
]

{ #category : 'opening' }
RSBlocHost >> createSpace [

	space := BlSpace new
		extent: canvas extent;
		yourself.

	space root addChild:
		(self canvasElement
			constraintsDo: [ :c |
				c horizontal matchParent.
				c vertical matchParent ];
			yourself)
]

{ #category : 'accessing' }
RSBlocHost >> defaultWindowTitle [

	^ super defaultWindowTitle , ' - Bloc'
]

{ #category : 'dirty areas' }
RSBlocHost >> dirtyRectangle: aRectangleOrNil [
	"Copied from RSMorphicHost"

	| visibleRectangle |
	dirtyRectangle := aRectangleOrNil.
	dirtyRectangle ifNil: [ ^ self ].
	visibleRectangle := canvas visibleRectangle.
	dirtyRectangle := dirtyRectangle intersect: visibleRectangle
]

{ #category : 'accessing' }
RSBlocHost >> lastMousePosition [

	^ lastMousePosition
]

{ #category : 'accessing' }
RSBlocHost >> lastMousePosition: aPoint [

	lastMousePosition := aPoint
]

{ #category : 'opening' }
RSBlocHost >> openWithTitle: aTitleAsString [
	"Open a canvas with a given title"

	self createSpace.

	"Force announcement of an initial BlSpaceShownEvent.
	Many Roassal examples show this assumption.
	See: https://github.com/pharo-graphics/Roassal/issues/139"
	space addEventHandlerOn: BlSpaceShownEvent doOnce: [
		space extent = canvas extent ifTrue: [
			canvas notifyExtentChanged: canvas extent ] ].

	"We imitate Morphic host, which ignores the canvas extent"
	space extent: self defaultWindowExtent.

	space
		title: aTitleAsString;
		show.

	^ space
]

{ #category : 'opening' }
RSBlocHost >> signalUpdate [
	"Request a redraw on the canvas."

	"Skip it if the canvas was already opened."
	canvasElement ifNil: [ ^ self ].
	canvasElement signalUpdate
]

{ #category : 'accessing' }
RSBlocHost >> space [
	"Answer the BlSpace where the the canvas has been opened. If it wasn't opened, the answer is nil."

	^ space
]

{ #category : 'dirty areas' }
RSBlocHost >> updateDirtyRectangleWith: aRectangle [
	"Copied from RSMorphicHost"

	self dirtyRectangle:
		(dirtyRectangle
			 ifNil: [ aRectangle ]
			 ifNotNil: [ dirtyRectangle merge: aRectangle ])
]
