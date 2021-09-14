Class {
	#name : #GeneralRelatorPattern,
	#superclass : #OntoUMLAbstractPattern,
	#category : #'OntoUML-Patterns'
}

{ #category : #'model creation' }
GeneralRelatorPattern class >> getModel [
	| model generalA generalB roleA roleB relator mediationA mediationB generalizationA generalizationB material |
	model := OntoUMLPatternController getEmptyModel.
	model name: self name , ' Model'.
	generalA 	:= self createClass: 'GeneralA' withStereotype: OntoUMLKind. 
	generalB 	:= self createClass: 'GeneralB' withStereotype: OntoUMLKind.
	roleA 	:= self createClass: 'SpecificA' withStereotype: OntoUMLRole. 
	roleB 	:= self createClass: 'SpecificB' withStereotype: OntoUMLRole.
	relator 		:= self createClass: 'Relator' withStereotype: OntoUMLRelator.
	mediationA 	:= self createAssociationFrom: relator to: roleA with: OntoUMLMediation new.
	mediationB 	:= self createAssociationFrom: relator to: roleB with: OntoUMLMediation new.
	material 		:= self createAssociationFrom: roleA to: roleB with: OntoUMLMaterial new.
	generalizationA := self createGeneralizationFor: generalA withSpecific: roleA.  	
	generalizationB := self createGeneralizationFor: generalB withSpecific: roleB.  
	model packagedElements 
		add: generalA;
		add: roleA;
		add: relator;
		add: roleB;
		add: generalB;
		add: mediationA;
		add: mediationB;
		add: generalizationA;
		add: generalizationB;
		add: material.
	^ model.
]
