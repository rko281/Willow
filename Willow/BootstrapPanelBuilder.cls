﻿"Filed out from Dolphin Smalltalk 7"!

WillowComponentBuilder subclass: #BootstrapPanelBuilder
	instanceVariableNames: 'headingOptional bodyOptional footerOptional tablesAndListGroups'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapPanelBuilder guid: (GUID fromString: '{08ef53f3-458a-40bb-9ed9-ba88bfe361e1}')!
BootstrapPanelBuilder comment: 'I''m a builder of bootstrap panels'!
!BootstrapPanelBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapPanelBuilder methodsFor!

buildApplying: aCommandToPanel

footer: aRenderable

headingDisplaying: aRenderable

headingDisplaying: aRenderable withLevel: aHeadingLevel

headingDisplaying: aRenderable withLevel: aHeadingLevel applying: aComponentCommand

initialize

renderBodyOn: canvas

renderFooterOn: canvas

renderHeadingOn: canvas

renderTableOrListGroupOn: canvas

withListGroup: aListWebView

withTable: aTableWebView

wrapping: theBodyContent
!BootstrapPanelBuilder categoriesFor: #buildApplying:!Building!public! !
!BootstrapPanelBuilder categoriesFor: #footer:!Configuring!public! !
!BootstrapPanelBuilder categoriesFor: #headingDisplaying:!Configuring!public! !
!BootstrapPanelBuilder categoriesFor: #headingDisplaying:withLevel:!Configuring!public! !
!BootstrapPanelBuilder categoriesFor: #headingDisplaying:withLevel:applying:!Configuring!public! !
!BootstrapPanelBuilder categoriesFor: #initialize!initialization!public! !
!BootstrapPanelBuilder categoriesFor: #renderBodyOn:!private / Rendering!public! !
!BootstrapPanelBuilder categoriesFor: #renderFooterOn:!private / Rendering!public! !
!BootstrapPanelBuilder categoriesFor: #renderHeadingOn:!private / Rendering!public! !
!BootstrapPanelBuilder categoriesFor: #renderTableOrListGroupOn:!private / Rendering!public! !
!BootstrapPanelBuilder categoriesFor: #withListGroup:!Configuring!public! !
!BootstrapPanelBuilder categoriesFor: #withTable:!Configuring!public! !
!BootstrapPanelBuilder categoriesFor: #wrapping:!Configuring!public! !
