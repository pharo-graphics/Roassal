Class {
	#name : 'GraphvizFFILibrary',
	#superclass : 'FFILibrary',
	#category : 'Roassal-GraphViz-FFI',
	#package : 'Roassal-GraphViz',
	#tag : 'FFI'
}

{ #category : 'accessing platform' }
GraphvizFFILibrary >> macModuleName [
	{
		'liball.dylib' .
		(Smalltalk imageDirectory fullName, '/pharo-local/iceberg/pharo-graphics/Roassal/graphvizlib/liball.dylib')
	} do: [:path |
		path asFileReference exists ifTrue: [^ path ] ].
	self error: 'Cannot locate the liball library.'
]

{ #category : 'accessing platform' }
GraphvizFFILibrary >> unixModuleName [
	^ 'liball.so'
]
