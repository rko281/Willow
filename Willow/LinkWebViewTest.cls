"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #LinkWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
LinkWebViewTest guid: (GUID fromString: '{5a4fd2f1-574f-48bc-86ec-2f6493209e6a}')!
LinkWebViewTest comment: 'An AsynchronicLinkWebViewTest is a test class for testing the behavior of AsynchronicLinkWebView'!
!LinkWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!LinkWebViewTest methodsFor!

testAsynchronicLabeledApplying	| html link |	link := LinkWebView		asynchronicLabeled: 'Click me!!'		applying: [ :view | view addClass willow ].	html := self render: link.	self		assert: html		equals:			'<a id="a-id1" class="willow">Click me!!</a><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});</script>'!

testOnTrigger	| html link |	link := LinkWebView synchronicLabeled: 'Click me!!' applying: [  ].	link onTrigger disable.	html := self render: link.	self		assert: html		equals:			'<a id="a-id1">Click me!!</a><script type="text/javascript">$("#a-id1").click(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOn	| html link |	link := LinkWebView synchronicLabeled: 'Click me!!' applying: [  ].	html := self render: link.	self assert: html equals: '<a>Click me!!</a>'!

testSynchronicLabeledApplying	| html link |	link := LinkWebView		synchronicLabeled: 'Click me!!'		applying: [ :view | view addClass willow ].	html := self render: link.	self assert: html equals: '<a class="willow">Click me!!</a>'! !
!LinkWebViewTest categoriesFor: #testAsynchronicLabeledApplying!public!tests/rendering! !
!LinkWebViewTest categoriesFor: #testOnTrigger!public!tests/rendering! !
!LinkWebViewTest categoriesFor: #testRenderContentOn!public!tests/rendering! !
!LinkWebViewTest categoriesFor: #testSynchronicLabeledApplying!public!tests/rendering! !

