"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #HeadingWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HeadingWebViewTest guid: (GUID fromString: '{f41c88d4-0e6a-476f-a8f8-0108df7423e0}')!
HeadingWebViewTest comment: ''!
!HeadingWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!HeadingWebViewTest methodsFor!

testRenderContentOn	| container html |	container := HeadingWebView displaying: 'Header' withLevel: 2.	html := self render: container.	self assert: html equals: '<h2>Header</h2>'!

testRenderContentOnWithCommands	| container html |	container := HeadingWebView displaying: 'Header' withLevel: 2 applying: [ :heading | heading addClass willow ].	html := self render: container.	self assert: html equals: '<h2 class="willow">Header</h2>'! !
!HeadingWebViewTest categoriesFor: #testRenderContentOn!public!tests! !
!HeadingWebViewTest categoriesFor: #testRenderContentOnWithCommands!public!tests! !

