Class {
	#name : #PatternTest,
	#superclass : #SpPresenter,
	#category : #'OntoUML-Patterns-UI'
}

{ #category : #'as yet unclassified' }
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

{ #category : #specs }
PatternTest class >> defaultSpec [

	self flag: 'Pharo 9- compatibility'.
	^ self defaultLayout
]
