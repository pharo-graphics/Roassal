"
TODO
"
Class {
	#name : 'RSColorMonoGenerator',
	#superclass : 'RSAbstractColorGenerator',
	#category : 'Roassal-Experimental-Force',
	#package : 'Roassal-Experimental',
	#tag : 'Force'
}

{ #category : 'accessing' }
RSColorMonoGenerator >> backgroundColor [
	^ Color white
]

{ #category : 'accessing' }
RSColorMonoGenerator >> colorFor: aParticle [

	^ Color black alpha: 0.1
]
