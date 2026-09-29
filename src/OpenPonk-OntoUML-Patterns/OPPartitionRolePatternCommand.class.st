"
A model command that instantiates the OntoUML Role Partition pattern for relational contingent specializations.
"
Class {
	#name : 'OPPartitionRolePatternCommand',
	#superclass : 'OPOntoUMLPatternCommand',
	#category : 'OpenPonk-OntoUML-Patterns-Commands',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Commands'
}

{ #category : 'activation' }
OPPartitionRolePatternCommand class >> modelMenuActivation [
	<classAnnotation>
	^ OPModelMenuActivation
		byItemOf: OPOntoUMLPatternMenuGroup
		order: 130
		for: OPEditor
]

{ #category : 'accessing' }
OPPartitionRolePatternCommand >> defaultMenuItemName [
	"Answers the display name of this pattern command."
	^ 'Partition role pattern'
]

{ #category : 'accessing' }
OPPartitionRolePatternCommand >> patternClass [
	"Answers the ontological pattern class."
	^ PartitionRolePattern
]
