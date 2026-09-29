"
A model command that instantiates the OntoUML Phase Partition pattern on the selected class.
"
Class {
	#name : 'OPPartitionPhasePatternCommand',
	#superclass : 'OPOntoUMLPatternCommand',
	#category : 'OpenPonk-OntoUML-Patterns-Commands',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Commands'
}

{ #category : 'activation' }
OPPartitionPhasePatternCommand class >> modelMenuActivation [
	<classAnnotation>
	^ OPModelMenuActivation
		byItemOf: OPOntoUMLPatternMenuGroup
		order: 100
		for: OPEditor
]

{ #category : 'accessing' }
OPPartitionPhasePatternCommand >> defaultMenuItemName [
	"Answers the display name of this pattern command."
	^ 'Partition phase pattern'
]

{ #category : 'accessing' }
OPPartitionPhasePatternCommand >> patternClass [
	"Answers the ontological pattern class."
	^ PartitionPhasePattern
]
