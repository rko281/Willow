"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapTooltipTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapTooltipTest guid: (GUID fromString: '{774b65f1-ce30-4b05-97fc-346bb13009b3}')!
BootstrapTooltipTest comment: 'A BootstrapTooltipTest is a test class for testing the behavior of BootstrapTooltip'!
!BootstrapTooltipTest categoriesForClass!Willow-Bootstrap-Tests-Plugins! !
!BootstrapTooltipTest methodsFor!

renderTooltipContentApplying: aBlock	^ self		renderUsing: [ :canvas | 			| div tooltip |			div := canvas div.			tooltip := canvas jQuery new bootstrapTooltip.			aBlock value: tooltip.			div script: tooltip ]!

testAnimation	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip animation: true ].	self		assert: html		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"animation":true});</script>'!

testContainer	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip container: 'body' ].	self		assert: html		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"container":"body"});</script>'!

testDelay	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip delay: 100 ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"delay":100});</script>'.	html := self renderTooltipContentApplying: [ :tooltip | tooltip delay: (BootstrapDelayConfiguration new show: 200 hide: 100) ].	self		assert: html		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"delay":{"show":200,"hide":100}});</script>'!

testDestroy	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip destroy ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("destroy");</script>'!

testHide	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip hide ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("hide");</script>'!

testHtml	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip html: true ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"html":true});</script>'!

testHtmlTitle	| html |	html := self		renderTooltipContentApplying: [ :tooltip | 			tooltip				htmlTitle:					( GenericContainerWebView						wrapping: 'A complex tooltip'						applying: [ :container | container addClass bootstrapCommon container ] )			].	self		assert: html		equals:			'<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"html":true,"title":"<div class=\"container\">A complex tooltip</div>"});</script>'!

testOnHidden	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHiddenTooltip: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hidden.bs.tooltip",function(){});</script>'!

testOnHide	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHideTooltip: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hide.bs.tooltip",function(){});</script>'!

testOnInserted	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onInsertedTooltip: JSFunction new) ].	self		assert: html		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("inserted.bs.tooltip",function(){});</script>'!

testOnShow	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShowTooltip: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("show.bs.tooltip",function(){});</script>'!

testOnShown	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShownTooltip: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("shown.bs.tooltip",function(){});</script>'!

testPlacement	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip placement: #left ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"placement":"left"});</script>'!

testPlacementWithFunction	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip placement: JSFunction new ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"placement":function(){}});</script>'!

testSanitize	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip sanitize: true ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"sanitize":true});</script>'!

testSanitizeFunction	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip sanitizeFunction: JSFunction new ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"sanitizeFn":function(){}});</script>'!

testSelector	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip selector: '.has-popover' ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"selector":".has-popover"});</script>'!

testShow	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip show ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("show");</script>'!

testTitle	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip title: 'Tooltip' ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"title":"Tooltip"});</script>'!

testToggle	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip toggle ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("toggle");</script>'!

testTrigger	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip trigger: #manual ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"trigger":"manual"});</script>'!

testWhiteList	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip 	whiteList:					{( 'a' -> #() ).					( 'img' -> #('src' 'alt') )} ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"whiteList":{"a":[],"img":["src","alt"]}});</script>'! !
!BootstrapTooltipTest categoriesFor: #renderTooltipContentApplying:!public!rendering! !
!BootstrapTooltipTest categoriesFor: #testAnimation!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testContainer!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testDelay!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testDestroy!public!tests/Methods! !
!BootstrapTooltipTest categoriesFor: #testHide!public!tests/Methods! !
!BootstrapTooltipTest categoriesFor: #testHtml!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testHtmlTitle!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testOnHidden!public!tests/Events! !
!BootstrapTooltipTest categoriesFor: #testOnHide!public!tests/Events! !
!BootstrapTooltipTest categoriesFor: #testOnInserted!public!tests/Events! !
!BootstrapTooltipTest categoriesFor: #testOnShow!public!tests/Events! !
!BootstrapTooltipTest categoriesFor: #testOnShown!public!tests/Events! !
!BootstrapTooltipTest categoriesFor: #testPlacement!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testPlacementWithFunction!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testSanitize!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testSanitizeFunction!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testSelector!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testShow!public!tests/Methods! !
!BootstrapTooltipTest categoriesFor: #testTitle!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testToggle!public!tests/Methods! !
!BootstrapTooltipTest categoriesFor: #testTrigger!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testWhiteList!public!tests/Options! !

