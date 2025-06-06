Extension { #name : 'RSBitmap' }

{ #category : '*Roassal-Examples' }
RSBitmap class >> example [

	| image |
	image := self new.
	image form: (self iconNamed: #pharo).
	^ image inspector
]
