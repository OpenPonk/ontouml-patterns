Class {
	#name : 'PartitionRoleMixinPattern',
	#superclass : 'OntoUMLAbstractPattern',
	#category : 'OntoUML-Patterns-Patterns',
	#package : 'OntoUML-Patterns',
	#tag : 'Patterns'
}

{ #category : 'model creation' }
PartitionRoleMixinPattern class >> getModel [
	| model general specificA specificB generalizationA generalizationB generalizationSet |
	model := OntoUMLPatternController getEmptyModel.
	model name: self name , ' Model'.
	general 		:= self createClass: 'General' withStereotype: OntoUMLRoleMixin. 
	specificA 	:= self createClass: 'SpecificA' withStereotype: OntoUMLRoleMixin.
	specificB 	:= self createClass: 'SpecificB' withStereotype: OntoUMLRoleMixin. 
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
