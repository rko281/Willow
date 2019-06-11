"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapToggablePillsBuilderTest
	instanceVariableNames: 'supplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapToggablePillsBuilderTest guid: (GUID fromString: '{f4c8816e-5d4d-4472-be0f-eee1f5be2d20}')!
BootstrapToggablePillsBuilderTest comment: 'A BootstrapToggablePillsBuilderTest is a test class for testing the behavior of BootstrapToggablePillsBuilder'!
!BootstrapToggablePillsBuilderTest categoriesForClass!Willow-Bootstrap-Tests-WebViews! !
!BootstrapToggablePillsBuilderTest methodsFor!

setUp	super setUp.	supplier := BootstrapComponentSupplier online!

testCantBuildWithLessThanTwoPanes	self		should: [ supplier pillsBuilder buildApplying: [ :pills |  ] ] raise: AssertionFailed;		should: [ supplier pillsBuilder				addPillHeadedBy: 'Home' containing: 'The home page';				buildApplying: [ :pills |  ] ]			raise: AssertionFailed!

testRenderContentOn	| tabs html |	tabs := supplier pillsBuilder		addPillHeadedBy: 'Home' containing: 'The home page';		addPillHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];		buildApplying: [ :pills |  ].	html := self render: tabs.	self		assert: html		equals:			'<ul class="nav nav-pills" role="tablist"><li class="active" role="presentation"><a role="tab" data-toggle="pill" aria-control="pill-id1" href="#pill-id1">Home</a></li><li role="presentation"><a role="tab" data-toggle="pill" aria-control="pill-id2" href="#pill-id2">Profile</a></li></ul><div class="tab-content"><div id="pill-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="pill-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'!

testRenderContentOnWithCommands	| tabs html |	tabs := supplier pillsBuilder		addPillHeadedBy: 'Home' containing: 'The home page';		addPillHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];		buildApplying: [ :pills | pills addClass bootstrap navStacked ].	html := self render: tabs.	self		assert: html		equals:			'<ul class="nav nav-pills nav-stacked" role="tablist"><li class="active" role="presentation"><a role="tab" data-toggle="pill" aria-control="pill-id1" href="#pill-id1">Home</a></li><li role="presentation"><a role="tab" data-toggle="pill" aria-control="pill-id2" href="#pill-id2">Profile</a></li></ul><div class="tab-content"><div id="pill-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="pill-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'! !
!BootstrapToggablePillsBuilderTest categoriesFor: #setUp!initialization!public! !
!BootstrapToggablePillsBuilderTest categoriesFor: #testCantBuildWithLessThanTwoPanes!public!tests! !
!BootstrapToggablePillsBuilderTest categoriesFor: #testRenderContentOn!public!tests! !
!BootstrapToggablePillsBuilderTest categoriesFor: #testRenderContentOnWithCommands!public!tests! !

