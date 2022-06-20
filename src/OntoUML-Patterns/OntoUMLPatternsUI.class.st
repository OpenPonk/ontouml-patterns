Class {
	#name : #OntoUMLPatternsUI,
	#superclass : #SpPresenter,
	#category : #'OntoUML-Patterns-UI'
}

{ #category : #specs }
OntoUMLPatternsUI class >> createPatternDiagramFor: aPattern withBuilder: aBuilder [
	| model diagram diagramController projectController |
	model := aPattern getModel.
	projectController := aBuilder model workbench projectController.
	diagram := OPDiagram withWholeModel: model.
	projectController project addModel: model.
	projectController project addDiagram: diagram.
	diagramController := aBuilder model workbench focusedEditor newDiagramControllerFor: model.
	projectController addDiagramController: diagramController.
	projectController openEditorOnDiagram: diagram.
]

{ #category : #'as yet unclassified' }
OntoUMLPatternsUI class >> defaultLayout [
]

{ #category : #specs }
OntoUMLPatternsUI class >> defaultSpec [

	self flag: 'Pharo 9- compatibility'.
	^ self defaultLayout
]

{ #category : #toolbar }
OntoUMLPatternsUI class >> toolbarMenu: aBuilder [ 
	<opEditorToolbarMenu: #OPUmlClassEditorPlugin>
	| builder |
	builder := aBuilder model diagramController model profileApplications.
	(builder isEmpty or: [ builder anyOne appliedProfile name ~= 'OntoUML' ])
		ifTrue: [ ^ self ].
	self toolbarMenuItemFor: aBuilder
]

{ #category : #specs }
OntoUMLPatternsUI class >> toolbarMenuItemFor: aBuilder [
	(aBuilder item: 'Patterns') with: [ 
			(aBuilder item: 'Characterisation pattern') 			action: [ self createPatternDiagramFor: CharacterizationPattern withBuilder: aBuilder. ].
			(aBuilder item: 'Formal relation pattern')				action: [ self createPatternDiagramFor: FormalRelationPattern withBuilder: aBuilder. ].
			(aBuilder item: 'General relator pattern')				action: [ self createPatternDiagramFor: GeneralRelatorPattern withBuilder: aBuilder. ].
			(aBuilder item: 'Generalization category pattern')	action: [ self createPatternDiagramFor: GeneralizationCategoryPattern withBuilder: aBuilder. ].
			(aBuilder item: 'Generalization mixin pattern') 		action: [ self createPatternDiagramFor: GeneralizationMixinPattern withBuilder: aBuilder. ].
			(aBuilder item: 'Generalization rolemixin pattern')	action: [ self createPatternDiagramFor: GeneralizationRoleMixinPattern withBuilder: aBuilder. ].
			(aBuilder item: 'Generic relator pattern')				action: [ self createPatternDiagramFor: GenericRelatorPattern withBuilder: aBuilder. ].
			(aBuilder item: 'Partition category pattern')			action: [ self createPatternDiagramFor: PartitionCategoryPattern withBuilder: aBuilder. ].
			(aBuilder item: 'Partition mode pattern')				action: [ self createPatternDiagramFor: PartitionModePattern withBuilder: aBuilder. ].
			(aBuilder item: 'Partition phase pattern')				action: [ self createPatternDiagramFor: PartitionPhasePattern withBuilder: aBuilder. ].
			(aBuilder item: 'Partition relator pattern')			action: [ self createPatternDiagramFor: PartitionRelatorPattern withBuilder: aBuilder. ].
			(aBuilder item: 'Partition rolemixin pattern')			action: [ self createPatternDiagramFor: PartitionRoleMixinPattern withBuilder: aBuilder. ].
			(aBuilder item: 'Partition role pattern')				action: [ self createPatternDiagramFor: PartitionRolePattern withBuilder: aBuilder. ].
			(aBuilder item: 'Partition subkind pattern')			action: [ self createPatternDiagramFor: PartitionSubKindPattern withBuilder: aBuilder. ]. ];
		withSeparatorAfter.
	
]
