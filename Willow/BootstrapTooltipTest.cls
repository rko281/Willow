"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #BootstrapTooltipTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapTooltipTest guid: (GUID fromString: '{9c91eba0-56bb-4b2c-b2f0-504e8029874c}')!
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

testOnHidden	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHiddenTooltip: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hidden.bs.tooltip",function(){});</script>'!

testOnHide	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHideTooltip: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hide.bs.tooltip",function(){});</script>'!

testOnInserted	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onInsertedTooltip: JSFunction new) ].	self		assert: html		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("inserted.bs.tooltip",function(){});</script>'!

testOnShow	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShowTooltip: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("show.bs.tooltip",function(){});</script>'!

testOnShown	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShownTooltip: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("shown.bs.tooltip",function(){});</script>'!

testPlacement	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip placement: #left ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"placement":"left"});</script>'!

testPlacementWithFunction	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip placement: JSFunction new ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"placement":function(){}});</script>'!

testSelector	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip selector: '.has-popover' ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"selector":".has-popover"});</script>'!

testShow	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip show ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("show");</script>'!

testTemplate	| html |	html := self		renderUsing: [ :canvas | 			| div tooltip |			div := canvas div.			tooltip := canvas jQuery new bootstrapTooltip.			tooltip				template: [ :template | 					template div						with: [ template div apply: [ :container | container addClass bootstrap tooltipArrow ].							template div with: (BootstrapIconWebView representing: Glyphicons menuUp) applying: [ :container | container addClass bootstrap tooltipInner ] ]						applying: [ :container :constants | container addClass bootstrap tooltip + (container setARIARoleTo: #tooltip) ] ].			div script: tooltip ].	self		assert: html		equals:			'<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"template":"<div class=\"tooltip\" role=\"tooltip\"><div class=\"tooltip-arrow\"></div><div class=\"tooltip-inner\"><span class=\"glyphicon glyphicon-menu-up\"></span></div></div>"});</script>'!

testTitle	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip title: 'Tooltip' ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"title":"Tooltip"});</script>'!

testToggle	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip toggle ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("toggle");</script>'!

testTrigger	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip trigger: #manual ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"trigger":"manual"});</script>'!

testViewport	| html |	html := self renderTooltipContentApplying: [ :tooltip | tooltip viewport: '#id1' ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"viewport":"#id1"});</script>'!

testViewportWithPadding	| html |	html := self		renderTooltipContentApplying: [ :tooltip | tooltip viewport: (BootstrapViewportConfiguration new selector: '#id1' padding: 5) ].	self		assert: html		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"viewport":{"selector":"#id1","padding":5}});</script>'! !
!BootstrapTooltipTest categoriesFor: #renderTooltipContentApplying:!public!rendering! !
!BootstrapTooltipTest categoriesFor: #testAnimation!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testContainer!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testDelay!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testDestroy!public!tests/Methods! !
!BootstrapTooltipTest categoriesFor: #testHide!public!tests/Methods! !
!BootstrapTooltipTest categoriesFor: #testHtml!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testOnHidden!public!tests/Events! !
!BootstrapTooltipTest categoriesFor: #testOnHide!public!tests/Events! !
!BootstrapTooltipTest categoriesFor: #testOnInserted!public!tests/Events! !
!BootstrapTooltipTest categoriesFor: #testOnShow!public!tests/Events! !
!BootstrapTooltipTest categoriesFor: #testOnShown!public!tests/Events! !
!BootstrapTooltipTest categoriesFor: #testPlacement!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testPlacementWithFunction!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testSelector!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testShow!public!tests/Methods! !
!BootstrapTooltipTest categoriesFor: #testTemplate!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testTitle!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testToggle!public!tests/Methods! !
!BootstrapTooltipTest categoriesFor: #testTrigger!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testViewport!public!tests/Options! !
!BootstrapTooltipTest categoriesFor: #testViewportWithPadding!public!tests/Options! !

