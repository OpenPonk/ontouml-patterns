Class {
	#name : #FormalRelationPattern,
	#superclass : #OntoUMLAbstractPattern,
	#category : #'OntoUML-Patterns-Patterns'
}

{ #category : #'model creation' }
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
