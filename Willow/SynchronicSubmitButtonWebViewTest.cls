"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SynchronicSubmitButtonWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SynchronicSubmitButtonWebViewTest guid: (GUID fromString: '{66e25cde-e23d-411e-be4e-8f7416939cc3}')!
SynchronicSubmitButtonWebViewTest comment: 'A SynchronicSubmitButtonWebViewTest is a test class for testing the behavior of SynchronicSubmitButtonWebView'!
!SynchronicSubmitButtonWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!SynchronicSubmitButtonWebViewTest methodsFor!

testIdentifyIn	| synchronicButton html |	synchronicButton := SynchronicSubmitButtonWebView		labeled: 'Click me!!'		applying: [ :button |  ]		evaluating: [  ].	html := self		renderUsing: [ :canvas | 			synchronicButton identifyIn: canvas.			canvas render: synchronicButton ].	self		assert: html			equals: '<button id="submit-button-id1" name="2" type="submit">Click me!!</button>';		assert: synchronicButton identifier equals: 'submit-button-id1'!

testOnTrigger	| synchronicButton html |	synchronicButton := SynchronicSubmitButtonWebView		labeled: 'Submit'		applying: [ :button |  ]		evaluating: [  ].	synchronicButton onTrigger disable.	html := self render: synchronicButton.	self		assert: html		equals:			'<button name="1" id="button-id2" type="submit">Submit</button><script type="text/javascript">$("#button-id2").click(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOn	| synchronicButton html |	synchronicButton := SynchronicSubmitButtonWebView		labeled: 'Submit'		applying: [ :button |  ]		evaluating: [  ].	html := self render: synchronicButton.	self assert: html equals: '<button name="1" type="submit">Submit</button>'! !
!SynchronicSubmitButtonWebViewTest categoriesFor: #testIdentifyIn!public!tests! !
!SynchronicSubmitButtonWebViewTest categoriesFor: #testOnTrigger!public!tests/rendering! !
!SynchronicSubmitButtonWebViewTest categoriesFor: #testRenderContentOn!public!tests/rendering! !

