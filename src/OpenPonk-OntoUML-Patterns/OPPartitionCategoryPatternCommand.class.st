"
A model command that instantiates the OntoUML Category Partition pattern across general model elements.
"
Class {
	#name : 'OPPartitionCategoryPatternCommand',
	#superclass : 'OPOntoUMLPatternCommand',
	#category : 'OpenPonk-OntoUML-Patterns-Commands',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Commands'
}

{ #category : 'activation' }
OPPartitionCategoryPatternCommand class >> modelMenuActivation [
	<classAnnotation>
	^ OPModelMenuActivation
		byItemOf: OPOntoUMLPatternMenuGroup
		order: 80
		for: OPEditor
]

{ #category : 'accessing' }
OPPartitionCategoryPatternCommand >> defaultMenuItemName [
	"Answers the display name of this pattern command."
	^ 'Partition category pattern'
]

{ #category : 'accessing' }
OPPartitionCategoryPatternCommand >> patternClass [
	"Answers the ontological pattern class."
	^ PartitionCategoryPattern
]
