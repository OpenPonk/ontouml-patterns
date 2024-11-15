Class {
	#name : 'PatternTest',
	#superclass : 'SpPresenter',
	#category : 'OpenPonk-OntoUML-Patterns-UI',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'UI'
}

{ #category : 'as yet unclassified' }
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
