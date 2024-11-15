Class {
	#name : 'BaselineOfOpenPonkOntoUMLPatterns',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfOpenPonkOntoUMLPatterns',
	#package : 'BaselineOfOpenPonkOntoUMLPatterns'
}

{ #category : 'baselines' }
BaselineOfOpenPonkOntoUMLPatterns >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec baseline: 'OpenPonkOntoUMLProfile-Plugin' with: [
			spec
				className: 'BaselineOfOpenPonkOntoUMLProfile';
				repository: 'github://openponk/ontouml-profile';
				loads: 'plugin' ].
		spec
			project: 'OpenPonkOntoUMLProfile'
			copyFrom: 'OpenPonkOntoUMLProfile-Plugin'
			with: [ spec loads: 'default' ].
		spec package: 'OpenPonk-OntoUML-Patterns'.
		spec
			group: 'plugin'
			with: #( 'OpenPonkOntoUMLProfile-Plugin' 'OpenPonk-OntoUML-Patterns' ).
		spec group: 'default' with: #( OpenPonkOntoUMLProfile 'OpenPonk-OntoUML-Patterns' ) ]
]
