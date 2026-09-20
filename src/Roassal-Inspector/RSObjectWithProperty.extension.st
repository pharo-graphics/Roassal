Extension { #name : 'RSObjectWithProperty' }

{ #category : '*Roassal-Inspector' }
RSObjectWithProperty >> inspectorAnnouncer: aBuilder [
	<inspectorPresentationOrder: 110 title: 'Announcer'>
	^ announcer inspectionSubscriptions: aBuilder
]

{ #category : '*Roassal-Inspector' }
RSObjectWithProperty >> inspectorAnnouncerContext: aContext [
	aContext active: announcer isNotNil
]
