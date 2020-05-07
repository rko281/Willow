"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap3IconWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3IconWebViewTest guid: (GUID fromString: '{e76fad01-fc9f-4f72-af0e-4f72dbe89aa7}')!
Bootstrap3IconWebViewTest comment: 'A BootstrapIconTest is a test class for testing the behavior of BootstrapIconWebView'!
!Bootstrap3IconWebViewTest categoriesForClass!Willow-Bootstrap-3-Tests-WebViews! !
!Bootstrap3IconWebViewTest methodsFor!

testRenderContentOn	| icon html |	icon := Bootstrap3IconWebView representing: Glyphicons menuUp.	html := self render: icon.	self assert: html equals: '<span class="glyphicon glyphicon-menu-up"></span>'!

testRepresentingApplying	| icon html |	icon := Bootstrap3IconWebView representing: Glyphicons menuUp applying: [ :span :constants | span setData: constants >> #bootstrap >> #dismiss to: true ].	html := self render: icon.	self assert: html equals: '<span class="glyphicon glyphicon-menu-up" data-dismiss></span>'! !
!Bootstrap3IconWebViewTest categoriesFor: #testRenderContentOn!public!tests! !
!Bootstrap3IconWebViewTest categoriesFor: #testRepresentingApplying!public!tests! !

