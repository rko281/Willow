"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #BootstrapCollapseTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapCollapseTest guid: (GUID fromString: '{fbb5227c-2768-42bb-83eb-fe7cce683d7a}')!
BootstrapCollapseTest comment: 'A BootstrapCollapseTest is a test class for testing the behavior of BootstrapCollapse'!
!BootstrapCollapseTest categoriesForClass!Willow-Bootstrap-Tests-Plugins! !
!BootstrapCollapseTest methodsFor!

renderCollapsibleContentApplying: aBlock	^ self		renderUsing: [ :canvas | 			| div collapse |			div := canvas div.			collapse := canvas jQuery new bootstrapCollapse.			aBlock value: collapse.			div script: collapse ]!

testHide	| html |	html := self renderCollapsibleContentApplying: [ :collapse | collapse hide ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").collapse("hide");</script>'!

testOnHidden	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHiddenCollapse: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hidden.bs.collapse",function(){});</script>'!

testOnHide	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHideCollapse: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hide.bs.collapse",function(){});</script>'!

testOnShow	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShowCollapse: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("show.bs.collapse",function(){});</script>'!

testOnShown	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShownCollapse: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("shown.bs.collapse",function(){});</script>'!

testParent	| html |	html := self renderCollapsibleContentApplying: [ :collapse | collapse parent: false ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").collapse({"parent":false});</script>'!

testShow	| html |	html := self renderCollapsibleContentApplying: [ :collapse | collapse show ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").collapse("show");</script>'!

testToggle	| html |	html := self renderCollapsibleContentApplying: [ :collapse | collapse toggle: true ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").collapse({"toggle":true});</script>'!

testToggleMethod	| html |	html := self renderCollapsibleContentApplying: [ :collapse | collapse toggle ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").collapse("toggle");</script>'! !
!BootstrapCollapseTest categoriesFor: #renderCollapsibleContentApplying:!private! !
!BootstrapCollapseTest categoriesFor: #testHide!public!tests/Methods! !
!BootstrapCollapseTest categoriesFor: #testOnHidden!public!tests/Events! !
!BootstrapCollapseTest categoriesFor: #testOnHide!public!tests/Events! !
!BootstrapCollapseTest categoriesFor: #testOnShow!public!tests/Events! !
!BootstrapCollapseTest categoriesFor: #testOnShown!public!tests/Events! !
!BootstrapCollapseTest categoriesFor: #testParent!public!tests/Options! !
!BootstrapCollapseTest categoriesFor: #testShow!public!tests/Methods! !
!BootstrapCollapseTest categoriesFor: #testToggle!public!tests/Options! !
!BootstrapCollapseTest categoriesFor: #testToggleMethod!public!tests/Methods! !

