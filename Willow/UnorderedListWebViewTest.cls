"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #UnorderedListWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UnorderedListWebViewTest guid: (GUID fromString: '{2f6cf857-3795-43ea-99e9-3d22b36b8de5}')!
UnorderedListWebViewTest comment: 'An UnorderedListWebViewTest is a test class for testing the behavior of UnorderedListWebView'!
!UnorderedListWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!UnorderedListWebViewTest methodsFor!

testIdentifyIn	| unorderedList html |	unorderedList := UnorderedListWebView applying: [ :list |  ] listing: #('spoon' 'fork') applyingToEach: [ :listItem |  ].	html := self		renderUsing: [ :canvas | 			unorderedList identifyIn: canvas.			canvas render: unorderedList ].	self		assert: html equals: '<ul id="unordered-list-id1"><li>spoon</li><li>fork</li></ul>';		assert: unorderedList identifier equals: 'unordered-list-id1'!

testOnTrigger	| unorderedList html |	unorderedList := UnorderedListWebView applying: [ :list |  ] listing: #('spoon' 'fork') applyingToEach: [ :listItem |  ].	unorderedList onTrigger disable.	html := self render: unorderedList.	self assert: html equals: '<ul id="ul-id1"><li>spoon</li><li>fork</li></ul><script type="text/javascript">$("#ul-id1").click(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOn	| unorderedList html |	unorderedList := UnorderedListWebView applying: [ :list |  ] listing: #('spoon' 'fork') applyingToEach: [ :listItem |  ].	html := self render: unorderedList.	self assert: html equals: '<ul><li>spoon</li><li>fork</li></ul>'!

testRenderContentOnWithCommands	| unorderedList html |	unorderedList := UnorderedListWebView applying: [ :list | list addClass willow ] listing: #('spoon' 'fork') applyingToEach: [ :listItem | listItem addClass loading ].	html := self render: unorderedList.	self assert: html equals: '<ul class="willow"><li class="willow-loading">spoon</li><li class="willow-loading">fork</li></ul>'! !
!UnorderedListWebViewTest categoriesFor: #testIdentifyIn!public!tests/rendering! !
!UnorderedListWebViewTest categoriesFor: #testOnTrigger!public!tests/rendering! !
!UnorderedListWebViewTest categoriesFor: #testRenderContentOn!public!tests/rendering! !
!UnorderedListWebViewTest categoriesFor: #testRenderContentOnWithCommands!public!tests/rendering! !

