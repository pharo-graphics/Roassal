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

{ #category : 'opening' }
RSBlocHost >> canvasElement [
	"Analog to RSCanvas>>createMorph"

	^ canvasElement ifNil: [
		canvasElement := RSCanvasElement newWithCanvas: canvas ]
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
RSBlocHost >> lastMousePosition: anObject [

	lastMousePosition := anObject
]

{ #category : 'opening' }
RSBlocHost >> openWithTitle: aTitleAsString [
	"Open a canvas with a given title"

	space := BlSpace new
		extent: canvas extent;
		title: aTitleAsString;
		yourself.

	space root addChild: self canvasElement.
	space show.

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
