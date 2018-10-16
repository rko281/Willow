"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #BootstrapNotificationBuilderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapNotificationBuilderTest guid: (GUID fromString: '{20baa5fa-e3e8-493a-96bc-dd01a4654ea7}')!
BootstrapNotificationBuilderTest comment: 'A BootstrapNotificationBuilderTest is a test class for testing the behavior of BootstrapNotificationBuilder'!
!BootstrapNotificationBuilderTest categoriesForClass!Willow-Bootstrap-Tests-WebViews! !
!BootstrapNotificationBuilderTest methodsFor!

testBuildApplying	| notification html |	notification := BootstrapNotificationBuilder new buildApplying: [ :container |  ].	html := self render: notification.	self assert: html equals: '<div class="alert alert-info" role="alert"></div>'!

testDanger	| notification html |	notification := BootstrapNotificationBuilder new		danger;		buildApplying: [ :container |  ].	html := self render: notification.	self assert: html equals: '<div class="alert alert-danger" role="alert"></div>'!

testDismissible	| notification html |	notification := BootstrapNotificationBuilder new		dismissibleWrapping: '';		buildApplying:  [ :container |  ].	html := self render: notification.	self		assert: html		equals:			'<div class="alert alert-info alert-dismissible" role="alert"><button class="close" data-dismiss="alert" aria-label="Close" type="button"><span aria-hidden="true">×</span></button></div>'!

testInformational	| notification html |	notification := BootstrapNotificationBuilder new		informational;		buildApplying: [ :container |  ].	html := self render: notification.	self assert: html equals: '<div class="alert alert-info" role="alert"></div>'!

testSuccess	| notification html |	notification := BootstrapNotificationBuilder new		success;		buildApplying: [ :container |  ].	html := self render: notification.	self assert: html equals: '<div class="alert alert-success" role="alert"></div>'!

testWarning	| notification html |	notification := BootstrapNotificationBuilder new		warning;		buildApplying: [ :container |  ].	html := self render: notification.	self assert: html equals: '<div class="alert alert-warning" role="alert"></div>'!

testWrapping	| notification html |	notification := BootstrapNotificationBuilder new		wrapping: [ :canvas | 			canvas				strong: 'Ouch!!';				space;				render: 'Something happened' ];		buildApplying: [ :container |  ].	html := self render: notification.	self assert: html equals: '<div class="alert alert-info" role="alert"><strong>Ouch!!</strong>&nbsp;Something happened</div>'! !
!BootstrapNotificationBuilderTest categoriesFor: #testBuildApplying!public!tests/Building! !
!BootstrapNotificationBuilderTest categoriesFor: #testDanger!public!tests/Building! !
!BootstrapNotificationBuilderTest categoriesFor: #testDismissible!public!tests/Building! !
!BootstrapNotificationBuilderTest categoriesFor: #testInformational!public!tests/Building! !
!BootstrapNotificationBuilderTest categoriesFor: #testSuccess!public!tests/Building! !
!BootstrapNotificationBuilderTest categoriesFor: #testWarning!public!tests/Building! !
!BootstrapNotificationBuilderTest categoriesFor: #testWrapping!public!tests/Building! !

