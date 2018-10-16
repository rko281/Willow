"Filed out from Dolphin Smalltalk 7"!

WAErrorHandlerTest subclass: #AjaxAwareErrorHandlerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AjaxAwareErrorHandlerTest guid: (GUID fromString: '{b51c39b0-c91f-4207-8931-d7957482f441}')!
AjaxAwareErrorHandlerTest comment: 'An AjaxAwareErrorHandlerTest is a test class for testing the behavior of AjaxAwareErrorHandler'!
!AjaxAwareErrorHandlerTest categoriesForClass!Willow-Tests-Applications! !
!AjaxAwareErrorHandlerTest methodsFor!

createHttpXmlRequestContext	| request |	request := WARequest new.	request		setHeaders:			(GRSmallDictionary new				at: 'x-requested-with' put: 'XMLHttpRequest';				yourself).	^ WARequestContext request: request response: WABufferedResponse new!

handlerClass	^ AjaxAwareErrorHandlerFactory new		on: AssertionFailed			do: [ :assertionFailed | assertionFailed return ];		yourself!

testAssertionFailed	| context reportingActionWasEvaluated updateRootBlockWasEvaluated renderingBlockWasEvaluated |	reportingActionWasEvaluated := false.	updateRootBlockWasEvaluated := false.	renderingBlockWasEvaluated := false.	context := self createRequestContext.	[ self handlerClass		reportingAction: [ :handler :exception | reportingActionWasEvaluated := exception isA: AssertionFailed ];		updateRootWith: [ :root | updateRootBlockWasEvaluated := true ];		renderNonAjaxErrorsWith: [ :canvas :error | 			self assert: (AssertionFailed handles: error).			renderingBlockWasEvaluated := true ];		handleExceptionsDuring: [ AssertionFailed signal ] context: context ]		on: WAResponseNotification		do: [ :n | 			self				assert: context response status equals: 500;				assert: reportingActionWasEvaluated;				assert: updateRootBlockWasEvaluated;				assert: renderingBlockWasEvaluated.			^ self ].	self fail!

testHandleErrorInAjaxCall	| context |	context := self createHttpXmlRequestContext.	[ self handlerClass handleExceptionsDuring: [ Error signal ] context: context ]		on: WAResponseNotification		do: [ :n | 			self assert: context response status equals: 500.			^ self ].	self fail!

testHandlerErrorInAjaxCallReferencingHandler	| context ajaxHandlerWasEvaluated |	ajaxHandlerWasEvaluated := false.	context := self createHttpXmlRequestContext.	AjaxAwareErrorHandlerFactory new		on: AssertionFailed			do: [ :error :handler | ajaxHandlerWasEvaluated := (error isAn: AssertionFailed) and: [ handler isAn: AjaxAwareErrorHandler ] ];		handleExceptionsDuring: [ AssertionFailed signal ] context: context.	self assert: ajaxHandlerWasEvaluated!

testReportingActionArgumentsAreOptional	| context reportingActionWasEvaluated |	reportingActionWasEvaluated := false.	context := self createRequestContext.	[ self handlerClass		reportingAction: [ reportingActionWasEvaluated := true ];		updateRootWith: [ :root |  ];		renderNonAjaxErrorsWith: [ :canvas :error |  ];		handleExceptionsDuring: [ AssertionFailed signal ] context: context ]		on: WAResponseNotification		do: [ :n | 			self				assert: context response status equals: 500;				assert: reportingActionWasEvaluated.			^ self ].	self fail!

testXmlHttpRequest	| context |	context := self createHttpXmlRequestContext.	"AssertionFailed is in the list of handled exceptions configured"	[ self handlerClass		renderNonAjaxErrorsWith: [ :canvas :error | self fail ];		handleExceptionsDuring: [ AssertionFailed signal ] context: context ]		on: WAResponseNotification		do: [ :n | self fail ]!

testXmlHttpRequestWithResumable	| context handlerWasEvaluated |	handlerWasEvaluated := false.	context := self createHttpXmlRequestContext.	[ self handlerClass		on: ZeroDivide			do: [ :error | 				handlerWasEvaluated := true.				error resume ];		renderNonAjaxErrorsWith: [ :canvas :error | self fail ];		handleExceptionsDuring: [ ZeroDivide signal ] context: context ]		on: WAResponseNotification		do: [ :n | self fail ].	self assert: handlerWasEvaluated! !
!AjaxAwareErrorHandlerTest categoriesFor: #createHttpXmlRequestContext!accessing!public! !
!AjaxAwareErrorHandlerTest categoriesFor: #handlerClass!accessing!public! !
!AjaxAwareErrorHandlerTest categoriesFor: #testAssertionFailed!accessing!public! !
!AjaxAwareErrorHandlerTest categoriesFor: #testHandleErrorInAjaxCall!accessing!public! !
!AjaxAwareErrorHandlerTest categoriesFor: #testHandlerErrorInAjaxCallReferencingHandler!accessing!public! !
!AjaxAwareErrorHandlerTest categoriesFor: #testReportingActionArgumentsAreOptional!accessing!public! !
!AjaxAwareErrorHandlerTest categoriesFor: #testXmlHttpRequest!accessing!public! !
!AjaxAwareErrorHandlerTest categoriesFor: #testXmlHttpRequestWithResumable!accessing!public! !

