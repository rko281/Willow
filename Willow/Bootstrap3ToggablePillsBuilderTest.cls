﻿"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap3ToggablePillsBuilderTest
	instanceVariableNames: 'supplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3ToggablePillsBuilderTest guid: (GUID fromString: '{7e2f3acb-b7d3-44f3-a414-284451dcea00}')!
Bootstrap3ToggablePillsBuilderTest comment: 'A BootstrapToggablePillsBuilderTest is a test class for testing the behavior of BootstrapToggablePillsBuilder'!
!Bootstrap3ToggablePillsBuilderTest categoriesForClass!Willow-Bootstrap-3-Tests-WebViews! !
!Bootstrap3ToggablePillsBuilderTest methodsFor!

setUp	super setUp.	supplier := Bootstrap3ComponentSupplier online!

testCantBuildWithLessThanTwoPanes	self		should: [ supplier pillsBuilder buildApplying: [ :pills |  ] ] raise: AssertionFailed;		should: [ supplier pillsBuilder				addPillHeadedBy: 'Home' containing: 'The home page';				buildApplying: [ :pills |  ] ]			raise: AssertionFailed!

testRenderContentOn	| tabs html |	tabs := supplier pillsBuilder		addPillHeadedBy: 'Home' containing: 'The home page';		addPillHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];		buildApplying: [ :pills |  ].	html := self render: tabs.	self		assert: html		equals:			'<ul class="nav nav-pills" role="tablist"><li class="active" role="presentation"><a role="tab" data-toggle="pill" aria-control="pill-id1" href="#pill-id1">Home</a></li><li role="presentation"><a role="tab" data-toggle="pill" aria-control="pill-id2" href="#pill-id2">Profile</a></li></ul><div class="tab-content"><div id="pill-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="pill-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'!

testRenderContentOnWithCommands	| tabs html |	tabs := supplier pillsBuilder		addPillHeadedBy: 'Home' containing: 'The home page';		addPillHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];		buildApplying: [ :pills | pills addClass bootstrap3 navStacked ].	html := self render: tabs.	self		assert: html		equals:			'<ul class="nav nav-pills nav-stacked" role="tablist"><li class="active" role="presentation"><a role="tab" data-toggle="pill" aria-control="pill-id1" href="#pill-id1">Home</a></li><li role="presentation"><a role="tab" data-toggle="pill" aria-control="pill-id2" href="#pill-id2">Profile</a></li></ul><div class="tab-content"><div id="pill-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="pill-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'! !
!Bootstrap3ToggablePillsBuilderTest categoriesFor: #setUp!initialization!public! !
!Bootstrap3ToggablePillsBuilderTest categoriesFor: #testCantBuildWithLessThanTwoPanes!public!tests! !
!Bootstrap3ToggablePillsBuilderTest categoriesFor: #testRenderContentOn!public!tests! !
!Bootstrap3ToggablePillsBuilderTest categoriesFor: #testRenderContentOnWithCommands!public!tests! !

