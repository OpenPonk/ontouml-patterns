"
A model command that instantiates the OntoUML Mode Partition pattern for intrinsic property characterization.
"
Class {
	#name : 'OPPartitionModePatternCommand',
	#superclass : 'OPOntoUMLPatternCommand',
	#category : 'OpenPonk-OntoUML-Patterns-Commands',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Commands'
}

{ #category : 'activation' }
OPPartitionModePatternCommand class >> modelMenuActivation [
	<classAnnotation>
	^ OPModelMenuActivation
		byItemOf: OPOntoUMLPatternMenuGroup
		order: 90
		for: OPEditor
]

{ #category : 'accessing' }
OPPartitionModePatternCommand >> defaultMenuItemName [
	"Answers the display name of this pattern command."
	^ 'Partition mode pattern'
]

{ #category : 'accessing' }
OPPartitionModePatternCommand >> patternClass [
	"Answers the ontological pattern class."
	^ PartitionModePattern
]
