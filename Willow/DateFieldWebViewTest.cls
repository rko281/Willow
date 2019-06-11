"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #DateFieldWebViewTest
	instanceVariableNames: 'notificationWasReceived'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DateFieldWebViewTest guid: (GUID fromString: '{4c07da56-ff86-4c7f-b0b1-47458b3915eb}')!
DateFieldWebViewTest comment: 'A DateFieldWebViewTest is a test class for testing the behavior of DateFieldWebView'!
!DateFieldWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!DateFieldWebViewTest methodsFor!

changeNotifiedBy: aTextFieldWebView 		notificationWasReceived := true!

testDate	| dateField html currentDate |	dateField := DateFieldWebView applying: [ :field |  ].	self should: [ dateField date ] raise: InstanceCreationFailed.	currentDate := Date newDay: 1 month: 1 year: 2001.	dateField changeDateTo: currentDate.	self assert: dateField date equals: currentDate.	html := self render: dateField.	self assert: html equals: '<input value="2001-01-01" name="1" type="date"/>'!

testIdentifyIn	| dateField html |	dateField := DateFieldWebView applying: [ :field |  ].	html := self		renderUsing: [ :canvas | 			dateField identifyIn: canvas.			canvas render: dateField ].	self assert: html equals: '<input value="" name="2" id="date-field-id1" type="date"/>'!

testNotifyChangesTo	| dateField |	dateField := DateFieldWebView applying: [ :field |  ].	dateField notifyChangesTo: self.	notificationWasReceived := false.	dateField changeDateTo: Date today.	self assert: notificationWasReceived!

testOnTrigger	| dateField html |	dateField := DateFieldWebView applying: [ :field |  ].	dateField onTrigger disable.	html := self render: dateField.	self assert: html equals: '<input value="" name="1" type="date" id="input-id2"/><script type="text/javascript">$("#input-id2").change(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOn	| dateField html |	dateField := DateFieldWebView applying: [ :field |  ].	html := self render: dateField.	self assert: html equals: '<input value="" name="1" type="date"/>'! !
!DateFieldWebViewTest categoriesFor: #changeNotifiedBy:!public!support! !
!DateFieldWebViewTest categoriesFor: #testDate!public!tests! !
!DateFieldWebViewTest categoriesFor: #testIdentifyIn!public!tests! !
!DateFieldWebViewTest categoriesFor: #testNotifyChangesTo!public!tests! !
!DateFieldWebViewTest categoriesFor: #testOnTrigger!public!tests! !
!DateFieldWebViewTest categoriesFor: #testRenderContentOn!public!tests! !

