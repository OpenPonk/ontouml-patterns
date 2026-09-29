"
I am a controller responsible for initializing and managing OntoUML pattern applications. I provide utilities to set up empty models and apply the core OntoUML profile.
"
Class {
	#name : 'OntoUMLPatternController',
	#superclass : 'Object',
	#category : 'OpenPonk-OntoUML-Patterns-Patterns',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Patterns'
}

{ #category : 'scripts' }
OntoUMLPatternController class >> applyProfileTo: aModel [

	aModel profileApplications add:
		(OPUMLProfileApplication new appliedProfile: self profile)
]

{ #category : 'scripts' }
OntoUMLPatternController class >> getEmptyModel [
	| model |
	model := OPUMLPackage new name: 'OntoUML Pattern Model'.
	self applyProfileTo: model.
	^ model.
]

{ #category : 'scripts' }
OntoUMLPatternController class >> openExampleEmptyModel [
	| controller |
	controller := self new.
	^ controller openModel: controller emptyModel.
]

{ #category : 'scripts' }
OntoUMLPatternController class >> profile [
	^ OntoUMLProfileFactory profile.
]
