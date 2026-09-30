Class {
	#name : 'RSCameraTest',
	#superclass : 'RSTest',
	#category : 'Roassal-Global-Tests-Core',
	#package : 'Roassal-Global-Tests',
	#tag : 'Core'
}

{ #category : 'tests' }
RSCameraTest >> testMatrix [
	| canvas |
	canvas := RSCanvas new.
	self assert: canvas camera matrix isIdentity
]

{ #category : 'tests' }
RSCameraTest >> testPosition [

	| c |
	c := RSCanvas new.
	c add: (RSEllipse new size: 30).
	c camera translateBy: 25 @ 15.
	self assert: c camera position equals: 25 @ 15
]

{ #category : 'tests' }
RSCameraTest >> testVisibleArea [

	| canvas |
	canvas := RSCanvas new.
	canvas extent: 100 @ 100.
	self assert: canvas visibleRectangle equals: (-50 @ -50 corner: 50 @ 50)
]

{ #category : 'tests' }
RSCameraTest >> testVisibleAreaTopLeft [

	| canvas |
	canvas := RSCanvas new.
	canvas originTopLeft.
	canvas extent: 100 @ 100.
	self assert: canvas visibleRectangle equals: (0 @ 0 corner: 100 @ 100)
]

{ #category : 'tests' }
RSCameraTest >> testVisibleAreaWTopLeftWithScale [

	| canvas |
	canvas := RSCanvas new.
	canvas extent: 100 @ 100.
	canvas originTopLeft.
	canvas camera scale: 2.
	self assert: canvas visibleRectangle equals: (0 @ 0 corner: 50 @ 50)
]

{ #category : 'tests' }
RSCameraTest >> testVisibleAreaWithScale [

	| canvas |
	canvas := RSCanvas new.
	canvas extent: 100 @ 100.
	canvas camera scale: 2.

	self assert: canvas visibleRectangle equals: (-25 @ -25 corner: 25 @ 25)
]
