"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #BootstrapAlertCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapAlertCommandTest guid: (GUID fromString: '{4f96372a-91b5-4d9c-90f9-30e92845bbcd}')!
BootstrapAlertCommandTest comment: 'A BootstrapAlertCommandTest is a test class for testing the behavior of BootstrapAlertCommand'!
!BootstrapAlertCommandTest categoriesForClass!Willow-Bootstrap-Tests-Frontend! !
!BootstrapAlertCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: BootstrapAlertCommand success toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div class="alert alert-success" role="alert"></div>'.	html := self apply: BootstrapAlertCommand informational toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div class="alert alert-info" role="alert"></div>'.	html := self apply: BootstrapAlertCommand danger toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div class="alert alert-danger" role="alert"></div>'.	html := self apply: BootstrapAlertCommand warning toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div class="alert alert-warning" role="alert"></div>'! !
!BootstrapAlertCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

