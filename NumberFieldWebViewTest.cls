"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #NumberFieldWebViewTest
	instanceVariableNames: 'notificationWasReceived'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
NumberFieldWebViewTest guid: (GUID fromString: '{a93c0244-0453-4326-84f7-37f3c06ca761}')!
NumberFieldWebViewTest comment: 'A NumberFieldWebViewTest is a test class for testing the behavior of NumberFieldWebView'!
!NumberFieldWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!NumberFieldWebViewTest methodsFor!

changeNotifiedBy: aTextFieldWebView 		notificationWasReceived := true!

testIdentifyIn	| numberField html |	numberField := NumberFieldWebView applying: [ :field |  ] transformingWith: IntegerCodec new.	html := self		renderUsing: [ :canvas | 			numberField identifyIn: canvas.			canvas render: numberField ].	self assert: html equals: '<input value="" name="2" id="number-field-id1" type="number"/>'!

testNotifyChangesTo	| numberField |	numberField := NumberFieldWebView applying: [ :field |  ] transformingWith: IntegerCodec new.	numberField notifyChangesTo: self.	notificationWasReceived := false.	numberField changeNumberTo: -5.	self assert: notificationWasReceived!

testNumber	| numberField html |	numberField := NumberFieldWebView applying: [ :field |  ] transformingWith: IntegerCodec new.	self assert: numberField number equals: 0.	numberField changeNumberTo: 15.	self assert: numberField number equals: 15.	html := self render: numberField.	self assert: html equals: '<input value="15" name="1" type="number"/>'!

testOnTrigger	| numberField html |	numberField := NumberFieldWebView applying: [ :field |  ] transformingWith: IntegerCodec new.	numberField onTrigger disable.	html := self render: numberField.	self assert: html equals: '<input value="" name="1" type="number" id="input-id2"/><script type="text/javascript">$("#input-id2").change(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOn	| numberField html |	numberField := NumberFieldWebView applying: [ :field |  ] transformingWith: IntegerCodec new.	html := self render: numberField.	self assert: html equals: '<input value="" name="1" type="number"/>'! !
!NumberFieldWebViewTest categoriesFor: #changeNotifiedBy:!public!support! !
!NumberFieldWebViewTest categoriesFor: #testIdentifyIn!public!tests/configuring! !
!NumberFieldWebViewTest categoriesFor: #testNotifyChangesTo!public!tests/number/container/API! !
!NumberFieldWebViewTest categoriesFor: #testNumber!public!tests/number/container/API! !
!NumberFieldWebViewTest categoriesFor: #testOnTrigger!public!tests/configuring! !
!NumberFieldWebViewTest categoriesFor: #testRenderContentOn!public!tests/rendering! !

