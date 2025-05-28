Extension { #name : 'BaselineOf' }

{ #category : '*Roassal-BaselineMap' }
BaselineOf >> inspectionBaselineMap: aBuilder [
	<inspectorPresentationOrder: 10 title: 'Dependencies Map'>
	| canvas |
	
	canvas := RSBaselineMapSettings classMapBuilder new
		baseline: self class;
		build;
		canvas.

	^ (aBuilder instantiate: SpRoassalInspectorPresenter)
		canvas: canvas;
		yourself
]
