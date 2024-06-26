Class {
	#name : 'RSBlocMetricProvider',
	#superclass : 'RSMetricsProvider',
	#category : 'Roassal-Bloc-Core',
	#package : 'Roassal-Bloc',
	#tag : 'Core'
}

{ #category : 'hooks' }
RSBlocMetricProvider >> extentsOf: aRSLabel [
	| paragraph line | 
	paragraph := BlTextParagraph new
		text: aRSLabel blRopedText;
		yourself.
	BlHostRenderer preferableClass offscreenMeasureTextParagraph: paragraph.
	line := paragraph line.
	"ascent descent height baseline y"
	^ RSTextExtents new
		width: line width;
		height: line height;
		x_advance: line advance;
		y_advance: 0;
		x_bearing: 0;
		y_bearing: line top;
		yourself.
]
