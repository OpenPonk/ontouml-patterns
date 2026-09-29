"
A model command that creates an OntoUML RoleMixin Generalization hierarchy.
"
Class {
	#name : 'OPGeneralizationRoleMixinPatternCommand',
	#superclass : 'OPOntoUMLPatternCommand',
	#category : 'OpenPonk-OntoUML-Patterns-Commands',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Commands'
}

{ #category : 'activation' }
OPGeneralizationRoleMixinPatternCommand class >> modelMenuActivation [
	<classAnnotation>
	^ OPModelMenuActivation
		byItemOf: OPOntoUMLPatternMenuGroup
		order: 60
		for: OPEditor
]

{ #category : 'accessing' }
OPGeneralizationRoleMixinPatternCommand >> defaultMenuItemName [
	"Answers the display name of this pattern command."
	^ 'Generalization rolemixin pattern'
]

{ #category : 'accessing' }
OPGeneralizationRoleMixinPatternCommand >> patternClass [
	"Answers the ontological pattern class."
	^ GeneralizationRoleMixinPattern
]
