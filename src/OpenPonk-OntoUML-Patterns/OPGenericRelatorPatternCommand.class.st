"
A model command that applies the OntoUML Generic Relator pattern to model mediation between independent entities.
"
Class {
	#name : 'OPGenericRelatorPatternCommand',
	#superclass : 'OPOntoUMLPatternCommand',
	#category : 'OpenPonk-OntoUML-Patterns-Commands',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Commands'
}

{ #category : 'activation' }
OPGenericRelatorPatternCommand class >> modelMenuActivation [
	<classAnnotation>
	^ OPModelMenuActivation
		byItemOf: OPOntoUMLPatternMenuGroup
		order: 70
		for: OPEditor
]

{ #category : 'accessing' }
OPGenericRelatorPatternCommand >> defaultMenuItemName [
	"Answers the display name of this pattern command."
	^ 'Generic relator pattern'
]

{ #category : 'accessing' }
OPGenericRelatorPatternCommand >> patternClass [
	"Answers the ontological pattern class."
	^ GenericRelatorPattern
]
