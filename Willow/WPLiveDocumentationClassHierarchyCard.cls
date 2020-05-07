"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPLiveDocumentationClassHierarchyCard
	instanceVariableNames: 'selectedClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPLiveDocumentationClassHierarchyCard guid: (GUID fromString: '{2f0db43e-6524-47fb-97f6-8623e3e221e6}')!
WPLiveDocumentationClassHierarchyCard comment: 'I''m a panel showing the class hierarchy'!
!WPLiveDocumentationClassHierarchyCard categoriesForClass!Willow-Playground-LiveDocs-WebViews! !
!WPLiveDocumentationClassHierarchyCard methodsFor!

initializeFor: aClass	selectedClass := aClass!

renderContentOn: html	html		render:			(self componentSupplier panelBuilder				headingDisplaying: 'Hierarchy';				wrapping: [ :canvas | 					selectedClass withAllSuperclasses reverse						doWithIndex: [ :class :index | 							index - 1								timesRepeat: [ canvas										space;										space ].							canvas								render: class name;								break ] ];				buildApplying: [ :panel | panel addClass bootstrap3 panelDefault ])! !
!WPLiveDocumentationClassHierarchyCard categoriesFor: #initializeFor:!initialization!public! !
!WPLiveDocumentationClassHierarchyCard categoriesFor: #renderContentOn:!initialization!public! !

!WPLiveDocumentationClassHierarchyCard class methodsFor!

for: aClass	^ self new initializeFor: aClass! !
!WPLiveDocumentationClassHierarchyCard class categoriesFor: #for:!instance creation!public! !

