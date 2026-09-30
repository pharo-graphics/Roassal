"
I'm a Bloc element that is associated with a Roassal shape.
"
Class {
	#name : 'RSShapeElement',
	#superclass : 'BlElement',
	#instVars : [
		'roassalShape'
	],
	#category : 'Roassal-Bloc-Elements',
	#package : 'Roassal-Bloc',
	#tag : 'Elements'
}

{ #category : 'instance creation' }
RSShapeElement class >> newWith: aRSShape [

	^ self basicNew
		initializeWith: aRSShape;
		yourself
]

{ #category : 'adding' }
RSShapeElement >> addBlocToRoassalEventHandler: aHandler [

	self addEventHandler: aHandler
]

{ #category : 'accessing' }
RSShapeElement >> initializeWith: aRSShape [

	self
		initialize;
		beOutskirtsCentered.

	roassalShape := aRSShape
]

{ #category : 'printing' }
RSShapeElement >> printOn: aStream [
	"Generate a string representation of the receiver based on its instance variables."

	super printOn: aStream.
	aStream
		nextPutAll: ' (';
		print: roassalShape;
		nextPut: $)
]

{ #category : 'accessing' }
RSShapeElement >> roassalShape [

	^ roassalShape
]

{ #category : 'refreshing' }
RSShapeElement >> updateFromRoassalShape [

	roassalShape updateBlElement: self
]
