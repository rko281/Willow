"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap4ToggablePillsBuilderTest
	instanceVariableNames: 'supplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4ToggablePillsBuilderTest guid: (GUID fromString: '{a102bd4a-6504-4196-b8b1-36be8286e2ed}')!
Bootstrap4ToggablePillsBuilderTest comment: ''!
!Bootstrap4ToggablePillsBuilderTest categoriesForClass!Willow-Bootstrap-4-Tests-WebViews! !
!Bootstrap4ToggablePillsBuilderTest methodsFor!

setUp	super setUp.	supplier := Bootstrap4ComponentSupplier online!

testCantBuildWithLessThanTwoPanes	self		should: [ supplier pillsBuilder buildApplying: [ :pills |  ] ] raise: AssertionFailed;		should: [ supplier pillsBuilder				addPillHeadedBy: 'Home' containing: 'The home page';				buildApplying: [ :pills |  ] ]			raise: AssertionFailed!

testRenderContentOn	| tabs html |	tabs := supplier pillsBuilder		addPillHeadedBy: 'Home' containing: 'The home page';		addPillHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];		buildApplying: [ :pills |  ].	html := self render: tabs.	self		assert: html		equals:			 '<ul class="nav nav-pills" role="tablist"><li class="nav-item" role="presentation"><a class="nav-link active" role="tab" data-toggle="pill" aria-control="pill-id1" href="#pill-id1">Home</a></li><li class="nav-item" role="presentation"><a class="nav-link" role="tab" data-toggle="pill" aria-control="pill-id2" href="#pill-id2">Profile</a></li></ul><div class="tab-content"><div id="pill-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="pill-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'!

testRenderContentOnWithCommands	| tabs html |	tabs := supplier pillsBuilder		addPillHeadedBy: 'Home' containing: 'The home page';		addPillHeadedBy: 'Profile' containing: [ :canvas | canvas strong: 'This is my profile.' ];		buildApplying: [ :pills | pills addClass bootstrap4 justifyContentEnd ].	html := self render: tabs.	self		assert: html		equals:			'<ul class="nav nav-pills justify-content-end" role="tablist"><li class="nav-item" role="presentation"><a class="nav-link active" role="tab" data-toggle="pill" aria-control="pill-id1" href="#pill-id1">Home</a></li><li class="nav-item" role="presentation"><a class="nav-link" role="tab" data-toggle="pill" aria-control="pill-id2" href="#pill-id2">Profile</a></li></ul><div class="tab-content"><div id="pill-id1" role="tabpanel" class="tab-pane active">The home page</div><div id="pill-id2" role="tabpanel" class="tab-pane"><strong>This is my profile.</strong></div></div>'! !
!Bootstrap4ToggablePillsBuilderTest categoriesFor: #setUp!initialization!public! !
!Bootstrap4ToggablePillsBuilderTest categoriesFor: #testCantBuildWithLessThanTwoPanes!public!tests! !
!Bootstrap4ToggablePillsBuilderTest categoriesFor: #testRenderContentOn!public!tests! !
!Bootstrap4ToggablePillsBuilderTest categoriesFor: #testRenderContentOnWithCommands!public!tests! !

