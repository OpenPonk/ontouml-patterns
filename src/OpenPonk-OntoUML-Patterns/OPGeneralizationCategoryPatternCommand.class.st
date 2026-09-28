"
A model command that applies the OntoUML Category Generalization pattern across multiple rigid classes.
"
Class {
	#name : 'OPGeneralizationCategoryPatternCommand',
	#superclass : 'OPOntoUMLPatternCommand',
	#category : 'OpenPonk-OntoUML-Patterns-Commands',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Commands'
}

{ #category : 'activation' }
OPGeneralizationCategoryPatternCommand class >> modelMenuActivation [
	<classAnnotation>
	^ OPModelMenuActivation
		byItemOf: OPOntoUMLPatternMenuGroup
		order: 40
		for: OPEditor
]

{ #category : 'accessing' }
OPGeneralizationCategoryPatternCommand >> defaultMenuItemName [
	"Answers the display name of this pattern command."
	^ 'Generalization category pattern'
]

{ #category : 'accessing' }
OPGeneralizationCategoryPatternCommand >> patternClass [
	"Answers the ontological pattern class."
	^ GeneralizationCategoryPattern
]
