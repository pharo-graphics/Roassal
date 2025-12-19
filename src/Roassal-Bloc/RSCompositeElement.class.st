"
I'm a Bloc element that is associated with a RSComposite.
"
Class {
	#name : 'RSCompositeElement',
	#superclass : 'RSShapeElement',
	#category : 'Roassal-Bloc-Elements',
	#package : 'Roassal-Bloc',
	#tag : 'Elements'
}

{ #category : 'adding' }
RSCompositeElement >> addBlocToRoassalListener: aHandler [

	super addBlocToRoassalListener: aHandler.
	
	self childrenDo: [ :each |
		each addBlocToRoassalListener: aHandler ]
]

{ #category : 'refreshing' }
RSCompositeElement >> updateFromRoassalShape [

	super updateFromRoassalShape.
	
	self childrenDo: [ :each | each updateFromRoassalShape ]
]
