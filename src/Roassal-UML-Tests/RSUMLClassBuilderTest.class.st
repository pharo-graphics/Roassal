Class {
	#name : 'RSUMLClassBuilderTest',
	#superclass : 'RSTest',
	#category : 'Roassal-UML-Tests',
	#package : 'Roassal-UML-Tests'
}

{ #category : 'accessing' }
RSUMLClassBuilderTest >> classToTest [

	^ RSUMLClassBuilder
]

{ #category : 'tests' }
RSUMLClassBuilderTest >> testBasic [
	| builder classes |
	classes := RSAttachPoint withAllSubclasses.
	builder := self classToTest new.
	builder classes: classes.
	builder build.
	self assert: builder shapes size equals: classes size
]

{ #category : 'tests' }
RSUMLClassBuilderTest >> testJustClassName [
	| builder shape  |
	builder := self classToTest new.
	builder classes: {RSMouseMove}.
	builder build.
	shape := builder shapes first.
	self assert: shape shapes size equals: 2.
	self assert: shape shapes first class equals: RSBox.
	self assert: shape shapes second class equals: RSComposite.

	builder := self classToTest new.
	builder classes: {RSMouseMove}.
	builder renderer: RSTorchUMLClassRenderer new.
	builder build.
	shape := builder shapes first.
	self assert: shape shapes size equals: 3.
	self assert: shape shapes first class equals: RSBox.
	self assert: shape shapes second class equals: RSComposite.
	self assert: shape shapes third class equals: RSBox
]
