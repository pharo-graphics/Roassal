Extension { #name : 'RSTransitionAnimation' }

{ #category : '*Roassal-Inspector' }
RSTransitionAnimation >> inspectorControls: aBuilder [

	<inspectorPresentationOrder: 0 title: 'Controls'>
	^ (aBuilder instantiate: SpRSTransitionInspectorPresenter)
		  animation: self;
		  yourself
]
