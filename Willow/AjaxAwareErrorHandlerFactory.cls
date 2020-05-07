"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #AjaxAwareErrorHandlerFactory
	instanceVariableNames: 'reportingActionOptional rootCommandOptional nonAjaxRenderBlockOptional ajaxErrorHandlers'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AjaxAwareErrorHandlerFactory guid: (GUID fromString: '{d9f4b499-cb0b-45d3-b9fc-623be3e99a23}')!
AjaxAwareErrorHandlerFactory comment: 'I''m a builder of AjaxAwareErrorHandlers, just because you cannot control the creation of them.'!
!AjaxAwareErrorHandlerFactory categoriesForClass!Willow-Core-Applications! !
!AjaxAwareErrorHandlerFactory methodsFor!

, anException	^ ajaxErrorHandlers keys		inject: AjaxAwareErrorHandler , anException		into: [ :exceptionSet :currentExceptionSelector | exceptionSet , currentExceptionSelector ]!

context: aRequestContext	| handler |	handler := AjaxAwareErrorHandler context: aRequestContext.	reportingActionOptional withContentDo: [ :reportingAction | handler reportingAction: reportingAction ].	rootCommandOptional withContentDo: [ :rootCommand | handler updateRootWith: rootCommand ].	nonAjaxRenderBlockOptional withContentDo: [ :nonAjaxRenderBlock | handler renderNonAjaxErrorsWith: nonAjaxRenderBlock ].	ajaxErrorHandlers		keysAndValuesDo: [ :exceptionSelector :action | 			handler				on: exceptionSelector				do: action ].	^ handler!

handleExceptionsDuring: aBlock context: aRequestContext	^ (self context: aRequestContext) handleExceptionsDuring: aBlock!

handles: anException	^ (AjaxAwareErrorHandler handles: anException)		or: [ ajaxErrorHandlers keys anySatisfy: [ :handler | handler handles: anException ] ]!

initialize	super initialize.	ajaxErrorHandlers := GRSmallDictionary new.	reportingActionOptional := Optional unused.	nonAjaxRenderBlockOptional := Optional unused.	rootCommandOptional := Optional unused!

internalError: anError context: aRequestContext	^ (self context: aRequestContext) internalError: anError!

on: anExceptionSelector do: aBlock	ajaxErrorHandlers at: anExceptionSelector put: aBlock!

renderNonAjaxErrorsWith: aDyadicBlock	nonAjaxRenderBlockOptional := Optional containing: aDyadicBlock!

reportingAction: aMonadycBlock	reportingActionOptional := Optional containing: aMonadycBlock!

updateRootWith: aBlock	rootCommandOptional := Optional containing: aBlock! !
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

