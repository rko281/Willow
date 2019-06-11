"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapIconWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapIconWebViewTest guid: (GUID fromString: '{6033f60f-0fa6-4e73-b2f4-ea0e4fc9e1a5}')!
BootstrapIconWebViewTest comment: 'A BootstrapIconTest is a test class for testing the behavior of BootstrapIconWebView'!
!BootstrapIconWebViewTest categoriesForClass!Willow-Bootstrap-Tests-WebViews! !
!BootstrapIconWebViewTest methodsFor!

testRenderContentOn	| icon html |	icon := BootstrapIconWebView representing: Glyphicons menuUp.	html := self render: icon.	self assert: html equals: '<span class="glyphicon glyphicon-menu-up"></span>'!

testRepresentingApplying	| icon html |	icon := BootstrapIconWebView representing: Glyphicons menuUp applying: [ :span :constants | span setData: constants >> #bootstrap >> #dismiss to: true ].	html := self render: icon.	self assert: html equals: '<span class="glyphicon glyphicon-menu-up" data-dismiss></span>'! !
!BootstrapIconWebViewTest categoriesFor: #testRenderContentOn!public!tests! !
!BootstrapIconWebViewTest categoriesFor: #testRepresentingApplying!public!tests! !

