"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #GenericContainerWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GenericContainerWebViewTest guid: (GUID fromString: '{5bb7f55f-507b-4ee0-bca8-cc11d41f0a3a}')!
GenericContainerWebViewTest comment: 'A GenericContainerWebViewTest is a test class for testing the behavior of GenericContainerWebView'!
!GenericContainerWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!GenericContainerWebViewTest methodsFor!

testOnTrigger	| container html |	container := GenericContainerWebView obtainingContentFrom: [ 'Hi!!' ].	container onTrigger disable.	html := self render: container.	self assert: html equals: '<div id="div-id1">Hi!!</div><script type="text/javascript">$("#div-id1").click(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOn	| container html |	container := GenericContainerWebView obtainingContentFrom: ['Hi!!'].	html := self render: container.	self assert: html equals: '<div>Hi!!</div>'!

testRenderContentOnWithCommands	| container html |	container := GenericContainerWebView obtainingContentFrom: [ 'Hi!!' ] applying: [ :theContainer | theContainer addClass willow ].	html := self render: container.	self assert: html equals: '<div class="willow">Hi!!</div>'!

testWrappingApplying	| container html |	container := GenericContainerWebView wrapping: 'Hello world' applying: [ :theContainer |  ].	html := self render: container.	self assert: html equals: '<div>Hello world</div>'! !
!GenericContainerWebViewTest categoriesFor: #testOnTrigger!public!tests! !
!GenericContainerWebViewTest categoriesFor: #testRenderContentOn!public!tests! !
!GenericContainerWebViewTest categoriesFor: #testRenderContentOnWithCommands!public!tests! !
!GenericContainerWebViewTest categoriesFor: #testWrappingApplying!public!tests! !

