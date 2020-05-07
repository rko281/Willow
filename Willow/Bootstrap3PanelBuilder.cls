"Filed out from Dolphin Smalltalk 7"!

BootstrapPanelBuilder subclass: #Bootstrap3PanelBuilder
	instanceVariableNames: 'headingOptional bodyOptional footerOptional tablesAndListGroups'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3PanelBuilder guid: (GUID fromString: '{e28e0cb6-ee10-498c-b2c0-05f478d51e28}')!
Bootstrap3PanelBuilder comment: 'I''m a builder of bootstrap panels'!
!Bootstrap3PanelBuilder categoriesForClass!Willow-Bootstrap-3-WebViews! !
!Bootstrap3PanelBuilder methodsFor!

buildApplying: aCommandToPanel	^ GenericContainerWebView		wrapping: [ :canvas | 			self renderHeadingOn: canvas.			self renderBodyOn: canvas.			self renderTableOrListGroupOn: canvas.			self renderFooterOn: canvas			]		applying: [ :panel | panel addClass bootstrap3 panel + aCommandToPanel ]!

footer: aRenderable	footerOptional := Optional containing: aRenderable!

headingDisplaying: aRenderable	headingOptional := Optional containing: aRenderable!

headingDisplaying: aRenderable withLevel: aHeadingLevel	self headingDisplaying: aRenderable withLevel: aHeadingLevel applying: [ :heading |  ]!

headingDisplaying: aRenderable withLevel: aHeadingLevel applying: aComponentCommand	headingOptional := Optional		containing:			( HeadingWebView				displaying: aRenderable				withLevel: aHeadingLevel				applying: [ :heading | heading addClass bootstrap3 panelTitle + aComponentCommand ] )!

initialize	super initialize.	headingOptional := Optional unused.	bodyOptional := Optional unused.	tablesAndListGroups := OrderedCollection new.	footerOptional := Optional unused!

renderBodyOn: canvas	bodyOptional		withContentDo:			[ :renderableInsideBody | canvas div with: renderableInsideBody applying: [ :div | div addClass bootstrap3 panelBody ] ]!

renderFooterOn: canvas	footerOptional		withContentDo: [ :footer | canvas div with: footer applying: [ :div | div addClass bootstrap3 panelFooter ] ]!

renderHeadingOn: canvas	headingOptional		withContentDo: [ :heading | canvas div with: heading applying: [ :div | div addClass bootstrap3 panelHeading ] ]!

renderTableOrListGroupOn: canvas	canvas render: tablesAndListGroups!

withListGroup: aListWebView	self withTable: aListWebView!

withTable: aTableWebView	tablesAndListGroups add: aTableWebView!

wrapping: theBodyContent	bodyOptional := Optional containing: theBodyContent! !
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

