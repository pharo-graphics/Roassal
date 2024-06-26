"
stric format
```
strict graph ip_map {
	MH -- { ERC ALC WH1 HO1 IH1 };
	ALC -- MV -- AN;
	MV -- HO3 -- WH1;
	HO3 -- MT;
	MT -- LZ -- FL;
	MT -- FJ;
	MT -- ER;
	HO1 -- HR;
	MT -- DR;
	HO1 -- CB -- IH1 -- IHC;
	HO1 -- HV;
	{IHP IW IH1 IH2 IH4 } -- {IHP IW IH1 IH2 IH4 };
	{IH4 IH2} -- {MLM HV};
	HO1 -- HO3;
	HO3 -- IH1;
	IH2 -- IH4 [len=4];	// hack
}
```
"
Class {
	#name : 'RSStrictDotConverter',
	#superclass : 'RSAbstractDotConverter',
	#category : 'Roassal-GraphViz-Core',
	#package : 'Roassal-GraphViz',
	#tag : 'Core'
}

{ #category : 'visiting' }
RSStrictDotConverter >> writeHeader: aRSGroup [
	stream << 'strict graph Roassal'; crlf; << '{'
]

{ #category : 'visiting' }
RSStrictDotConverter >> writeLineConnector: aLine [
	stream << '--'
]
