﻿"Filed out from Dolphin Smalltalk 7"!

PresentationStepWebView subclass: #FormTriggeringStepWebView
	instanceVariableNames: 'button input'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FormTriggeringStepWebView guid: (GUID fromString: '{4b70f444-07b9-4ab1-a95a-68b82d9a6def}')!
FormTriggeringStepWebView comment: 'I''m a step showing a form triggering.'!
!FormTriggeringStepWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!FormTriggeringStepWebView methodsFor!

askDeveloper: aQuestion

	^ UIManager default textEntry: 'aQuestion'!

description

initialize

initializeButton

initializeField

renderContentOn: aCanvas

renderFormOn: aCanvas

renderQuestionComponentsOn: aCanvas

shortName
!FormTriggeringStepWebView categoriesFor: #askDeveloper:!private/rendering!public! !
!FormTriggeringStepWebView categoriesFor: #description!accessing!public! !
!FormTriggeringStepWebView categoriesFor: #initialize!initialization!public! !
!FormTriggeringStepWebView categoriesFor: #initializeButton!initialization!public! !
!FormTriggeringStepWebView categoriesFor: #initializeField!initialization!public! !
!FormTriggeringStepWebView categoriesFor: #renderContentOn:!public!rendering! !
!FormTriggeringStepWebView categoriesFor: #renderFormOn:!private/rendering!public! !
!FormTriggeringStepWebView categoriesFor: #renderQuestionComponentsOn:!private/rendering!public! !
!FormTriggeringStepWebView categoriesFor: #shortName!accessing!public! !
