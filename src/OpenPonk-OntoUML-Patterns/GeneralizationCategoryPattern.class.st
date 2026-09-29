"
I represent the OntoUML Category Generalization pattern. I generate a model where a rigid Category provides essential properties to multiple specific rigid sortals.
"
Class {
	#name : 'GeneralizationCategoryPattern',
	#superclass : 'OntoUMLAbstractPattern',
	#category : 'OpenPonk-OntoUML-Patterns-Patterns',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Patterns'
}

{ #category : 'model creation' }
GeneralizationCategoryPattern class >> getModel [
	| model general specificA specificB generalizationA generalizationB |
	model := OntoUMLPatternController getEmptyModel.
	model name: self name , ' Model'.
	general 		:= self createClass: 'General' withStereotype: OntoUMLCategory. 
	specificA 	:= self createClass: 'SpecificA' withStereotype: OntoUMLKind.
	specificB 	:= self createClass: 'SpecificB' withStereotype: OntoUMLCategory. 
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
