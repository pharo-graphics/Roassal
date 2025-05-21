Extension { #name : 'RSShape' }

{ #category : '*Roassal-Inspector' }
RSShape >> canvasForInspector [
	| canvas copy |
	canvas := RSCanvas new.
	copy := self copyWithoutAnnouncer.
	canvas addShape: copy.
	canvas @ RSChessBackgroundInteraction.
	^ canvas
]

{ #category : '*Roassal-Inspector' }
RSShape >> inspectorShadowFor: padding color: aColor [
	^ self subclassResponsibility
]

{ #category : '*Roassal-Inspector' }
RSShape >> inspectorShape: aBuilder [
	<inspectorPresentationOrder: 90 title: 'Shape'>

	^ (aBuilder instantiate: SpRoassalInspectorPresenter)
		canvas: self canvasForInspector;
		yourself
]
