Class {
	#name : #PartitionPhasePattern,
	#superclass : #OntoUMLAbstractPattern,
	#category : #'OntoUML-Patterns'
}

{ #category : #'model creation' }
PartitionPhasePattern class >> getModel [
	| model general specificA specificB generalizationA generalizationB generalizationSet |
	model := OntoUMLPatternController getEmptyModel.
	model name: self name , ' Model'.
	general 		:= self createClass: 'General' withStereotype: OntoUMLKind. 
	specificA 	:= self createClass: 'SpecificA' withStereotype: OntoUMLPhase.
	specificB 	:= self createClass: 'SpecificB' withStereotype: OntoUMLPhase. 
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
