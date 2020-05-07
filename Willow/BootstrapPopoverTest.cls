"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapPopoverTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapPopoverTest guid: (GUID fromString: '{42b2a1e0-faca-47bc-84be-be915c36bbef}')!
BootstrapPopoverTest comment: 'A BootstrapPopoverTest is a test class for testing the behavior of BootstrapPopover'!
!BootstrapPopoverTest categoriesForClass!Willow-Bootstrap-Tests-Plugins! !
!BootstrapPopoverTest methodsFor!

renderPopoverContentApplying: aBlock	^ self		renderUsing: [ :canvas | 			| div popover |			div := canvas div.			popover := canvas jQuery new bootstrapPopover.			aBlock value: popover.			div script: popover ]!

testAnimation	| html |	html := self renderPopoverContentApplying: [ :popover | popover animation: true ].	self		assert: html		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"animation":true});</script>'!

testContainer	| html |	html := self renderPopoverContentApplying: [ :popover | popover container: 'body' ].	self		assert: html		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"container":"body"});</script>'!

testContent	| html |	html := self renderPopoverContentApplying: [ :popover | popover content: 'Message' ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"content":"Message"});</script>'!

testDelay	| html |	html := self renderPopoverContentApplying: [ :popover | popover delay: 100 ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"delay":100});</script>'.	html := self renderPopoverContentApplying: [ :popover | popover delay: (BootstrapDelayConfiguration new show: 200 hide: 100) ].	self		assert: html		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"delay":{"show":200,"hide":100}});</script>'!

testHide	| html |	html := self renderPopoverContentApplying: [ :popover | popover hide ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover("hide");</script>'!

testHtml	| html |	html := self renderPopoverContentApplying: [ :popover | popover html: true ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"html":true});</script>'!

testHtmlContent	| html |	html := self		renderPopoverContentApplying: [ :popover | 			popover				htmlContent:					( GenericContainerWebView						wrapping: 'A more complex rendering'						applying: [ :container | container addClass bootstrapCommon container ] )			].	self		assert: html		equals:			'<div id="id1"></div><script type="text/javascript">$("#id1").popover({"html":true,"content":"<div class=\"container\">A more complex rendering</div>"});</script>'!

testHtmlTitle	| html |	html := self		renderPopoverContentApplying: [ :popover | 			popover				htmlTitle:					( GenericContainerWebView						wrapping: 'A complex title'						applying: [ :container | container addClass bootstrapCommon container ] )			].	self		assert: html		equals:			'<div id="id1"></div><script type="text/javascript">$("#id1").popover({"html":true,"title":"<div class=\"container\">A complex title</div>"});</script>'!

testOnHidden	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHiddenPopover: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hidden.bs.popover",function(){});</script>'!

testOnHide	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHidePopover: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hide.bs.popover",function(){});</script>'!

testOnInserted	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onInsertedPopover: JSFunction new) ].	self		assert: html		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("inserted.bs.popover",function(){});</script>'!

testOnShow	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShowPopover: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("show.bs.popover",function(){});</script>'!

testOnShown	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShownPopover: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("shown.bs.popover",function(){});</script>'!

testPlacement	| html |	html := self renderPopoverContentApplying: [ :popover | popover placement: #left ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"placement":"left"});</script>'!

testPlacementWithFunction	| html |	html := self renderPopoverContentApplying: [ :popover | popover placement: JSFunction new ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"placement":function(){}});</script>'!

testSanitize	| html |	html := self renderPopoverContentApplying: [ :popover | popover sanitize: true ].	self		assert: html		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"sanitize":true});</script>'!

testSanitizeFunction	| html |	html := self renderPopoverContentApplying: [ :popover | popover sanitizeFunction: JSFunction new ].	self		assert: html		equals:			'<div id="id1"></div><script type="text/javascript">$("#id1").popover({"sanitizeFn":function(){}});</script>'!

testSelector	| html |	html := self renderPopoverContentApplying: [ :popover | popover selector: '.has-popover' ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"selector":".has-popover"});</script>'!

testShow	| html |	html := self renderPopoverContentApplying: [ :popover | popover show ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover("show");</script>'!

testTitle	| html |	html := self renderPopoverContentApplying: [ :popover | popover title: 'Popover' ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"title":"Popover"});</script>'!

testToggle	| html |	html := self renderPopoverContentApplying: [ :popover | popover toggle ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover("toggle");</script>'!

testTrigger	| html |	html := self renderPopoverContentApplying: [ :popover | popover trigger: #manual ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"trigger":"manual"});</script>'!

testWhiteList	| html |	html := self		renderPopoverContentApplying: [ :popover | 			popover				whiteList:					{( 'a' -> #() ).					( 'img' -> #('src' 'alt') )}			].	self		assert: html		equals:			'<div id="id1"></div><script type="text/javascript">$("#id1").popover({"whiteList":{"a":[],"img":["src","alt"]}});</script>'! !
!BootstrapPopoverTest categoriesFor: #renderPopoverContentApplying:!public!rendering! !
!BootstrapPopoverTest categoriesFor: #testAnimation!public!tests/Options! !
!BootstrapPopoverTest categoriesFor: #testContainer!public!tests/Options! !
!BootstrapPopoverTest categoriesFor: #testContent!public!tests/Options! !
!BootstrapPopoverTest categoriesFor: #testDelay!public!tests/Options! !
!BootstrapPopoverTest categoriesFor: #testHide!public!tests/Methods! !
!BootstrapPopoverTest categoriesFor: #testHtml!public!tests/Options! !
!BootstrapPopoverTest categoriesFor: #testHtmlContent!public!tests/Options! !
!BootstrapPopoverTest categoriesFor: #testHtmlTitle!public!tests/Options! !
!BootstrapPopoverTest categoriesFor: #testOnHidden!public!tests/Events! !
!BootstrapPopoverTest categoriesFor: #testOnHide!public!tests/Events! !
!BootstrapPopoverTest categoriesFor: #testOnInserted!public!tests/Events! !
!BootstrapPopoverTest categoriesFor: #testOnShow!public!tests/Events! !
!BootstrapPopoverTest categoriesFor: #testOnShown!public!tests/Events! !
!BootstrapPopoverTest categoriesFor: #testPlacement!public!tests/Options! !
!BootstrapPopoverTest categoriesFor: #testPlacementWithFunction!public!tests/Options! !
!BootstrapPopoverTest categoriesFor: #testSanitize!public!tests/Options! !
!BootstrapPopoverTest categoriesFor: #testSanitizeFunction!public!tests/Options! !
!BootstrapPopoverTest categoriesFor: #testSelector!public!tests/Options! !
!BootstrapPopoverTest categoriesFor: #testShow!public!tests/Methods! !
!BootstrapPopoverTest categoriesFor: #testTitle!public!tests/Options! !
!BootstrapPopoverTest categoriesFor: #testToggle!public!tests/Methods! !
!BootstrapPopoverTest categoriesFor: #testTrigger!public!tests/Options! !
!BootstrapPopoverTest categoriesFor: #testWhiteList!public!tests/Options! !

