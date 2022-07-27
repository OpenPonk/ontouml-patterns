Class {
	#name : #OntoUMLPatternController,
	#superclass : #Object,
	#category : #'OntoUML-Patterns'
}

{ #category : #scripts }
OntoUMLPatternController class >> applyProfileTo: aModel [

	aModel profileApplications add:
		(OPUMLProfileApplication new appliedProfile: self profile)
]

{ #category : #scripts }
OntoUMLPatternController class >> getEmptyModel [
	| model |
	model := OPUMLPackage new name: 'OntoUML Pattern Model'.
	self applyProfileTo: model.
	^ model.
]

{ #category : #scripts }
OntoUMLPatternController class >> openEmptyModel [
	| controller |
	controller := self new.
	^ controller openModel: controller emptyModel.
]

{ #category : #scripts }
OntoUMLPatternController class >> profile [
	^ OntoUMLProfileFactory profile.
]
