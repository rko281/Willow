"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap4ToggableTabsBuilderTest
	instanceVariableNames: 'supplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4ToggableTabsBuilderTest guid: (GUID fromString: '{42caf561-26c8-4cb1-8dc8-a42ff749d6e8}')!
Bootstrap4ToggableTabsBuilderTest comment: ''!
!Bootstrap4ToggableTabsBuilderTest categoriesForClass!Willow-Bootstrap-4-Tests-WebViews! !
!Bootstrap4ToggableTabsBuilderTest methodsFor!

setUp	super setUp.	supplier := Bootstrap4ComponentSupplier online!

testCantBuildWithLessThanTwoPanes	self		should: [ supplier tabsBuilder buildApplying: [ :tabs |  ] ] raise: AssertionFailed;		should: [ supplier tabsBuilder				addTabHeadedBy: 'Home' containing: 'The home page';				buildApplying: [ :tabs |  ] ]			raise: AssertionFailed!

testRenderContentOn	| tabs html |	tabs := supplier tabsBuilder		addTabHeadedBy: 'Home' containing: 'The home page';		addTabHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];		buildApplying: [ :container |  ].	html := self render: tabs.	self		assert: html		equals:			'<ul class="nav nav-tabs" role="tablist"><li class="nav-item" role="presentation"><a class="nav-link active" role="tab" data-toggle="tab" aria-control="tab-id1" href="#tab-id1">Home</a></li><li class="nav-item" role="presentation"><a class="nav-link" role="tab" data-toggle="tab" aria-control="tab-id2" href="#tab-id2">Profile</a></li></ul><div class="tab-content"><div id="tab-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="tab-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'!

testRenderContentOnWithCommands	| tabs html |	tabs := supplier tabsBuilder		addTabHeadedBy: 'Home' containing: 'The home page';		addTabHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];		buildApplying: [ :container | container addClass bootstrap4 justifyContentEnd ].	html := self render: tabs.	self		assert: html		equals:			'<ul class="nav nav-tabs justify-content-end" role="tablist"><li class="nav-item" role="presentation"><a class="nav-link active" role="tab" data-toggle="tab" aria-control="tab-id1" href="#tab-id1">Home</a></li><li class="nav-item" role="presentation"><a class="nav-link" role="tab" data-toggle="tab" aria-control="tab-id2" href="#tab-id2">Profile</a></li></ul><div class="tab-content"><div id="tab-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="tab-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'! !
!Bootstrap4ToggableTabsBuilderTest categoriesFor: #setUp!initialization!public! !
!Bootstrap4ToggableTabsBuilderTest categoriesFor: #testCantBuildWithLessThanTwoPanes!public!tests! !
!Bootstrap4ToggableTabsBuilderTest categoriesFor: #testRenderContentOn!public!tests! !
!Bootstrap4ToggableTabsBuilderTest categoriesFor: #testRenderContentOnWithCommands!public!tests! !

