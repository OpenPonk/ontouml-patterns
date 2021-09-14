Class {
	#name : #GenericRelatorPattern,
	#superclass : #OntoUMLAbstractPattern,
	#category : #'OntoUML-Patterns'
}

{ #category : #'model creation' }
GenericRelatorPattern class >> getModel [
	| model endurantA endurantB relator mediationA mediationB material |
	model := OntoUMLPatternController getEmptyModel.
	model name: self name , ' Model'.
	endurantA 	:= self createClass: 'EndurantA' withStereotype: OntoUMLKind. 
	endurantB 	:= self createClass: 'EndurantB' withStereotype: OntoUMLKind.
	relator 		:= self createClass: 'Relator' withStereotype: OntoUMLRelator.
	mediationA 	:= self createAssociationFrom: relator to: endurantA with: OntoUMLMediation new.
	mediationB 	:= self createAssociationFrom: relator to: endurantB with: OntoUMLMediation new.
	material 		:= self createAssociationFrom: endurantA to: endurantB with: OntoUMLMaterial new.
	model packagedElements 
		add: endurantA;
		add: relator;
		add: endurantB;
		add: mediationA;
		add: mediationB;
		add: material.
	^ model.
]
