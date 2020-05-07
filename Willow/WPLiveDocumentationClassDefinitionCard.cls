"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPLiveDocumentationClassDefinitionCard
	instanceVariableNames: 'selectedClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPLiveDocumentationClassDefinitionCard guid: (GUID fromString: '{957b9567-e9ec-4250-b90c-1ca69a216e3a}')!
WPLiveDocumentationClassDefinitionCard comment: 'I''m a panel showing the class definition'!
!WPLiveDocumentationClassDefinitionCard categoriesForClass!Willow-Playground-LiveDocs-WebViews! !
!WPLiveDocumentationClassDefinitionCard methodsFor!

initializeFor: aClass	selectedClass := aClass!

renderContentOn: html	html		render:			(self componentSupplier panelBuilder				headingDisplaying: 'Definition';				wrapping: [ :canvas | 					canvas definitionList						with: [ canvas								definitionTerm: 'Superclass';								definitionData: (selectedClass superclass ifNotNil: [ :superclass | superclass name ]);								definitionTerm: 'Layout';								definitionData: selectedClass classLayout class name;								definitionTerm: 'Traits used';								definitionData: selectedClass traitComposition;								definitionTerm: 'Instance Variables';								definitionData: [ selectedClass instVarNames do: [ :name | canvas render: name ] separatedBy: [ canvas break ] ];								definitionTerm: 'Class Variables';								definitionData: [ selectedClass classVarNames do: [ :name | canvas render: name ] separatedBy: [ canvas break ] ];								definitionTerm: 'Pool Dictionaries';								definitionData: [ selectedClass sharedPools do: [ :pool | canvas render: pool name ] separatedBy: [ canvas break ] ];								definitionTerm: 'Category';								definitionData: selectedClass category ]						applying: [ :list | list addClass bootstrap3 definitionListHorizontal ] ];				buildApplying: [ :panel | panel addClass bootstrap3 panelDefault ])! !
!WPLiveDocumentationClassDefinitionCard categoriesFor: #initializeFor:!initialization!public! !
!WPLiveDocumentationClassDefinitionCard categoriesFor: #renderContentOn:!public!rendering! !

!WPLiveDocumentationClassDefinitionCard class methodsFor!

for: aClass	^ self new initializeFor: aClass! !
!WPLiveDocumentationClassDefinitionCard class categoriesFor: #for:!instance creation!public! !

