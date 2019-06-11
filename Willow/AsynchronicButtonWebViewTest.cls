"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #AsynchronicButtonWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AsynchronicButtonWebViewTest guid: (GUID fromString: '{778b345c-3c4b-4f99-85a3-b39210cee975}')!
AsynchronicButtonWebViewTest comment: 'An AsynchronicButtonWebViewTest is a test class for testing the behavior of AsynchronicButtonWebView'!
!AsynchronicButtonWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!AsynchronicButtonWebViewTest methodsFor!

testIdentifyIn	| button html |	button := AsynchronicButtonWebView labeled: 'Click me!!'.	html := self		renderUsing: [ :canvas | 			button identifyIn: canvas.			canvas render: button ].	self		assert: html equals: '<button id="button-id1" type="button">Click me!!</button>';		assert: button identifier equals: 'button-id1'!

testOnTrigger	| button html |	button := AsynchronicButtonWebView labeled: 'Click me!!'.	button onTrigger disable.	html := self render: button.	self		assert: html		equals:			'<button id="button-id1" type="button">Click me!!</button><script type="text/javascript">$("#button-id1").click(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOn	| button html |	button := AsynchronicButtonWebView labeled: 'Click me!!'.	html := self render: button.	self assert: html equals: '<button type="button">Click me!!</button>'! !
!AsynchronicButtonWebViewTest categoriesFor: #testIdentifyIn!public!tests/rendering! !
!AsynchronicButtonWebViewTest categoriesFor: #testOnTrigger!public!tests/rendering! !
!AsynchronicButtonWebViewTest categoriesFor: #testRenderContentOn!public!tests/rendering! !

