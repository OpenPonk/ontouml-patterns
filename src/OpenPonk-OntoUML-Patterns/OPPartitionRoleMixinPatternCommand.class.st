"
A model command that applies the OntoUML RoleMixin Partition pattern over anti-rigid, externally dependent types.
"
Class {
	#name : 'OPPartitionRoleMixinPatternCommand',
	#superclass : 'OPOntoUMLPatternCommand',
	#category : 'OpenPonk-OntoUML-Patterns-Commands',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Commands'
}

{ #category : 'activation' }
OPPartitionRoleMixinPatternCommand class >> modelMenuActivation [
	<classAnnotation>
	^ OPModelMenuActivation
		byItemOf: OPOntoUMLPatternMenuGroup
		order: 120
		for: OPEditor
]

{ #category : 'accessing' }
OPPartitionRoleMixinPatternCommand >> defaultMenuItemName [
	"Answers the display name of this pattern command."
	^ 'Partition rolemixin pattern'
]

{ #category : 'accessing' }
OPPartitionRoleMixinPatternCommand >> patternClass [
	"Answers the ontological pattern class."
	^ PartitionRoleMixinPattern
]
