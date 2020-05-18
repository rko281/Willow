﻿"Filed out from Dolphin Smalltalk 7"!

BootstrapPanelBuilder subclass: #Bootstrap3PanelBuilder
	instanceVariableNames: 'headingOptional bodyOptional footerOptional tablesAndListGroups'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3PanelBuilder guid: (GUID fromString: '{e28e0cb6-ee10-498c-b2c0-05f478d51e28}')!
Bootstrap3PanelBuilder comment: 'I''m a builder of bootstrap panels'!
!Bootstrap3PanelBuilder categoriesForClass!Willow-Bootstrap-3-WebViews! !
!Bootstrap3PanelBuilder methodsFor!

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
!Bootstrap3PanelBuilder categoriesFor: #buildApplying:!Building!public! !
!Bootstrap3PanelBuilder categoriesFor: #footer:!Configuring!public! !
!Bootstrap3PanelBuilder categoriesFor: #headingDisplaying:!Configuring!public! !
!Bootstrap3PanelBuilder categoriesFor: #headingDisplaying:withLevel:!Configuring!public! !
!Bootstrap3PanelBuilder categoriesFor: #headingDisplaying:withLevel:applying:!Configuring!public! !
!Bootstrap3PanelBuilder categoriesFor: #initialize!initialization!public! !
!Bootstrap3PanelBuilder categoriesFor: #renderBodyOn:!private / Rendering!public! !
!Bootstrap3PanelBuilder categoriesFor: #renderFooterOn:!private / Rendering!public! !
!Bootstrap3PanelBuilder categoriesFor: #renderHeadingOn:!private / Rendering!public! !
!Bootstrap3PanelBuilder categoriesFor: #renderTableOrListGroupOn:!private / Rendering!public! !
!Bootstrap3PanelBuilder categoriesFor: #withListGroup:!Configuring!public! !
!Bootstrap3PanelBuilder categoriesFor: #withTable:!Configuring!public! !
!Bootstrap3PanelBuilder categoriesFor: #wrapping:!Configuring!public! !
