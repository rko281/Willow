"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #Bootstrap3IconWebView
	instanceVariableNames: 'containerCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3IconWebView guid: (GUID fromString: '{4019dcff-6278-4746-bedf-aa7f57e08e9d}')!
Bootstrap3IconWebView comment: 'I''m a bootstrap icon.. basically a span with the correct classes.'!
!Bootstrap3IconWebView categoriesForClass!Willow-Bootstrap-3-WebViews! !
!Bootstrap3IconWebView methodsFor!

initializeApplying: aComponentCommand	containerCommand := aComponentCommand!

renderContentOn: aCanvas	aCanvas span apply: containerCommand! !
!Bootstrap3IconWebView categoriesFor: #initializeApplying:!initialize!public! !
!Bootstrap3IconWebView categoriesFor: #renderContentOn:!initialize!public! !

!Bootstrap3IconWebView class methodsFor!

applying: aComponentCommand 		^self new initializeApplying: aComponentCommand !

classificationCommandFor: aGlyphiconName	^ [ :span | span addClass bootstrap3 glyphicon + ( ComponentClassificationCommand toStyleWith: aGlyphiconName ) ]		asWebComponentCommand!

representing: aGlyphiconName	^ self applying: (self classificationCommandFor: aGlyphiconName)!

representing: aGlyphiconName applying: aCommandToComponent	^ self applying: (self classificationCommandFor: aGlyphiconName) + aCommandToComponent! !
!Bootstrap3IconWebView class categoriesFor: #applying:!private! !
!Bootstrap3IconWebView class categoriesFor: #classificationCommandFor:!private! !
!Bootstrap3IconWebView class categoriesFor: #representing:!Instance Creation!public! !
!Bootstrap3IconWebView class categoriesFor: #representing:applying:!Instance Creation!public! !

