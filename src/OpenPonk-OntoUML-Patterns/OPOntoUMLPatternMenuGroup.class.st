"
A Commander 1 menu group that collects ontological design pattern instantiation commands for OntoUML models.
"
Class {
	#name : 'OPOntoUMLPatternMenuGroup',
	#superclass : 'CmdMenuGroup',
	#category : 'OpenPonk-OntoUML-Patterns-Commands',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Commands'
}

{ #category : 'accessing' }
OPOntoUMLPatternMenuGroup >> icon [
	"Answers the OntoUML icon for the patterns submenu."
	^ OntoUMLIcons ontoumlIcon
]

{ #category : 'accessing' }
OPOntoUMLPatternMenuGroup >> name [
	"Answers the display name of the patterns menu group."
	^ 'Patterns'
]

{ #category : 'accessing' }
OPOntoUMLPatternMenuGroup >> order [
	"Answers the order priority of the patterns menu group."
	^ 20
]
