"
I am a Spec presenter that integrates OntoUML pattern tools into the OpenPonk user interface. I provide toolbar menus and interaction logic to instantiate patterns directly onto the diagram canvas.
"
Class {
	#name : 'OntoUMLPatternsUI',
	#superclass : 'SpPresenter',
	#category : 'OpenPonk-OntoUML-Patterns-UI',
	#package : 'OpenPonk-OntoUML-Patterns',
	#tag : 'UI'
}

{ #category : 'ui' }
OntoUMLPatternsUI class >> createPatternDiagramFor: aPattern inEditor: anEditor [
	"Creates a new diagram from an ontological pattern and opens an editor on it."
	| patternModel openPonkDiagram newDiagramController activeProjectController |
	patternModel := aPattern getModel.
	activeProjectController := anEditor workbench projectController.
	openPonkDiagram := OPOpenPonkDiagram forModelElement: patternModel.
	activeProjectController project addModel: patternModel.
	activeProjectController project addDiagram: openPonkDiagram.
	newDiagramController := anEditor newDiagramControllerFor: patternModel.
	activeProjectController addDiagramController: newDiagramController.
	activeProjectController openEditorOnDiagram: openPonkDiagram
]

{ #category : 'layout' }
OntoUMLPatternsUI class >> defaultLayout [
]
