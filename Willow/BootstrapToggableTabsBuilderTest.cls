"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapToggableTabsBuilderTest
	instanceVariableNames: 'supplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapToggableTabsBuilderTest guid: (GUID fromString: '{702c84c2-e439-4df0-bb38-c089cdff66ad}')!
BootstrapToggableTabsBuilderTest comment: 'A BootstrapToggableTabsBuilderTest is a test class for testing the behavior of BootstrapToggableTabsBuilder'!
!BootstrapToggableTabsBuilderTest categoriesForClass!Willow-Bootstrap-Tests-WebViews! !
!BootstrapToggableTabsBuilderTest methodsFor!

setUp	super setUp.	supplier := BootstrapComponentSupplier online!

testCantBuildWithLessThanTwoPanes	self		should: [ supplier tabsBuilder buildApplying: [ :tabs |  ] ] raise: AssertionFailed;		should: [ supplier tabsBuilder				addTabHeadedBy: 'Home' containing: 'The home page';				buildApplying: [ :tabs |  ] ]			raise: AssertionFailed!

testRenderContentOn	| tabs html |	tabs := supplier tabsBuilder		addTabHeadedBy: 'Home' containing: 'The home page';		addTabHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];		buildApplying: [ :container |  ].	html := self render: tabs.	self		assert: html		equals:			'<ul class="nav nav-tabs" role="tablist"><li class="active" role="presentation"><a role="tab" data-toggle="tab" aria-control="tab-id1" href="#tab-id1">Home</a></li><li role="presentation"><a role="tab" data-toggle="tab" aria-control="tab-id2" href="#tab-id2">Profile</a></li></ul><div class="tab-content"><div id="tab-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="tab-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'!

testRenderContentOnWithCommands	| tabs html |	tabs := supplier tabsBuilder		addTabHeadedBy: 'Home' containing: 'The home page';		addTabHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];		buildApplying: [ :container | container addClass bootstrap navStacked ].	html := self render: tabs.	self		assert: html		equals:			'<ul class="nav nav-tabs nav-stacked" role="tablist"><li class="active" role="presentation"><a role="tab" data-toggle="tab" aria-control="tab-id1" href="#tab-id1">Home</a></li><li role="presentation"><a role="tab" data-toggle="tab" aria-control="tab-id2" href="#tab-id2">Profile</a></li></ul><div class="tab-content"><div id="tab-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="tab-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'! !
!BootstrapToggableTabsBuilderTest categoriesFor: #setUp!initialization!public! !
!BootstrapToggableTabsBuilderTest categoriesFor: #testCantBuildWithLessThanTwoPanes!public!tests! !
!BootstrapToggableTabsBuilderTest categoriesFor: #testRenderContentOn!public!tests! !
!BootstrapToggableTabsBuilderTest categoriesFor: #testRenderContentOnWithCommands!public!tests! !

