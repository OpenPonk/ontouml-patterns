"
A model command that applies an OntoUML Mixin Generalization pattern over disparate sortals.
"
Class {
	#name : 'OPGeneralizationMixinPatternCommand',
	#superclass : 'OPOntoUMLPatternCommand',
	#category : 'OpenPonk-OntoUML-Patterns-Commands',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Commands'
}

{ #category : 'activation' }
OPGeneralizationMixinPatternCommand class >> modelMenuActivation [
	<classAnnotation>
	^ OPModelMenuActivation
		byItemOf: OPOntoUMLPatternMenuGroup
		order: 50
		for: OPEditor
]

{ #category : 'accessing' }
OPGeneralizationMixinPatternCommand >> defaultMenuItemName [
	"Answers the display name of this pattern command."
	^ 'Generalization mixin pattern'
]

{ #category : 'accessing' }
OPGeneralizationMixinPatternCommand >> patternClass [
	"Answers the ontological pattern class."
	^ GeneralizationMixinPattern
]
