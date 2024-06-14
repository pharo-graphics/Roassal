"
Abstract descriptor for UML artifacts
"
Class {
	#name : 'RSUMLAbstractModelDescriptor',
	#superclass : 'RSObject',
	#category : 'Roassal-UML-Descriptor',
	#package : 'Roassal-UML',
	#tag : 'Descriptor'
}

{ #category : 'testing' }
RSUMLAbstractModelDescriptor class >> isAbstract [
	^self name = #RSUMLAbstractModelDescriptor
]

{ #category : 'public' }
RSUMLAbstractModelDescriptor >> forPharo [

	self subclassResponsibility
]

{ #category : 'initialization' }
RSUMLAbstractModelDescriptor >> initialize [
	super initialize.
	self forPharo
]
