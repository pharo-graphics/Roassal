Class {
	#name : 'RSCanvasElement',
	#superclass : 'BlElement',
	#instVars : [
		'roassalCanvas',
		'cameraElement',
		'blocToRoassalListener'
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
			addBlocToRoassalListener: blocToRoassalListener;
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
			addBlocToRoassalListener: blocToRoassalListener;
			yourself)
]

{ #category : 'private' }
RSCanvasElement >> addRegularShapeElements [
	"Add to cameraElement BlElement instances that represent the regular RSShapes of a RSCanvas. These are the regular shapes, that must be translated and scaled according to the camera."

	roassalCanvas shapes do: [ :each |
		self addRegularShapeElementFor: each ]
]

{ #category : 'accessing' }
RSCanvasElement >> childAtShape: aRSShape ifFound: foundBlock ifNone: noneBlock [

	self childrenDo: [ :each |
		each roassalShape == aRSShape
			ifTrue: [ ^ foundBlock value: each ] ].

	noneBlock value
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
	
	self
		childAtShape: evt shape
		ifFound: [ :element |
			element
				removeEventHandler: blocToRoassalListener;
				removeFromParent ]
		ifNone: [ #couldntRemoveShapeElement traceCr ]
]

{ #category : 'initialization' }
RSCanvasElement >> initializeWithCanvas: aRSCanvas [

	self initialize.

	roassalCanvas := aRSCanvas.

	blocToRoassalListener := RSBlocEventListener newWithCanvas: aRSCanvas.
	cameraElement := RSCameraElement newWithCanvas: aRSCanvas.

	self addFixedShapeElements.
	self addRegularShapeElements.
	
	self
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent ];
		enqueueTask: (RSBlocAnimationPlayingTask newWithCanvas: aRSCanvas);
		addChild: cameraElement.
	
	self subscribeToBlEvents.
	self subscribeToRSShape: roassalCanvas
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


	self updateFromRSCanvas.

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
RSCanvasElement >> subscribeToBlEvents [

	self
		addEventHandler: blocToRoassalListener;
		addEventHandlerOn: BlElementExtentChangedEvent
			do: [ :evt | self updateRSCanvasExtent ];
		addEventHandlerOn: BlElementAddedToSceneGraphEvent 
			do: [ :evt | self updateRSCanvasExtent ]
]

{ #category : 'initialization' }
RSCanvasElement >> subscribeToRSShape: aShape [

	aShape
		when: RSShapeAddedEvent
		send: #handleRSShapeAddedEvent:
		to: self.

	aShape
		when: RSShapeRemovedEvent
		send: #handleRSShapeRemovedEvent:
		to: self
]

{ #category : 'refreshing' }
RSCanvasElement >> updateFromRSCanvas [

	self background: roassalCanvas color.

	self childrenDo: [ :each | each updateFromRoassalShape ]
]

{ #category : 'refreshing' }
RSCanvasElement >> updateRSCanvasExtent [

	self extent isZero ifTrue: [ ^ self ].
	roassalCanvas extent: self extent.
	self updateFromRSCanvas
]
