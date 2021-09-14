Class {
	#name : #PartitionRelatorPattern,
	#superclass : #OntoUMLAbstractPattern,
	#category : #'OntoUML-Patterns'
}

{ #category : #'model creation' }
PartitionRelatorPattern class >> getModel [
	| model general specificA specificB generalizationA generalizationB generalizationSet |
	model := OntoUMLPatternController getEmptyModel.
	model name: self name , ' Model'.
	general 		:= self createClass: 'General' withStereotype: OntoUMLRelator. 
	specificA 	:= self createClass: 'SpecificA' withStereotype: OntoUMLRelator.
	specificB 	:= self createClass: 'SpecificB' withStereotype: OntoUMLRelator. 
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
