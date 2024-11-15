Class {
	#name : 'GeneralizationMixinPattern',
	#superclass : 'OntoUMLAbstractPattern',
	#category : 'OpenPonk-OntoUML-Patterns-Patterns',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Patterns'
}

{ #category : 'model creation' }
GeneralizationMixinPattern class >> getModel [
	| model general specificA specificB generalizationA generalizationB |
	model := OntoUMLPatternController getEmptyModel.
	model name: self name , ' Model'.
	general 		:= self createClass: 'General' withStereotype: OntoUMLMixin. 
	specificA 	:= self createClass: 'Rigid type' withStereotype: OntoUMLKind.
	specificB 	:= self createClass: 'Non-rigid type' withStereotype: OntoUMLRoleMixin. 
	generalizationA := self createGeneralizationFor: general withSpecific: specificA.  	
	generalizationB := self createGeneralizationFor: general withSpecific: specificB.  
	model packagedElements 
		add: general;
		add: specificA;
		add: specificB;
		add: generalizationA;
		add: generalizationB.
	^ model.
]
