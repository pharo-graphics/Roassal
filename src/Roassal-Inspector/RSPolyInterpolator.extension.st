Extension { #name : 'RSPolyInterpolator' }

{ #category : '*Roassal-Inspector' }
RSPolyInterpolator >> inspectorCanvas: aBuilder [
	<inspectorPresentationOrder: 90 title: 'Canvas'>
	^ self inspectorWithTools: { #exponent } in: aBuilder
]
