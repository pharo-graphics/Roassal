Extension { #name : 'RTreeCollection' }

{ #category : '*Roassal-Inspector' }
RTreeCollection >> inspectorQueries: aBuilder [
	<inspectorPresentationOrder: 4 title: 'Queries'>

	^ root inspectorQueries: aBuilder
]

{ #category : '*Roassal-Inspector' }
RTreeCollection >> inspectorQueriesContext: aContext [
	aContext withoutEvaluator
]

{ #category : '*Roassal-Inspector' }
RTreeCollection >> inspectorRectangles: aBuilder [
	<inspectorPresentationOrder: 1 title: 'Rectangles'>

	^ self root inspectorRectangles: aBuilder
]

{ #category : '*Roassal-Inspector' }
RTreeCollection >> inspectorRectanglesContext: aContext [
	aContext withoutEvaluator
]

{ #category : '*Roassal-Inspector' }
RTreeCollection >> inspectorTree: aBuilder [
	<inspectorPresentationOrder: 3 title: 'Tree'>

	^ root inspectorTree: aBuilder
]

{ #category : '*Roassal-Inspector' }
RTreeCollection >> inspectorTreeContext: aContext [
	aContext withoutEvaluator
]

{ #category : '*Roassal-Inspector' }
RTreeCollection >> inspectorWithParent: aBuilder [
	<inspectorPresentationOrder: 2 title: 'With Parent'>

	^ root inspectorWithParent: aBuilder
]

{ #category : '*Roassal-Inspector' }
RTreeCollection >> inspectorWithParentContext: aContext [
	aContext withoutEvaluator
]
