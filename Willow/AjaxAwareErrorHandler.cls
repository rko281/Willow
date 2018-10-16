﻿"Filed out from Dolphin Smalltalk 7"!

WAHtmlErrorHandler subclass: #AjaxAwareErrorHandler
	instanceVariableNames: 'reportingAction ajaxExceptionHandlers rootCommand nonAjaxRenderBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AjaxAwareErrorHandler guid: (GUID fromString: '{76b18698-f722-440f-ae1c-c7b83f364e9a}')!
AjaxAwareErrorHandler comment: 'I''m an error handler supporting a different handling for AJAX requests'!
!AjaxAwareErrorHandler categoriesForClass!Willow-Applications! !
!AjaxAwareErrorHandler methodsFor!

handleDefault: anException

handleException: anException

initializeDefaults

initializeWithContext: aRequestContext

on: anExceptionSelector do: aBlock

renderContentForException: anException on: html

renderNonAjaxErrorsWith: aDyadicBlock

reportingAction: aDyadicBlock

respondToXmlHttpRequestWith: aMessageText

updateHtmlRoot: root forException: anException

updateRootWith: aBlock

valueReportingActionWhenHandling: anException
!AjaxAwareErrorHandler categoriesFor: #handleDefault:!actions!public! !
!AjaxAwareErrorHandler categoriesFor: #handleException:!actions!public! !
!AjaxAwareErrorHandler categoriesFor: #initializeDefaults!initialization!public! !
!AjaxAwareErrorHandler categoriesFor: #initializeWithContext:!initialization!public! !
!AjaxAwareErrorHandler categoriesFor: #on:do:!Configuring!public! !
!AjaxAwareErrorHandler categoriesFor: #renderContentForException:on:!private! !
!AjaxAwareErrorHandler categoriesFor: #renderNonAjaxErrorsWith:!Configuring!public! !
!AjaxAwareErrorHandler categoriesFor: #reportingAction:!Configuring!public! !
!AjaxAwareErrorHandler categoriesFor: #respondToXmlHttpRequestWith:!actions!public! !
!AjaxAwareErrorHandler categoriesFor: #updateHtmlRoot:forException:!private! !
!AjaxAwareErrorHandler categoriesFor: #updateRootWith:!Configuring!public! !
!AjaxAwareErrorHandler categoriesFor: #valueReportingActionWhenHandling:!actions!public! !
