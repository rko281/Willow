﻿"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #AjaxAwareErrorHandlerFactory
	instanceVariableNames: 'reportingActionOptional rootCommandOptional nonAjaxRenderBlockOptional ajaxErrorHandlers'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AjaxAwareErrorHandlerFactory guid: (GUID fromString: '{d9f4b499-cb0b-45d3-b9fc-623be3e99a23}')!
AjaxAwareErrorHandlerFactory comment: 'I''m a builder of AjaxAwareErrorHandlers, just because you cannot control the creation of them.'!
!AjaxAwareErrorHandlerFactory categoriesForClass!Willow-Applications! !
!AjaxAwareErrorHandlerFactory methodsFor!

, anException

context: aRequestContext

handleExceptionsDuring: aBlock context: aRequestContext

handles: anException

initialize

internalError: anError context: aRequestContext

on: anExceptionSelector do: aBlock

renderNonAjaxErrorsWith: aDyadicBlock

reportingAction: aMonadycBlock

updateRootWith: aBlock
!AjaxAwareErrorHandlerFactory categoriesFor: #,!Error Handler / API!public! !
!AjaxAwareErrorHandlerFactory categoriesFor: #context:!Error Handler / API!public! !
!AjaxAwareErrorHandlerFactory categoriesFor: #handleExceptionsDuring:context:!Error Handler / API!public! !
!AjaxAwareErrorHandlerFactory categoriesFor: #handles:!Error Handler / API!public! !
!AjaxAwareErrorHandlerFactory categoriesFor: #initialize!initialization!public! !
!AjaxAwareErrorHandlerFactory categoriesFor: #internalError:context:!Error Handler / API!public! !
!AjaxAwareErrorHandlerFactory categoriesFor: #on:do:!Configuring!public! !
!AjaxAwareErrorHandlerFactory categoriesFor: #renderNonAjaxErrorsWith:!Configuring!public! !
!AjaxAwareErrorHandlerFactory categoriesFor: #reportingAction:!Configuring!public! !
!AjaxAwareErrorHandlerFactory categoriesFor: #updateRootWith:!Configuring!public! !
