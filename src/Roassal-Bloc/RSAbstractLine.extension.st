Extension { #name : 'RSAbstractLine' }

{ #category : '*Roassal-Bloc' }
RSAbstractLine >> asBlElement [

	^ (RSShapeElement newWith: self)
		  geometry: self asBlGeometry;
		  updateFromRoassalShape;
		  yourself
]

{ #category : '*Roassal-Bloc' }
RSAbstractLine >> asBlGeometry [

	^ self subclassResponsibility
]

{ #category : '*Roassal-Bloc' }
RSAbstractLine >> updateBlElement: aBlElement [
	"Update the element. Note: Unlike other shapes, the lines need to update the geometry."

	self updateBlGeometry: aBlElement geometry.

	aBlElement
		extent: self encompassingRectangle extent;
		border: self blBorder;
		background: self blBackground
]

{ #category : '*Roassal-Bloc' }
RSAbstractLine >> updateBlGeometry: aBlGeometry [

	self subclassResponsibility
]
