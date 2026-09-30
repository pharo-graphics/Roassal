Extension { #name : 'RSPolygon' }

{ #category : '*Roassal-Bloc' }
RSPolygon >> asBlGeometry [

	^ BlPolygonGeometry vertices: self points
]
