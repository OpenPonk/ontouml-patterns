Class {
	#name : 'OPOntoUMLPatternsModelMenuTest',
	#superclass : 'TestCase',
	#instVars : [
		'toolbarPresenter',
		'mockWorkbench',
		'projectController'
	],
	#category : 'OpenPonk-OntoUML-Patterns-Tests',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'Tests'
}

{ #category : 'running' }
OPOntoUMLPatternsModelMenuTest >> setUp [
	super setUp.
	projectController := OPProjectController new.
	projectController project: OPProject new.
	mockWorkbench := Mock new.
	mockWorkbench stub projectController willReturn: projectController.
	mockWorkbench stub workbench willReturn: mockWorkbench.
	mockWorkbench stub announcer willReturn: Announcer new.
	toolbarPresenter := OPWorkbenchToolbar newApplication: SpApplication defaultApplication.
	toolbarPresenter owner: mockWorkbench
]

{ #category : 'running' }
OPOntoUMLPatternsModelMenuTest >> tearDown [
	toolbarPresenter := nil.
	mockWorkbench := nil.
	projectController := nil.
	super tearDown
]

{ #category : 'tests' }
OPOntoUMLPatternsModelMenuTest >> testPatternsSubMenuContainsAllFourteenPatternsWhenOntoUmlProfileApplied [
	"Verifies that Patterns submenu contains all 14 ontological pattern items."
	| umlPlugin testEditor umlPackage ontoProfile profileApplication modelMenuItem patternsItems patternNames |
	umlPlugin := OPUmlClassEditorPlugin new.
	testEditor := (OPEditor on: umlPlugin)
		workbench: mockWorkbench;
		yourself.
	umlPackage := OPUMLPackage new.
	ontoProfile := OntoUMLProfileFactory profile.
	profileApplication := OPUMLProfileApplication new appliedProfile: ontoProfile.
	umlPackage profileApplications add: profileApplication.
	testEditor openEmptyModel: umlPackage.

	toolbarPresenter focusedEditor: testEditor.
	modelMenuItem := toolbarPresenter menu menuGroups first menuItems
		detect: [ :eachMenuItem | eachMenuItem name = 'Model' ].
	patternsItems := modelMenuItem subMenu menuGroups
		flatCollect: [ :eachGroup | eachGroup menuItems select: [ :eachItem | eachItem name = 'Patterns' ] ].
	self assert: patternsItems isNotEmpty.
	patternNames := patternsItems first subMenu menuGroups
		flatCollect: [ :eachGroup | eachGroup menuItems collect: [ :eachItem | eachItem name ] ].
	self assertCollection: patternNames includesAll: #(
		'Characterisation pattern'
		'Formal relation pattern'
		'General relator pattern'
		'Generalization category pattern'
		'Generalization mixin pattern'
		'Generalization rolemixin pattern'
		'Generic relator pattern'
		'Partition category pattern'
		'Partition mode pattern'
		'Partition phase pattern'
		'Partition relator pattern'
		'Partition rolemixin pattern'
		'Partition role pattern'
		'Partition subkind pattern' )
]
