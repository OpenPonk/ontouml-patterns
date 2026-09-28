"
A model command that applies the OntoUML Characterization pattern to link an intrinsic mode or quality to its bearer.
"
Class {
	#name : 'OPCharacterizationPatternCommand',
	#superclass : 'OPOntoUMLPatternCommand',
	#category : 'OpenPonk-OntoUML-Patterns-Commands',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Commands'
}

{ #category : 'activation' }
OPCharacterizationPatternCommand class >> modelMenuActivation [
	<classAnnotation>
	^ OPModelMenuActivation
		byItemOf: OPOntoUMLPatternMenuGroup
		order: 10
		for: OPEditor
]

{ #category : 'accessing' }
OPCharacterizationPatternCommand >> defaultMenuItemName [
	"Answers the display name of this pattern command."
	^ 'Characterisation pattern'
]

{ #category : 'accessing' }
OPCharacterizationPatternCommand >> patternClass [
	"Answers the ontological pattern class."
	^ CharacterizationPattern
]
