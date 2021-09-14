Class {
	#name : #PatternTest,
	#superclass : #SpPresenter,
	#category : #'OntoUML-Patterns-UI'
}

{ #category : #specs }
PatternTest class >> defaultSpec [
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
