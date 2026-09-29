"
I represent the OntoUML Formal Relation pattern. I generate a standard structural model for formal relations holding between entities without requiring an external truth-maker.
"
Class {
	#name : 'FormalRelationPattern',
	#superclass : 'OntoUMLAbstractPattern',
	#category : 'OpenPonk-OntoUML-Patterns-Patterns',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Patterns'
}

{ #category : 'model creation' }
FormalRelationPattern class >> getModel [
	| model endurantA endurantB formal |
	model := OntoUMLPatternController getEmptyModel.
	endurantA 	:= self createClass: 'Endurant/Moment A' withStereotype: OntoUMLKind. 
	endurantB 	:= self createClass: 'Endurant/Moment B' withStereotype: OntoUMLKind.
	formal := self createAssociationFrom: endurantA to: endurantB with: OntoUMLDomainFormal new.
	model packagedElements 
		add: endurantA;
		add: endurantB;
		add: formal.
	^ model.
]
