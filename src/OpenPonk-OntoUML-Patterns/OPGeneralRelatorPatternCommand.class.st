"
A model command that applies the general OntoUML Relator pattern to establish multi-party material relations.
"
Class {
	#name : 'OPGeneralRelatorPatternCommand',
	#superclass : 'OPOntoUMLPatternCommand',
	#category : 'OpenPonk-OntoUML-Patterns-Commands',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Commands'
}

{ #category : 'activation' }
OPGeneralRelatorPatternCommand class >> modelMenuActivation [
	<classAnnotation>
	^ OPModelMenuActivation
		byItemOf: OPOntoUMLPatternMenuGroup
		order: 30
		for: OPEditor
]

{ #category : 'accessing' }
OPGeneralRelatorPatternCommand >> defaultMenuItemName [
	"Answers the display name of this pattern command."
	^ 'General relator pattern'
]

{ #category : 'accessing' }
OPGeneralRelatorPatternCommand >> patternClass [
	"Answers the ontological pattern class."
	^ GeneralRelatorPattern
]
