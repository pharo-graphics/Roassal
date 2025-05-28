Extension { #name : 'RSPolyline' }

{ #category : '*Roassal-Examples' }
RSPolyline class >> exampleArrowedPolyline [
	<sampleInstance>

	| line |
	line := self new.
	line controlPoints: {0@0. 100@0. 0@ -100 }.
	line markerEnd: (RSShapeFactory arrow size: 10).
	line color: Color purple.
	^ line
]

{ #category : '*Roassal-Examples' }
RSPolyline class >> examplePolyline [
	<sampleInstance>

	| line |
	line := self new.
	line controlPoints: {0@0. 100@ -50.  0@ -100. 50@ 0}.
	^ line
]
