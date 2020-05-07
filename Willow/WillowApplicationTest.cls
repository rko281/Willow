"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #WillowApplicationTest
	instanceVariableNames: 'applicationStarted'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowApplicationTest guid: (GUID fromString: '{fda3e14d-8b19-4fbc-bae0-f237971dc6a7}')!
WillowApplicationTest comment: 'A WillowApplicationTest is a test class for testing the behavior of WillowApplication'!
!WillowApplicationTest categoriesForClass!Willow-Tests-Applications! !
!WillowApplicationTest methodsFor!

componentSupplier	^ Html5ComponentSupplier new!

createHandlers	^ Array with: self!

isSession	^ true!

preferenceAt: aSymbol ifAbsent: aBlock	^ aBlock value!

startUpApplicationContextFor: aWillowApplication	applicationStarted := true!

testComponentSupplierForApplication	| supplier application |	supplier := Html5ComponentSupplier new.	application := (WillowTestingApplication using: supplier) componentSupplierForApplication.	self assert: application equals: supplier!

testDeploymentMode	self		renderUsing:			[ :canvas | self assert: (WillowApplication new deploymentMode isA: WAApplicationInDevelopment) ]!

testIinitialRequest	applicationStarted := false.	self		renderUsing: [ :canvas | 			WillowApplication new initialRequest: 'Not relevant'.			self assert: applicationStarted ]!

testRegisterAsDeployedApplication	| handlers |	handlers := WADispatcher default handlers.	self deny: ( handlers includesKey: WillowTestingApplication handlerName ).	WillowTestingApplication registerAsDeployedApplication.	self assert: ( handlers includesKey: WillowTestingApplication handlerName ).	WillowTestingApplication unregisterFromApplications.	self deny: ( handlers includesKey: WillowTestingApplication handlerName )!

testRegisterAsDevelopmentApplication	| handlers |	handlers := WADispatcher default handlers.	self deny: ( handlers includesKey: WillowTestingApplication handlerName ).	WillowTestingApplication registerAsDevelopmentApplication.	self assert: ( handlers includesKey: WillowTestingApplication handlerName ).	WillowTestingApplication unregisterFromApplications.	self deny: ( handlers includesKey: WillowTestingApplication handlerName )!

testRenderContentOn	| html application |	application := WillowTestingApplication new.	html := self fullDocumentRendering: application.	self		assert: html		equals:			'<!!DOCTYPE html><html lang="en"><head><title>The official testing app</title><script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script><script type="text/javascript" src="/files/willow-8.0.1/js/willow.js"></script></head><body onload="onLoad()"><span><select name="1"></select></span><div id="willow-dialog-section" class="willow-dialog-container"></div><div id="willow-notification-section"></div><script type="text/javascript">function onLoad(){};</script></body></html>'! !
!WillowApplicationTest categoriesFor: #componentSupplier!accessing!public! !
!WillowApplicationTest categoriesFor: #createHandlers!accessing!public! !
!WillowApplicationTest categoriesFor: #isSession!accessing!public! !
!WillowApplicationTest categoriesFor: #preferenceAt:ifAbsent:!accessing!public! !
!WillowApplicationTest categoriesFor: #startUpApplicationContextFor:!accessing!public! !
!WillowApplicationTest categoriesFor: #testComponentSupplierForApplication!public!tests! !
!WillowApplicationTest categoriesFor: #testDeploymentMode!public!tests! !
!WillowApplicationTest categoriesFor: #testIinitialRequest!public!tests! !
!WillowApplicationTest categoriesFor: #testRegisterAsDeployedApplication!public!tests! !
!WillowApplicationTest categoriesFor: #testRegisterAsDevelopmentApplication!public!tests! !
!WillowApplicationTest categoriesFor: #testRenderContentOn!public!tests! !

