"
A model command that instantiates the OntoUML SubKind Partition pattern under a rigid Kind base.
"
Class {
	#name : 'OPPartitionSubKindPatternCommand',
	#superclass : 'OPOntoUMLPatternCommand',
	#category : 'OpenPonk-OntoUML-Patterns-Commands',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Commands'
}

{ #category : 'activation' }
OPPartitionSubKindPatternCommand class >> modelMenuActivation [
	<classAnnotation>
	^ OPModelMenuActivation
		byItemOf: OPOntoUMLPatternMenuGroup
		order: 140
		for: OPEditor
]

{ #category : 'accessing' }
OPPartitionSubKindPatternCommand >> defaultMenuItemName [
	"Answers the display name of this pattern command."
	^ 'Partition subkind pattern'
]

{ #category : 'accessing' }
OPPartitionSubKindPatternCommand >> patternClass [
	"Answers the ontological pattern class."
	^ PartitionSubKindPattern
]
