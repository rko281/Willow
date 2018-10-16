"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #BootstrapSelectLiveSearchCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSelectLiveSearchCommandTest guid: (GUID fromString: '{2b73abbf-6af1-4402-b0bc-c883d49dce5c}')!
BootstrapSelectLiveSearchCommandTest comment: 'A BootstrapSelectLiveSearchCommandTest is a test class for testing the behavior of BootstrapSelectLiveSearchCommand'!
!BootstrapSelectLiveSearchCommandTest categoriesForClass!Willow-Bootstrap-Tests-Frontend! !
!BootstrapSelectLiveSearchCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: BootstrapSelectLiveSearchCommand default + BootstrapSelectCommand new toComponentDefinedBy: [ :canvas | canvas select ].	self		assert: html		equals:			'<select data-live-search="true" data-live-search-normalize="false" data-live-search-style="contains" class="selectpicker" id="id1"></select><script type="text/javascript">$("#id1").selectpicker("render");</script>'!

testNonDefaultApplyToOn	| html |	html := self		apply:			[ :select :constants | 			(BootstrapSelectLiveSearchCommand normalize: true placeholderText: 'Search...' style: constants >> #bootstrap >> #startsWith) + BootstrapSelectCommand new ]				asWebComponentCommand		toComponentDefinedBy: [ :canvas | canvas select ].	self		assert: html		equals:			'<select data-live-search="true" data-live-search-normalize="true" data-live-search-placeholder="Search..." data-live-search-style="startsWith" class="selectpicker" id="id1"></select><script type="text/javascript">$("#id1").selectpicker("render");</script>'! !
!BootstrapSelectLiveSearchCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !
!BootstrapSelectLiveSearchCommandTest categoriesFor: #testNonDefaultApplyToOn!public!tests/processing! !

