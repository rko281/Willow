"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #BootstrapLabeledWebView
	instanceVariableNames: 'formGroupContainer'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapLabeledWebView guid: (GUID fromString: '{3742ced3-aeed-4c46-9818-c5965c672152}')!
BootstrapLabeledWebView comment: 'I''m useful for wrapping labels and controls  for optimum spacing.'!
!BootstrapLabeledWebView categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapLabeledWebView methodsFor!

initializeApplying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField	| fieldToRender |	fieldToRender := [ GenericContainerWebView wrapping: aFieldWebView applying: aCommandToField ]		unless: aCommandToField isNullCommand		inWhichCase: [ aFieldWebView ].	formGroupContainer := GenericContainerWebView		wrapping: [ :canvas | 			| fieldIdentifier |			fieldIdentifier := aFieldWebView identifyIn: canvas.			self				renderLabelFor: fieldIdentifier				displaying: thePhrasingContent				on: canvas				applying: aCommandToLabel.			canvas render: fieldToRender			]		applying: aCommandToContainer!

renderContentOn: aCanvas	aCanvas render: formGroupContainer!

renderLabelFor: fieldIdentifier displaying: thePhrasingContent on: canvas applying: aCommandToLabel	canvas label		for: fieldIdentifier;		with: thePhrasingContent applying: aCommandToLabel! !
!BootstrapLabeledWebView categoriesFor: #initializeApplying:displaying:applying:boundTo:applying:!initialization!public! !
!BootstrapLabeledWebView categoriesFor: #renderContentOn:!public!rendering! !
!BootstrapLabeledWebView categoriesFor: #renderLabelFor:displaying:on:applying:!private / Rendering!public! !

!BootstrapLabeledWebView class methodsFor!

applying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField	^ self new		initializeApplying: [ :container | container addClass bootstrap formGroup + aCommandToContainer ] asWebComponentCommand		displaying: thePhrasingContent		applying: [ :label | label addClass bootstrap controlLabel + aCommandToLabel ] asWebComponentCommand		boundTo: aFieldWebView		applying: aCommandToField asWebComponentCommand!

displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField	^ self		applying: [ :container |  ]		displaying: thePhrasingContent		applying: aCommandToLabel		boundTo: aFieldWebView		applying: aCommandToField! !
!BootstrapLabeledWebView class categoriesFor: #applying:displaying:applying:boundTo:applying:!Instance Creation!public! !
!BootstrapLabeledWebView class categoriesFor: #displaying:applying:boundTo:applying:!Instance Creation!public! !

