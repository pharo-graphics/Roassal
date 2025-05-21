Extension { #name : 'NSOrdinalScale' }

{ #category : '*Roassal-Inspector' }
NSOrdinalScale >> inspectorColors: aBuilder [
	<inspectorPresentationOrder: 0 title: 'Colors'>
	| canvas |
	
	canvas := RSCanvas new.
	canvas addAll: (self range collect: [ :color |
		RSEllipse new
			model: color;
			color: color;
			size: 15;
			yourself ]).
	RSVerticalLineLayout new gapSize: 0; on: canvas nodes.
	canvas @ RSCanvasController simple.
	^ (aBuilder instantiate: SpRoassalInspectorPresenter)
		canvas: canvas;
		yourself
]

{ #category : '*Roassal-Inspector' }
NSOrdinalScale >> inspectorColorsContext: context [
	context
		evaluator: false;
		active: (self range allSatisfy: #isColor)
]
