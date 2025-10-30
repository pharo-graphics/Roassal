Class {
	#name : 'RSBlocHostTest',
	#superclass : 'TestCase',
	#category : 'Roassal-Bloc-Tests',
	#package : 'Roassal-Bloc',
	#tag : 'Tests'
}

{ #category : 'tests' }
RSBlocHostTest >> testAsForm [

	| canvas form |
	canvas := RSCanvas new.
	canvas useBlocHost.

	canvas extent: 200 @ 100.
	canvas color: Color blue.
	canvas addShape:
		(RSBox new
			color: Color red;
			extent: 20 @ 10;
			yourself).
	form := canvas asForm.

	self assert: form isForm.
	self assert: form extent equals: 200 @ 100.
	self assert: (form colorAt: 1@1) equals: Color blue.
	self assert: (form colorAt: form extent // 2) equals: Color red
]
