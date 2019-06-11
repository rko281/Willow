"Filed out from Dolphin Smalltalk 7"!

WAHtmlErrorHandler subclass: #AjaxAwareErrorHandler
	instanceVariableNames: 'reportingAction ajaxExceptionHandlers rootCommand nonAjaxRenderBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AjaxAwareErrorHandler guid: (GUID fromString: '{3bdadb81-e6bb-4370-a143-af649c5e4a89}')!
AjaxAwareErrorHandler comment: 'I''m an error handler supporting a different handling for AJAX requests'!
!AjaxAwareErrorHandler categoriesForClass!Willow-Applications! !
!AjaxAwareErrorHandler methodsFor!

handleDefault: anException	self valueReportingActionWhenHandling: anException.	self requestContext request isXmlHttpRequest		then: [ self respondToXmlHttpRequestWith: anException messageText ]		otherwise: [ super handleDefault: anException ]!

handleException: anException	^ self requestContext request isXmlHttpRequest		then: [ ajaxExceptionHandlers keys				detect: [ :key | key handles: anException ]				ifFound: [ :key | ( ajaxExceptionHandlers at: key ) cull: anException cull: self ]				ifNone: [ super handleException: anException ]			]		otherwise: [ super handleException: anException ]!

initializeDefaults	ajaxExceptionHandlers := GRSmallDictionary new.	self		reportingAction: [ :errorHandler |  ];		updateRootWith: [ :root |  ];		renderNonAjaxErrorsWith: [ :canvas :exception | super renderContentForException: exception on: canvas ]!

initializeWithContext: aRequestContext	super initializeWithContext: aRequestContext.	self initializeDefaults!

on: anExceptionSelector do: aBlock	ajaxExceptionHandlers at: anExceptionSelector put: aBlock!

renderContentForException: anException on: html	nonAjaxRenderBlock value: html value: anException !

renderNonAjaxErrorsWith: aDyadicBlock	nonAjaxRenderBlock := aDyadicBlock!

reportingAction: aDyadicBlock	reportingAction := aDyadicBlock!

respondToXmlHttpRequestWith: aMessageText	self requestContext		respond: [ :response | 			response				internalError;				contentType:					(WAMimeType textHtml						charset: self requestContext charSet;						yourself);				nextPutAll: aMessageText ]!

updateHtmlRoot: root forException: anException	super updateHtmlRoot: root forException: anException.	rootCommand value: root.!

updateRootWith: aBlock	rootCommand := aBlock!

valueReportingActionWhenHandling: anException	reportingAction cull: self cull: anException! !
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

