"
A model command that creates a partition of Relator types in an OntoUML diagram.
"
Class {
	#name : 'OPPartitionRelatorPatternCommand',
	#superclass : 'OPOntoUMLPatternCommand',
	#category : 'OpenPonk-OntoUML-Patterns-Commands',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Commands'
}

{ #category : 'activation' }
OPPartitionRelatorPatternCommand class >> modelMenuActivation [
	<classAnnotation>
	^ OPModelMenuActivation
		byItemOf: OPOntoUMLPatternMenuGroup
		order: 110
		for: OPEditor
]

{ #category : 'accessing' }
OPPartitionRelatorPatternCommand >> defaultMenuItemName [
	"Answers the display name of this pattern command."
	^ 'Partition relator pattern'
]

{ #category : 'accessing' }
OPPartitionRelatorPatternCommand >> patternClass [
	"Answers the ontological pattern class."
	^ PartitionRelatorPattern
]
