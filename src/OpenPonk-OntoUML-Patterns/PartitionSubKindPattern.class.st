Class {
	#name : 'PartitionSubKindPattern',
	#superclass : 'OntoUMLAbstractPattern',
	#category : 'OpenPonk-OntoUML-Patterns-Patterns',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Patterns'
}

{ #category : 'model creation' }
PartitionSubKindPattern class >> getModel [
	| model general specificA specificB generalizationA generalizationB generalizationSet |
	model := OntoUMLPatternController getEmptyModel.
	model name: self name , ' Model'.
	general 		:= self createClass: 'General' withStereotype: OntoUMLKind. 
	specificA 	:= self createClass: 'SpecificA' withStereotype: OntoUMLSubKind.
	specificB 	:= self createClass: 'SpecificB' withStereotype: OntoUMLSubKind. 
	generalizationA := self createGeneralizationFor: general withSpecific: specificA.  	
	generalizationB := self createGeneralizationFor: general withSpecific: specificB.  
	generalizationSet := OPUMLGeneralizationSet new.
	generalizationSet isDisjoint: true.
	generalizationSet isCovering: true.
	generalizationSet generalizations: { generalizationA. generalizationB. }.
	model packagedElements 
		add: general;
		add: specificA;
		add: specificB;
		add: generalizationA;
		add: generalizationB;
		add: generalizationSet.
	^ model.
]
