"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #BootstrapIconWebView
	instanceVariableNames: 'containerCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapIconWebView guid: (GUID fromString: '{792fcb9f-7587-406e-8535-5204a3c9a296}')!
BootstrapIconWebView comment: 'I''m a bootstrap icon.. basically a span with the correct classes.'!
!BootstrapIconWebView categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapIconWebView methodsFor!

initializeApplying: aComponentCommand	containerCommand := aComponentCommand!

renderContentOn: aCanvas	aCanvas span apply: containerCommand! !
!BootstrapIconWebView categoriesFor: #initializeApplying:!initialize!public! !
!BootstrapIconWebView categoriesFor: #renderContentOn:!initialize!public! !

!BootstrapIconWebView class methodsFor!

applying: aComponentCommand 		^self new initializeApplying: aComponentCommand !

classificationCommandFor: aGlyphiconName	^ [ :span | span addClass bootstrap glyphicon + (ComponentClassificationCommand toStyleWith: aGlyphiconName) ] asWebComponentCommand!

representing: aGlyphiconName	^ self applying: (self classificationCommandFor: aGlyphiconName)!

representing: aGlyphiconName applying: aCommandToComponent	^ self applying: (self classificationCommandFor: aGlyphiconName) + aCommandToComponent! !
!BootstrapIconWebView class categoriesFor: #applying:!private! !
!BootstrapIconWebView class categoriesFor: #classificationCommandFor:!private! !
!BootstrapIconWebView class categoriesFor: #representing:!Instance Creation!public! !
!BootstrapIconWebView class categoriesFor: #representing:applying:!Instance Creation!public! !

