Class {
	#name : #OntoUMLPatternController,
	#superclass : #Object,
	#category : #'OntoUML-Patterns'
}

{ #category : #scripts }
OntoUMLPatternController class >> applyProfileTo: aModel [
	aModel profileApplications
		add:
			(OPUMLProfileApplication new
				uuid: self profile uuid asString , '-_profileApplication.0';
				appliedProfile: self profile).
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

{ #category : #actions }
OntoUMLPatternController >> applyProfileTo: aModel [
	aModel profileApplications
		add:
			(OPUMLProfileApplication new
				uuid: self profile uuid asString , '-_profileApplication.0';
				appliedProfile: self profile).
]

{ #category : #actions }
OntoUMLPatternController >> emptyModel [
	<gtExample>
	| model |
	model := OPUMLPackage new name: 'OntoUML Pattern Model'.
	self applyProfileTo: model.
	^ model
]

{ #category : #actions }
OntoUMLPatternController >> openModel: aModel [
	<script>
	^ OPProject openOnModel: aModel.
]

{ #category : #actions }
OntoUMLPatternController >> profile [
	^ OntoUMLProfileFactory profile.
]
