Class {
	#name : 'RSCanvasElement',
	#superclass : 'BlElement',
	#instVars : [
		'roassalCanvas',
		'elementListener',
		'cameraElement'
	],
	#category : 'Roassal-Bloc-Elements',
	#package : 'Roassal-Bloc',
	#tag : 'Elements'
}

{ #category : 'instance creation' }
RSCanvasElement class >> newWithCanvas: aRSCanvas [

	^ self basicNew
		  initializeWithCanvas: aRSCanvas;
		  yourself
]

{ #category : 'private' }
RSCanvasElement >> addFixedShapeElementFor: aRSShape [

	self addChild:
		(aRSShape asBlElement
			addBlocToRoassalEventHandler: elementListener;
			yourself)
]

{ #category : 'private' }
RSCanvasElement >> addFixedShapeElements [
	"Add BlElement instances that represent the #fixedShapes. The fixedShapes of a RSCanvas are shapes that are not affected by camera transformations. They are useful for toolbar buttons or legends, for example."

	roassalCanvas fixedShapes do: [ :each |
		self addFixedShapeElementFor: each ]
]

{ #category : 'private' }
RSCanvasElement >> addRegularShapeElementFor: aRSShape [

	cameraElement addChild:
		(aRSShape asBlElement
			addBlocToRoassalEventHandler: elementListener;
			yourself)
]

{ #category : 'private' }
RSCanvasElement >> addRegularShapeElements [
	"Add to cameraElement BlElement instances that represent the regular RSShapes of a RSCanvas. These are the regular shapes, that must be translated and scaled according to the camera."

	roassalCanvas shapes do: [ :each |
		self addRegularShapeElementFor: each ]
]

{ #category : 'accessing' }
RSCanvasElement >> elementAtShape: aRSShape ifFound: foundBlock ifNone: noneBlock [

	^ self
			allChildrenBreadthFirstDetect: [ :each |
				each roassalShape == aRSShape ]
			ifFound: foundBlock
			ifNone: noneBlock
]

{ #category : 'private' }
RSCanvasElement >> handleRSShapeAddedEvent: evt [
		
	self addRegularShapeElementFor: evt shape
]

{ #category : 'private' }
RSCanvasElement >> handleRSShapeRemovedEvent: evt [
	
	self flag: #todo. "Remove handler"

	self
		elementAtShape: evt shape
		ifFound: [ :element | element removeFromParent ]
		ifNone: [ #couldntRemoveShapeElement traceCr ]
]

{ #category : 'initialization' }
RSCanvasElement >> initializeWithCanvas: aRSCanvas [

	self initialize.

	roassalCanvas := aRSCanvas.

	elementListener := RSBlocEventListener newForCanvas: aRSCanvas.
	cameraElement := RSCameraElement newWithCanvas: aRSCanvas.

	self addFixedShapeElements.
	self addRegularShapeElements.
	
	self
		extent: aRSCanvas extent;
		enqueueTask: (RSBlocAnimationPlayingTask newWithCanvas: aRSCanvas);
		addChild: cameraElement.
	
	self
		subscribeBlocToRoassal;
		subscribeRoassalToBloc
]

{ #category : 'accessing' }
RSCanvasElement >> roassalShape [

	^ roassalCanvas
]

{ #category : 'refreshing' }
RSCanvasElement >> signalUpdate [
	"Request a redraw on the canvas. 
	
	Note 1: 
	The redraw is not executed immediately/syncronously but instead, it's enqueued as a task in the mainElement. There are two cases then:
	- If the mainElement has already been added as a child in a BlSpace, the task will be run in next universe pulse. 
	- If it wasn't added to a space, the task will be enqueued in an internal BlTaskQueue until the element is added as a child in a BlSpace, and then first option will have course.

	Note 2:	
	As an optimization, multiple signalUpdate requests may be converted as a single redraw."


	self updateFromRoassalCanvas.

	"Skip if the request is already done."
"	signalUpdateRequested ifTrue: [ ^ self ].
	signalUpdateRequested := true.
	
	self enqueueTask: (BlTaskAction new
			 action: [ 
				 self syncSignalUpdate.
				 signalUpdateRequested := false ];
			 yourself)
"

]

{ #category : 'initialization' }
RSCanvasElement >> subscribeBlocToRoassal [

	self
		addEventHandler: elementListener;
		addEventHandlerOn: BlElementExtentChangedEvent
			do: [ :evt | self updateRSCanvasExtent ];
		addEventHandlerOn: BlElementAddedToSceneGraphEvent 
			do: [ :evt | self updateRSCanvasExtent ]
]

{ #category : 'initialization' }
RSCanvasElement >> subscribeRoassalToBloc [

	roassalCanvas
		when: RSShapeAddedEvent
		do: [ :evt | self handleRSShapeAddedEvent: evt ]
		for: self.

	roassalCanvas
		when: RSShapeRemovedEvent
		do: [ :evt | self handleRSShapeRemovedEvent: evt ]
		for: self
]

{ #category : 'refreshing' }
RSCanvasElement >> updateFromRoassalCanvas [

	self background: roassalCanvas color.

	self childrenDo: [ :each | each updateFromRoassalShape ]
]

{ #category : 'refreshing' }
RSCanvasElement >> updateRSCanvasExtent [
	"Note: RSCanvas extent change does not trigger signalUpdate"

	self extent isZero ifFalse: [
			roassalCanvas extent: self extent.
			self updateFromRoassalCanvas ]
]
