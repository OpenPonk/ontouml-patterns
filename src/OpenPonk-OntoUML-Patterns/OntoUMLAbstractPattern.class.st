Class {
	#name : 'OntoUMLAbstractPattern',
	#superclass : 'Object',
	#category : 'OpenPonk-OntoUML-Patterns-Patterns',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Patterns'
}

{ #category : 'model creation' }
OntoUMLAbstractPattern class >> createAssociationFrom: aSource to: aEnd [
	| association |
	association := OPUMLAssociation new.
	OPUMLProperty new
		name: '';
		lowerValue: (OPUMLLiteralInteger new value: 1);
		upperValue: (OPUMLLiteralUnlimitedNatural new value: 1);
		owningAssociation: association;
		type: aSource.
	OPUMLProperty new
		name: '';
		lowerValue: (OPUMLLiteralInteger new value: 1);
		upperValue: (OPUMLLiteralUnlimitedNatural new value: 1);
		owningAssociation: association;
		type: aEnd.
	association memberEnds addAll: association ownedEnds asArray.
	^ association
]

{ #category : 'model creation' }
OntoUMLAbstractPattern class >> createAssociationFrom: aSource to: aEnd with: aStereotype [ 
	| association |
	association := self createAssociationFrom: aSource to: aEnd.
	association applyStereotype: aStereotype.
	^ association.
]

{ #category : 'model creation' }
OntoUMLAbstractPattern class >> createClass: aName withStereotype: aStereotype [
	| result |
	result := OPUMLClass new.
	result applyStereotype: aStereotype new.
	result name: aName.
	^ result.
]

{ #category : 'model creation' }
OntoUMLAbstractPattern class >> createGeneralizationFor: aGeneral withSpecific: aSpecific [
	| generalization |
	generalization := OPUMLGeneralization new.
	generalization general: aGeneral;
	specific: aSpecific.
	^ generalization.
]

{ #category : 'model creation' }
OntoUMLAbstractPattern class >> getModel [
	self subclassResponsibility.
]
