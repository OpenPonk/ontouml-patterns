"
I represent the OntoUML Characterization pattern. I generate a standard structural model linking an intrinsic moment (such as a Quality or Mode) to its bearer via a characterization relation.
"
Class {
	#name : 'CharacterizationPattern',
	#superclass : 'OntoUMLAbstractPattern',
	#category : 'OpenPonk-OntoUML-Patterns-Patterns',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Patterns'
}

{ #category : 'model creation' }
CharacterizationPattern class >> getModel [
	| model mode characterized characterization |
	model := OntoUMLPatternController getEmptyModel.
	model name: self name , ' Model'.
	mode 	:= self createClass: 'Mode' withStereotype: OntoUMLMode. 
	characterized 	:= self createClass: 'Characterized' withStereotype: OntoUMLKind.
	characterization := self createAssociationFrom: characterized to: mode with: OntoUMLCharacterization new.
	model packagedElements 
		add: mode;
		add: characterized;
		add: characterization.
	^ model.
]
