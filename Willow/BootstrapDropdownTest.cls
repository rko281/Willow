"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapDropdownTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDropdownTest guid: (GUID fromString: '{3c00c69a-b3de-436f-b19f-3dcfed41a844}')!
BootstrapDropdownTest comment: 'A BootstrapDropdownTest is a test class for testing the behavior of BootstrapDropdown'!
!BootstrapDropdownTest categoriesForClass!Willow-Bootstrap-Tests-Plugins! !
!BootstrapDropdownTest methodsFor!

renderDropdownContentApplying: aBlock	^ self		renderUsing: [ :canvas | 			canvas div				with: [ | dropdown |					dropdown := canvas jQuery new bootstrapDropdown.					aBlock value: dropdown.					canvas anchor						script: dropdown;						with: [ canvas render: 'Menu'.							canvas span apply: [ :span | span addClass bootstrap caret ] ]							applying: [ :anchor :constants | (anchor setData: constants >> #bootstrap >> #target to: constants >> #bootstrap >> #dropdown) + (anchor setARIARoleTo: #button) ].					canvas unorderedList						with: [ canvas								listItem: 'Menu option';								listItem: 'Other option' ]						applying: [ :list | list addClass bootstrap dropdownMenu ] ]				applying: [ :div | div addClass bootstrap dropdown ] ]!

testCallViaJavascript	| html |	html := self renderDropdownContentApplying: [ :dropdown |  ].	self		assert: html		equals:			'<div class="dropdown"><a id="id1" data-target="dropdown" role="button">Menu<span class="caret"></span></a><ul class="dropdown-menu"><li>Menu option</li><li>Other option</li></ul></div><script type="text/javascript">$("#id1").dropdown();</script>'!

testOnHidden	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHiddenDropdown: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hidden.bs.dropdown",function(){});</script>'!

testOnHide	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHideDropdown: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hide.bs.dropdown",function(){});</script>'!

testOnShow	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShowDropdown: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("show.bs.dropdown",function(){});</script>'!

testOnShown	| html |	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShownDropdown: JSFunction new) ].	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("shown.bs.dropdown",function(){});</script>'!

testToggle	| html |	html := self renderDropdownContentApplying: [ :dropdown | dropdown toggle ].	self		assert: html		equals:			'<div class="dropdown"><a id="id1" data-target="dropdown" role="button">Menu<span class="caret"></span></a><ul class="dropdown-menu"><li>Menu option</li><li>Other option</li></ul></div><script type="text/javascript">$("#id1").dropdown("toggle");</script>'! !
!BootstrapDropdownTest categoriesFor: #renderDropdownContentApplying:!public!rendering! !
!BootstrapDropdownTest categoriesFor: #testCallViaJavascript!public!tests! !
!BootstrapDropdownTest categoriesFor: #testOnHidden!public!tests! !
!BootstrapDropdownTest categoriesFor: #testOnHide!public!tests! !
!BootstrapDropdownTest categoriesFor: #testOnShow!public!tests! !
!BootstrapDropdownTest categoriesFor: #testOnShown!public!tests! !
!BootstrapDropdownTest categoriesFor: #testToggle!public!tests! !

