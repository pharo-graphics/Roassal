"
TODO
"
Class {
	#name : 'RSAbstractColorGenerator',
	#superclass : 'RSObject',
	#category : 'Roassal-Experimental-Force',
	#package : 'Roassal-Experimental',
	#tag : 'Force'
}

{ #category : 'accessing' }
RSAbstractColorGenerator >> backgroundColor [
	^ self subclassResponsibility
]

{ #category : 'accessing' }
RSAbstractColorGenerator >> colorFor: aParticle [
	self subclassResponsibility
]
