Extension { #name : 'AthensAffineTransform' }

{ #category : '*Roassal' }
AthensAffineTransform >> asFloatTransform [
	^ self copy floatValues; yourself
]

{ #category : '*Roassal' }
AthensAffineTransform >> floatValues [
	"convert all the values to float"
	x := x asFloat.
	y := y asFloat.
	sx := sx asFloat.
	sy := sy asFloat.
	shx := shx asFloat.
	shy := shy asFloat
]
