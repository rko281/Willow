﻿"Filed out from Dolphin Smalltalk 7"!

BinaryChoiceWebViewBehavior subclass: #BootstrapCheckboxWebView
	instanceVariableNames: 'commandToComponent interactionInterpreter identifierAssigner isChecked labelOptional'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapCheckboxWebView guid: (GUID fromString: '{ebcfc344-d2bc-4da3-a04c-13ee3853cc5d}')!
BootstrapCheckboxWebView comment: 'I''m a checkbox specifically designed to use the html structure required by Bootstrap.'!
!BootstrapCheckboxWebView categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapCheckboxWebView methodsFor!

identifier

identifyIn: aCanvas

initializeLabeledAccordingTo: anOptionalLabel applying: aCommandToComponent

onTrigger

renderCheckboxOn: aCanvas

renderContentOn: aCanvas

renderLabelOn: aCanvas

selectOffModel

selectOnModel

toggleCurrentSelection
!BootstrapCheckboxWebView categoriesFor: #identifier!accessing!public! !
!BootstrapCheckboxWebView categoriesFor: #identifyIn:!configuring!public! !
!BootstrapCheckboxWebView categoriesFor: #initializeLabeledAccordingTo:applying:!initialization!public! !
!BootstrapCheckboxWebView categoriesFor: #onTrigger!configuring!public! !
!BootstrapCheckboxWebView categoriesFor: #renderCheckboxOn:!public!rendering / private! !
!BootstrapCheckboxWebView categoriesFor: #renderContentOn:!public!rendering! !
!BootstrapCheckboxWebView categoriesFor: #renderLabelOn:!public!rendering / private! !
!BootstrapCheckboxWebView categoriesFor: #selectOffModel!Binary Choice/API!public! !
!BootstrapCheckboxWebView categoriesFor: #selectOnModel!Binary Choice/API!public! !
!BootstrapCheckboxWebView categoriesFor: #toggleCurrentSelection!Binary Choice/API!public! !

!BootstrapCheckboxWebView class methodsFor!

labeled: aRenderable onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent

labeledAccordingTo: aLabelOptional onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent

onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff

onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent
!BootstrapCheckboxWebView class categoriesFor: #labeled:onModel:offModel:applying:!instance creation!public! !
!BootstrapCheckboxWebView class categoriesFor: #labeledAccordingTo:onModel:offModel:applying:!private/instance creation!public! !
!BootstrapCheckboxWebView class categoriesFor: #onModel:offModel:!instance creation!public! !
!BootstrapCheckboxWebView class categoriesFor: #onModel:offModel:applying:!instance creation!public! !
