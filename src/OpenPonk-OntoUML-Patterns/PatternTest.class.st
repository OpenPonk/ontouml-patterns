"
I am a Spec presenter used exclusively for testing and previewing the UI layouts and generation logic of OntoUML patterns.
"
Class {
	#name : 'PatternTest',
	#superclass : 'SpPresenter',
	#category : 'OpenPonk-OntoUML-Patterns-UI',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'UI'
}

{ #category : 'layout' }
PatternTest class >> defaultLayout [
	^ SpBoxLayout newVertical
		add:
			(SpBoxLayout newHorizontal
				add:	(SpBoxLayout newVertical
						add: 'Menu' withConstraints: [ :constraints | constraints height: self labelHeight ];
						add: {'A'.'B'.'C'.};
						yourself);
				yourself);
		yourself.
]
