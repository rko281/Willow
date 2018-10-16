﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #BootstrapLabeledWebView
	instanceVariableNames: 'formGroupContainer'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapLabeledWebView guid: (GUID fromString: '{a1eb2f6f-87c4-4ae3-a31e-b40c15f10269}')!
BootstrapLabeledWebView comment: 'I''m useful for wrapping labels and controls  for optimum spacing.'!
!BootstrapLabeledWebView categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapLabeledWebView methodsFor!

initializeApplying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField

renderContentOn: aCanvas

renderLabelFor: fieldIdentifier displaying: thePhrasingContent on: canvas applying: aCommandToLabel
!BootstrapLabeledWebView categoriesFor: #initializeApplying:displaying:applying:boundTo:applying:!initialization!public! !
!BootstrapLabeledWebView categoriesFor: #renderContentOn:!public!rendering! !
!BootstrapLabeledWebView categoriesFor: #renderLabelFor:displaying:on:applying:!private / Rendering!public! !

!BootstrapLabeledWebView class methodsFor!

applying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField

displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField
!BootstrapLabeledWebView class categoriesFor: #applying:displaying:applying:boundTo:applying:!Instance Creation!public! !
!BootstrapLabeledWebView class categoriesFor: #displaying:applying:boundTo:applying:!Instance Creation!public! !
