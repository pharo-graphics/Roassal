"
Baseline for https://github.com/pharo-graphics/Roassal
"
Class {
	#name : 'BaselineOfRoassal',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfRoassal',
	#package : 'BaselineOfRoassal'
}

{ #category : 'dependencies' }
BaselineOfRoassal >> aiDatasets: spec [
	spec 
   		baseline: 'AIDatasets' 
   		with: [ spec repository: 'github://pharo-ai/datasets' ]
]

{ #category : 'dependencies' }
BaselineOfRoassal >> athensSVG: spec [
	spec baseline: 'AthensSVG' with: [
		spec repository: 'github://pharo-contributions/Athens-SVG/src' ].
	spec package: 'Athens-SVG-PathConverter' with: [
		spec repository: 'github://pharo-contributions/Athens-SVG/src'].
]

{ #category : 'baselines' }
BaselineOfRoassal >> baseline: spec [
	"https://github.com/pharo-graphics/Roassal"

	"pharo7 not supported"

	<baseline>
	self baselineOfCommon: spec.

	spec
		for: #( #'pharo8.x' #'pharo9.x' #'pharo10.x' #'pharo11.x' ) do: [
			spec package: #'Roassal-Pharo'.
			spec group: 'Core' with: #( 'Roassal-Pharo' ) ];
		for: #'pharo8.x' do: [
			spec package: #'Roassal-Pharo8'.
			spec package: #'Roassal-Spec-Obsolete'.
			spec group: 'Core' with: #( 'Roassal-Pharo8' 'Roassal-Spec-Obsolete' ) ];
		for: #'pharo9.x' do: [
			spec package: #'Roassal-Pharo9'.
			spec group: 'Core' with: #( 'Roassal-Pharo9' ) ];
		for: #'pharo10.x' do: [
			spec package: #'Roassal-Pharo10'.
			spec group: 'Core' with: #( 'Roassal-Pharo10' ) ];
		for: #'pharo12.x' do: [
			spec package: #'Roassal-Pharo12'.
			spec group: 'Core' with: #( 'Roassal-Pharo12' ) ]
]

{ #category : 'baselines' }
BaselineOfRoassal >> baselineOfCommon: spec [

	spec for: #common do: [
		self
			bloc: spec;
			athensSVG: spec;
			geometry: spec;
			numeric: spec;
			subProcess: spec;
			dataFrame: spec;
			aiDatasets: spec;
			layouts: spec;
			rtree: spec.

		spec package: #Roassal with: [ spec requires: #( 'Geometry' 'NumericScales' 'RoassalLayouts' 'RTree' ) ].

		self corePackagesNames , self examplePackagesNames , self testPackagesNames , self extraPackagesNames do: [ :name | spec package: name ].

		spec
			package: #'Roassal-Bloc' with: [ spec requires: #( 'Bloc' ) ];
			package: #'Roassal-SVG' with: [ spec requires: #( 'Athens-SVG-PathConverter' ) ];
			package: #'Roassal-SVG-Tests';
			package: #'Roassal-SVG-Examples';
			package: #'Roassal-SVG-Importer' with: [ spec requires: #( 'AthensSVG' ) ];
			package: #'Roassal-GraphViz' with: [ spec requires: #( 'OSSubprocess' ) ];
			package: #'Roassal-Gtk';
			package: #'Roassal-Spec-Gtk';
			package: #'Roassal-Chart-DataFrame' with: [ spec requires: #( 'DataFrame' 'AIDatasets' ) ].

		spec
			group: 'Core' with: #( 'Roassal' ) , self corePackagesNames;
			group: 'Examples' with: #( 'Core' ) , self examplePackagesNames;
			group: 'Tests' with: #( 'Core' ) , self testPackagesNames;
			group: 'SVGExamples' with: #( 'Examples' 'Roassal-SVG-Examples' );
			group: 'SVGImporter' with: #( 'SVGExamples' 'Roassal-SVG-Importer' );
			group: 'Gtk' with: #( 'Roassal-Gtk' 'Roassal-Spec-Gtk' );
			group: 'Mini' with: #( 'Tests' 'SVGExamples' );
			group: 'Full' with: #( 'Mini' ) , self extraPackagesNames;
			group: 'GraphViz' with: #( 'Full' 'Roassal-GraphViz' );
			group: 'BlocFull' with: #( 'Full' 'Roassal-Bloc' );
			group: 'default' with: #( 'Mini' );
			group: 'Full-DataFrame' with: #( 'Full' 'Roassal-Chart-DataFrame' ) ]
]

{ #category : 'dependencies' }
BaselineOfRoassal >> bloc: spec [
	spec baseline: 'Bloc' with: [
		spec repository: 'github://pharo-graphics/Bloc:dev-1.0/src' ]
]

{ #category : 'API-packages' }
BaselineOfRoassal >> corePackagesNames [
	^ #(
	'Roassal-Event'
	'Roassal-Builders'
	'Roassal-Shapes'
	'Roassal-Animation'
	'Roassal-Interaction'
	'Roassal-Colors'
	'Roassal-Legend'
	'Roassal-UML'
	'Roassal-Sunburst'
	'Roassal-FlameGraph'
	'Roassal-Pie'
	'Roassal-Inspector'
	'Roassal-Chart'
	'Roassal-DSM'
	'Roassal-Menu'
	'Roassal-Spec'
	'Roassal-Spec-Morphic'
	'Roassal-BaselineMap'
	'Roassal-SVG'
	'Roassal-Class-Examples'
	'Roassal-Mondrian'
	)
]

{ #category : 'dependencies' }
BaselineOfRoassal >> dataFrame: spec [
	spec 
		baseline: 'DataFrame'
		with: [ spec repository: 'github://PolyMathOrg/DataFrame/src' ]
]

{ #category : 'API-packages' }
BaselineOfRoassal >> examplePackagesNames [
	^ #(
	'Roassal-Examples'
	'Roassal-Legend-Examples'
	'Roassal-Chart-Examples'
	'Roassal-Pie-Examples'
	'Roassal-Sunburst-Examples'
	'Roassal-FlameGraph-Examples'
	'Roassal-UML-Examples'
	'Roassal-Spec-Examples')
]

{ #category : 'API-packages' }
BaselineOfRoassal >> extraPackagesNames [
	^ #(
	'Roassal-Experimental'
	'Roassal-LayoutStudio'
	'Roassal-LayoutStudio-Tests'
	'Roassal-UML-Calypso'
	'Roassal-TreeMap'
	'Roassal-TreeMap-Examples')
]

{ #category : 'dependencies' }
BaselineOfRoassal >> geometry: spec [
	spec baseline: 'Geometry' with: [ 
		spec repository: 'github://pharo-contributions/Geometry/src' ]
]

{ #category : 'dependencies' }
BaselineOfRoassal >> layouts: spec [
	spec
		baseline: 'RoassalLayouts'
		with: [ spec repository: 'github://pharo-graphics/RoassalLayouts:v1.01/src' ]
]

{ #category : 'dependencies' }
BaselineOfRoassal >> numeric: spec [
	spec baseline: 'NumericScales'with: [ 
		spec repository: 'github://pharo-graphics/NumericScales:v1.03/src' ].
]

{ #category : 'dependencies' }
BaselineOfRoassal >> rtree: spec [
	spec
		baseline: 'RTree'
		with: [ spec repository: 'github://pharo-graphics/RTree:v1.01/src' ]
]

{ #category : 'dependencies' }
BaselineOfRoassal >> subProcess: spec [
	spec
		baseline: 'OSSubprocess'
		with: [ spec repository: 'github://pharo-contributions/OSSubprocess/repository' ]
]

{ #category : 'API-packages' }
BaselineOfRoassal >> testPackagesNames [
	^ #(
	'Roassal-Global-Tests'
	'Roassal-Animation-Tests'
	'Roassal-Shapes-Tests'
	'Roassal-Interaction-Tests'
	'Roassal-Chart-Tests'
	'Roassal-UML-Tests'
	'Roassal-Spec-Tests'
	'Roassal-Inspector-Tests'
	'Roassal-BaselineMap-Tests'
	'Roassal-SVG-Tests'
	)
]
