Class {
	#name : #GeneralizationRoleMixinPattern,
	#superclass : #OntoUMLAbstractPattern,
	#category : #'OntoUML-Patterns-Patterns'
}

{ #category : #'model creation' }
GeneralizationRoleMixinPattern class >> getModel [
	| model general specificA specificB generalizationA generalizationB |
	model := OntoUMLPatternController getEmptyModel.
	model name: self name , ' Model'.
	general 		:= self createClass: 'General' withStereotype: OntoUMLRoleMixin. 
	specificA 	:= self createClass: 'Role/RoleMixinA' withStereotype: OntoUMLRole.
	specificB 	:= self createClass: 'Role/RoleMixinB' withStereotype: OntoUMLRoleMixin. 
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
