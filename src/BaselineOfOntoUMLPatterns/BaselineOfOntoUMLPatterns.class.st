Class {
	#name : #BaselineOfOntoUMLPatterns,
	#superclass : #BaselineOf,
	#category : #BaselineOfOntoUMLPatterns
}

{ #category : #baselines }
BaselineOfOntoUMLPatterns >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec baseline: 'OntoUMLProfile-Plugin' with: [ 
			spec
				className: 'BaselineOfOntoUMLProfile';
				repository: 'github://openponk/ontouml-profile';
				loads: 'plugin' ].
		spec
			project: 'OntoUMLProfile'
			copyFrom: 'OntoUMLProfile-Plugin'
			with: [ spec loads: 'default' ].
		spec package: 'OntoUML-Patterns'.
		spec
			group: 'plugin'
			with: #( 'OntoUMLProfile-Plugin' 'OntoUML-Patterns' ).
		spec group: 'default' with: #( OntoUMLProfile 'OntoUML-Patterns' ) ]
]
