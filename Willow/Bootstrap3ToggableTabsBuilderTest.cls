"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap3ToggableTabsBuilderTest
	instanceVariableNames: 'supplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3ToggableTabsBuilderTest guid: (GUID fromString: '{97f744e6-483f-49a0-bacd-73545008a857}')!
Bootstrap3ToggableTabsBuilderTest comment: 'A BootstrapToggableTabsBuilderTest is a test class for testing the behavior of BootstrapToggableTabsBuilder'!
!Bootstrap3ToggableTabsBuilderTest categoriesForClass!Willow-Bootstrap-3-Tests-WebViews! !
!Bootstrap3ToggableTabsBuilderTest methodsFor!

setUp	super setUp.	supplier := Bootstrap3ComponentSupplier online!

testCantBuildWithLessThanTwoPanes	self		should: [ supplier tabsBuilder buildApplying: [ :tabs |  ] ] raise: AssertionFailed;		should: [ supplier tabsBuilder				addTabHeadedBy: 'Home' containing: 'The home page';				buildApplying: [ :tabs |  ] ]			raise: AssertionFailed!

testRenderContentOn	| tabs html |	tabs := supplier tabsBuilder		addTabHeadedBy: 'Home' containing: 'The home page';		addTabHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];		buildApplying: [ :container |  ].	html := self render: tabs.	self		assert: html		equals:			'<ul class="nav nav-tabs" role="tablist"><li class="active" role="presentation"><a role="tab" data-toggle="tab" aria-control="tab-id1" href="#tab-id1">Home</a></li><li role="presentation"><a role="tab" data-toggle="tab" aria-control="tab-id2" href="#tab-id2">Profile</a></li></ul><div class="tab-content"><div id="tab-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="tab-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'!

testRenderContentOnWithCommands	| tabs html |	tabs := supplier tabsBuilder		addTabHeadedBy: 'Home' containing: 'The home page';		addTabHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];		buildApplying: [ :container | container addClass bootstrap3 navStacked ].	html := self render: tabs.	self		assert: html		equals:			'<ul class="nav nav-tabs nav-stacked" role="tablist"><li class="active" role="presentation"><a role="tab" data-toggle="tab" aria-control="tab-id1" href="#tab-id1">Home</a></li><li role="presentation"><a role="tab" data-toggle="tab" aria-control="tab-id2" href="#tab-id2">Profile</a></li></ul><div class="tab-content"><div id="tab-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="tab-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'! !
!Bootstrap3ToggableTabsBuilderTest categoriesFor: #setUp!initialization!public! !
!Bootstrap3ToggableTabsBuilderTest categoriesFor: #testCantBuildWithLessThanTwoPanes!public!tests! !
!Bootstrap3ToggableTabsBuilderTest categoriesFor: #testRenderContentOn!public!tests! !
!Bootstrap3ToggableTabsBuilderTest categoriesFor: #testRenderContentOnWithCommands!public!tests! !

