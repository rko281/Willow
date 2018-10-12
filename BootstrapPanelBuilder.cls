"Filed out from Dolphin Smalltalk 7"!

WillowComponentBuilder subclass: #BootstrapPanelBuilder
	instanceVariableNames: 'headingOptional bodyOptional footerOptional tablesAndListGroups'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapPanelBuilder guid: (GUID fromString: '{08ef53f3-458a-40bb-9ed9-ba88bfe361e1}')!
BootstrapPanelBuilder comment: 'I''m a builder of bootstrap panels'!
!BootstrapPanelBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapPanelBuilder methodsFor!

buildApplying: aCommandToPanel	^ GenericContainerWebView		wrapping: [ :canvas | 			self renderHeadingOn: canvas.			self renderBodyOn: canvas.			self renderTableOrListGroupOn: canvas.			self renderFooterOn: canvas ]		applying: [ :panel | panel addClass bootstrap panel + aCommandToPanel ]!

footer: aRenderable	footerOptional := Optional containing: aRenderable!

headingDisplaying: aRenderable	headingOptional := Optional containing: aRenderable!

headingDisplaying: aRenderable withLevel: aHeadingLevel	self headingDisplaying: aRenderable withLevel: aHeadingLevel applying: [ :heading |  ]!

headingDisplaying: aRenderable withLevel: aHeadingLevel applying: aComponentCommand	headingOptional := Optional containing: (HeadingWebView displaying: aRenderable withLevel: aHeadingLevel applying: [ :heading | heading addClass bootstrap panelTitle + aComponentCommand ])!

initialize	super initialize.	headingOptional := Optional unused.	bodyOptional := Optional unused.	tablesAndListGroups := OrderedCollection new.	footerOptional := Optional unused!

renderBodyOn: canvas	bodyOptional withContentDo: [ :renderableInsideBody | canvas div with: renderableInsideBody applying: [ :div | div addClass bootstrap panelBody ] ]!

renderFooterOn: canvas	footerOptional withContentDo: [ :footer | canvas div with: footer applying: [ :div | div addClass bootstrap panelFooter ] ]!

renderHeadingOn: canvas	headingOptional withContentDo: [ :heading | canvas div with: heading applying: [ :div | div addClass bootstrap panelHeading ] ]!

renderTableOrListGroupOn: canvas	tablesAndListGroups do: [ :tableOrListGroup | canvas render: tableOrListGroup ]!

withListGroup: aListWebView	self withTable: aListWebView!

withTable: aTableWebView	tablesAndListGroups add: aTableWebView!

wrapping: theBodyContent	bodyOptional := Optional containing: theBodyContent! !
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

