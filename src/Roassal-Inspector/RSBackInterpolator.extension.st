Extension { #name : 'RSBackInterpolator' }

{ #category : '*Roassal-Inspector' }
RSBackInterpolator >> inspectorCanvas: aBuilder [
	<inspectorPresentationOrder: 90 title: 'Canvas'>
	^ self inspectorWithTools: { #overshoot } in: aBuilder
]
