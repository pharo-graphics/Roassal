Extension { #name : 'RSElasticInterpolator' }

{ #category : '*Roassal-Inspector' }
RSElasticInterpolator >> inspectorCanvas: aBuilder [
	<inspectorPresentationOrder: 90 title: 'Canvas'>
	^ self inspectorWithTools: { #amplitude. #period } in: aBuilder
]
