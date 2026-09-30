Extension { #name : 'RTNode' }

{ #category : '*Roassal-Global-Tests' }
RTNode class >> example [

	| root left right |
	"you can manually manipulate the RNode, but you should use RSRTreeShapeCollection"
	root := self new.
	left := self new.
	right := self new.
	root left: left.
	root right: right.
	left
		contents: (RSBox model: 'A');
		rectangle: (0 @ 0 corner: 20 @ 20);
		height: 1.
	right
		contents: (RSBox model: 'B');
		rectangle: (30 @ 30 corner: 50 @ 50);
		height: 1.
	root
		rectangle: (5 @ 5 corner: 45 @ 45);
		height: 2.

	^ root inspector
]

{ #category : '*Roassal-Global-Tests' }
RTNode class >> exampleAdd [

	| root |
	"same result but with balance"
	root := self new: (RSBox model: 'A').
	root addChild: (RSBox new model: 'B'; position: 20@20).
	^ root inspector
]
