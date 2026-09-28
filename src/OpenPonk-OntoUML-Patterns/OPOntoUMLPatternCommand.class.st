"
An abstract base class for Commander 1 model commands applying foundational OntoUML ontological design patterns.
"
Class {
	#name : 'OPOntoUMLPatternCommand',
	#superclass : 'OPModelCommand',
	#category : 'OpenPonk-OntoUML-Patterns-Commands',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Commands'
}

{ #category : 'testing' }
OPOntoUMLPatternCommand class >> canBeExecutedInEditor: anEditor [
	"Answers true if the active editor has the OntoUML profile applied on its UML model."
	^ self isAbstract not and: [ OntoUMLProfileFactory isAppliedTo: anEditor ]
]

{ #category : 'testing' }
OPOntoUMLPatternCommand class >> isAbstract [
	"Answers true if this class is the abstract root of OntoUML pattern commands."
	^ self = OPOntoUMLPatternCommand
]

{ #category : 'accessing' }
OPOntoUMLPatternCommand >> defaultMenuIcon [
	"Answers the icon form for OntoUML pattern commands."
	^ OntoUMLIcons ontoumlIcon
]

{ #category : 'execution' }
OPOntoUMLPatternCommand >> execute [
	"Instantiates the ontological pattern and opens a diagram for it in the editor."
	OntoUMLPatternsUI createPatternDiagramFor: self patternClass inEditor: self editor
]

{ #category : 'accessing' }
OPOntoUMLPatternCommand >> patternClass [
	"Subclasses must answer the pattern class to generate."
	^ self subclassResponsibility
]
