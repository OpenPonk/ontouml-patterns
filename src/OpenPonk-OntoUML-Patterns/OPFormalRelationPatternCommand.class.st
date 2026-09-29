"
A model command that adds an OntoUML Formal Relation pattern connecting directly comparable entities.
"
Class {
	#name : 'OPFormalRelationPatternCommand',
	#superclass : 'OPOntoUMLPatternCommand',
	#category : 'OpenPonk-OntoUML-Patterns-Commands',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Commands'
}

{ #category : 'activation' }
OPFormalRelationPatternCommand class >> modelMenuActivation [
	<classAnnotation>
	^ OPModelMenuActivation
		byItemOf: OPOntoUMLPatternMenuGroup
		order: 20
		for: OPEditor
]

{ #category : 'accessing' }
OPFormalRelationPatternCommand >> defaultMenuItemName [
	"Answers the display name of this pattern command."
	^ 'Formal relation pattern'
]

{ #category : 'accessing' }
OPFormalRelationPatternCommand >> patternClass [
	"Answers the ontological pattern class."
	^ FormalRelationPattern
]
