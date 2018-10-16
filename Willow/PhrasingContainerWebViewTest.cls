"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #PhrasingContainerWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PhrasingContainerWebViewTest guid: (GUID fromString: '{6b5f5686-6943-4ee2-b9cd-2cfc7f03bd64}')!
PhrasingContainerWebViewTest comment: 'A PhrasingContainerWebViewTest is a test class for testing the behavior of PhrasingContainerWebView'!
!PhrasingContainerWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!PhrasingContainerWebViewTest methodsFor!

testOnTrigger	| container html |	container := PhrasingContainerWebView obtainingContentFrom: [ 'Hi!!' ] applying: [ :span | span addClass willow ].	container onTrigger disable.	html := self render: container.	self assert: html equals: '<span id="span-id1" class="willow">Hi!!</span><script type="text/javascript">$("#span-id1").click(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOn	| container html |	container := PhrasingContainerWebView obtainingContentFrom: [ 'Hi!!' ].	html := self render: container.	self assert: html equals: '<span>Hi!!</span>'!

testRenderContentOnWithCommands	| container html |	container := PhrasingContainerWebView obtainingContentFrom: [ 'Hi!!' ] applying: [ :span | span addClass willow ].	html := self render: container.	self assert: html equals: '<span class="willow">Hi!!</span>'! !
!PhrasingContainerWebViewTest categoriesFor: #testOnTrigger!public!tests/rendering! !
!PhrasingContainerWebViewTest categoriesFor: #testRenderContentOn!public!tests/rendering! !
!PhrasingContainerWebViewTest categoriesFor: #testRenderContentOnWithCommands!public!tests/rendering! !

