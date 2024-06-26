"
format
```
digraph G {Hello->World}
```
"
Class {
	#name : 'RSDigraphDotConverter',
	#superclass : 'RSAbstractDotConverter',
	#category : 'Roassal-GraphViz-Core',
	#package : 'Roassal-GraphViz',
	#tag : 'Core'
}

{ #category : 'visiting' }
RSDigraphDotConverter >> writeHeader: aRSGroup [
	stream
		<< 'digraph G {'; crlf;
		<< 'ratio = auto ; '; crlf;
		<< 'mincross = 2.0 ; '; crlf
]

{ #category : 'visiting' }
RSDigraphDotConverter >> writeLineConnector: aLine [
	stream << '->'
]
