Class {
	#name : #BaselineOfOntoUMLPatterns,
	#superclass : #BaselineOf,
	#category : #BaselineOfOntoUMLPatterns
}

{ #category : #baselines }
BaselineOfOntoUMLPatterns >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'OntoUMLPatterns'
				with: [ spec
						className: 'BaselineOfOntoUMLOntoUMLPatterns';
						repository: 'github://openponk/ontouml-patterns';
						loads: 'plugin' ].
			spec
				group: 'plugin'
				with: #('OntoUMLPatterns').
			spec
				group: 'default'
				with: #('OntoUMLPatterns') ].
]
