"
I am a basic data for this basic 3d
"
Class {
	#name : 'RSData3D',
	#superclass : 'Object',
	#instVars : [
		'extent',
		'tmat',
		'view',
		'meshes',
		'elements',
		'cubeShape'
	],
	#category : 'Roassal-Basic3D-TODO',
	#package : 'Roassal-Basic3D',
	#tag : 'TODO'
}

{ #category : 'accessing' }
RSData3D >> cube [
	^ cubeShape
]

{ #category : 'initialization' }
RSData3D >> initialize [
	super initialize.
	cubeShape := RSMShape3D cube
]
