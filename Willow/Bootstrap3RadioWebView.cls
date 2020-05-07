"Filed out from Dolphin Smalltalk 7"!

BootstrapRadioWebView subclass: #Bootstrap3RadioWebView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3RadioWebView guid: (GUID fromString: '{52832cb9-0220-464d-a816-d0cd45831819}')!
Bootstrap3RadioWebView comment: ''!
!Bootstrap3RadioWebView categoriesForClass!Willow-Bootstrap-3-WebViews! !
!Bootstrap3RadioWebView methodsFor!

renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas	super renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas.	self renderLabelContentFor: anElement on: aCanvas!

renderRadioButtonFor: anElement asPartOf: aRadioGroup on: aCanvas	aCanvas label		with: [ self renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas ]		applying: labelCommand! !
!Bootstrap3RadioWebView categoriesFor: #renderInputFor:asPartOf:on:!private/rendering!public! !
!Bootstrap3RadioWebView categoriesFor: #renderRadioButtonFor:asPartOf:on:!private/rendering!public! !

