"Filed out from Dolphin Smalltalk 7"!

WillowComponentBuilder subclass: #BootstrapPanelBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapPanelBuilder guid: (GUID fromString: '{08ef53f3-458a-40bb-9ed9-ba88bfe361e1}')!
BootstrapPanelBuilder comment: 'I''m an abstract class declaring the configuration options for panels. '!
!BootstrapPanelBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapPanelBuilder methodsFor!

footer: aRenderable	self subclassResponsibility!

headingDisplaying: aRenderable	self subclassResponsibility!

headingDisplaying: aRenderable withLevel: aHeadingLevel	self subclassResponsibility!

headingDisplaying: aRenderable withLevel: aHeadingLevel applying: aComponentCommand	self subclassResponsibility!

withListGroup: aListWebView	self subclassResponsibility!

withTable: aTableWebView	self subclassResponsibility!

wrapping: theBodyContent	self subclassResponsibility! !
!BootstrapPanelBuilder categoriesFor: #footer:!Configuring!public! !
!BootstrapPanelBuilder categoriesFor: #headingDisplaying:!Configuring!public! !
!BootstrapPanelBuilder categoriesFor: #headingDisplaying:withLevel:!Configuring!public! !
!BootstrapPanelBuilder categoriesFor: #headingDisplaying:withLevel:applying:!Configuring!public! !
!BootstrapPanelBuilder categoriesFor: #withListGroup:!Configuring!public! !
!BootstrapPanelBuilder categoriesFor: #withTable:!Configuring!public! !
!BootstrapPanelBuilder categoriesFor: #wrapping:!Configuring!public! !

!BootstrapPanelBuilder class methodsFor!

isAbstract	^ self name = #BootstrapPanelBuilder! !
!BootstrapPanelBuilder class categoriesFor: #isAbstract!public!testing! !

