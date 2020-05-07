"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #BootstrapLabeledFieldWebView
	instanceVariableNames: 'formGroupContainer'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapLabeledFieldWebView guid: (GUID fromString: '{0b2da6d9-5716-4dbc-84b4-89530e06f174}')!
BootstrapLabeledFieldWebView comment: 'I''m useful for wrapping labels and controls for optimum spacing. I''m not intended to be used directly, but with the mediation of the component supplier, becausethe markup depends on the bootstrap version.'!
!BootstrapLabeledFieldWebView categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapLabeledFieldWebView methodsFor!

initializeApplying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField	| fieldToRender |	fieldToRender := [ GenericContainerWebView wrapping: aFieldWebView applying: aCommandToField ]		unless: aCommandToField isNullCommand		inWhichCase: [ aFieldWebView ].	formGroupContainer := GenericContainerWebView		wrapping: [ :canvas | 			| fieldIdentifier |			fieldIdentifier := aFieldWebView identifyIn: canvas.			self				renderLabelFor: fieldIdentifier				displaying: thePhrasingContent				on: canvas				applying: aCommandToLabel.			canvas render: fieldToRender			]		applying: aCommandToContainer!

renderContentOn: aCanvas	aCanvas render: formGroupContainer!

renderLabelFor: fieldIdentifier displaying: thePhrasingContent on: canvas applying: aCommandToLabel	canvas label		for: fieldIdentifier;		with: thePhrasingContent applying: aCommandToLabel! !
!BootstrapLabeledFieldWebView categoriesFor: #initializeApplying:displaying:applying:boundTo:applying:!initialization!public! !
!BootstrapLabeledFieldWebView categoriesFor: #renderContentOn:!public!rendering! !
!BootstrapLabeledFieldWebView categoriesFor: #renderLabelFor:displaying:on:applying:!private / Rendering!public! !

!BootstrapLabeledFieldWebView class methodsFor!

applying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField	^ self new		initializeApplying:			[ :container | container addClass bootstrapCommon formGroup + aCommandToContainer ]				asWebComponentCommand		displaying: thePhrasingContent		applying: aCommandToLabel		boundTo: aFieldWebView		applying: aCommandToField asWebComponentCommand!

displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField	^ self		applying: [ :container |  ]		displaying: thePhrasingContent		applying: aCommandToLabel		boundTo: aFieldWebView		applying: aCommandToField! !
!BootstrapLabeledFieldWebView class categoriesFor: #applying:displaying:applying:boundTo:applying:!Instance Creation!public! !
!BootstrapLabeledFieldWebView class categoriesFor: #displaying:applying:boundTo:applying:!Instance Creation!public! !

