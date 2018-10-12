"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #IdentifiedWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
IdentifiedWebViewTest guid: (GUID fromString: '{caa5b9f9-cba0-4cf1-ab9a-d2d84def8c6d}')!
IdentifiedWebViewTest comment: 'An IdentifiedWebViewTest is a test class for testing the behavior of IdentifiedWebView'!
!IdentifiedWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!IdentifiedWebViewTest methodsFor!

testForFieldSetNamedContaining	| identifiedView html |	identifiedView := IdentifiedWebView forLabeledFieldNamed: 'main' containing: [ :canvas | canvas span: 'Hi' ].	html := self render: identifiedView.	self assert: html equals: '<fieldset class="willow" id="main-id1"><span>Hi</span></fieldset>'!

testForFormNamedContaining	| identifiedView html |	identifiedView := IdentifiedWebView forFormNamed: 'main' containing: [ :canvas | canvas div: 'Hi' ].	html := self render: identifiedView.	self assert: html equals:  '<form accept-charset="utf-8" method="post" action="/" onsubmit="return false;" id="main-id1"><div>Hi</div></form>'!

testForPhrasingContainerNamedContaining	| identifiedView html |	identifiedView := IdentifiedWebView forSpanNamed: 'main' containing: [ :canvas | canvas span: 'Hi' ].	html := self render: identifiedView.	self assert: html equals: '<span id="main-id1"><span>Hi</span></span>'!

testForRowNamedContaining	| identifiedView html |	identifiedView := IdentifiedWebView forRowNamed: 'main' containing: [ :canvas | canvas tableData: 'Hi' ].	html := self render: identifiedView.	self assert: html equals: '<tr id="main-id1"><td>Hi</td></tr>'!

testOnTrigger	| identifiedView html |	identifiedView := IdentifiedWebView forDivNamed: 'main' containing: (PhrasingContainerWebView wrapping: 'Text' applying: [ :container |  ]).	identifiedView onTrigger disable.	html := self render: identifiedView.	self assert: html equals: '<div id="main-id1"><span id="span-id2">Text</span></div><script type="text/javascript">$("#span-id2").click(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOn	| identifiedView html |	identifiedView := IdentifiedWebView forDivNamed: 'main' containing: [ :canvas | canvas span: 'Hi' ].	html := self render: identifiedView.	self		assert: html equals: '<div id="main-id1"><span>Hi</span></div>';		assert: identifiedView identifier equals: 'main-id1'.	html := self render: identifiedView view.	self assert: html equals: '<span>Hi</span>'!

testRenderContentOnWithScriptingCommand	| identifiedView html |	identifiedView := IdentifiedWebView		forDivNamed: 'main'		containing: ''		applying: [ :div | div addScript js: [ :canvas | canvas jQuery this ] ].	html := self render: identifiedView.	self		assert: html			equals: '<div id="main-id1"></div><script type="text/javascript">$("#main-id1");</script>';		assert: identifiedView identifier equals: 'main-id1'! !
!IdentifiedWebViewTest categoriesFor: #testForFieldSetNamedContaining!public!tests/rendering! !
!IdentifiedWebViewTest categoriesFor: #testForFormNamedContaining!public!tests/rendering! !
!IdentifiedWebViewTest categoriesFor: #testForPhrasingContainerNamedContaining!public!tests/rendering! !
!IdentifiedWebViewTest categoriesFor: #testForRowNamedContaining!public!tests/rendering! !
!IdentifiedWebViewTest categoriesFor: #testOnTrigger!public!tests/rendering! !
!IdentifiedWebViewTest categoriesFor: #testRenderContentOn!public!tests/rendering! !
!IdentifiedWebViewTest categoriesFor: #testRenderContentOnWithScriptingCommand!public!tests/rendering! !

