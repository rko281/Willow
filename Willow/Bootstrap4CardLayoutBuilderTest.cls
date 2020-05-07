"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap4CardLayoutBuilderTest
	instanceVariableNames: 'supplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4CardLayoutBuilderTest guid: (GUID fromString: '{63f78985-ba65-40a9-ae3e-123c830a01cc}')!
Bootstrap4CardLayoutBuilderTest comment: 'A Bootstrap4CardLayoutBuilderTest is a test class for testing the behavior of Bootstrap4CardLayoutBuilder'!
!Bootstrap4CardLayoutBuilderTest categoriesForClass!Willow-Bootstrap-4-Tests-WebViews! !
!Bootstrap4CardLayoutBuilderTest methodsFor!

setUp	super setUp.	supplier := Bootstrap4ComponentSupplier online!

testRenderingColumns	| cardGroup html |	cardGroup := supplier cardLayoutBuilder		addCard: [ :cardBuilder | cardBuilder addText: 'Hello success!!' ]			applying: [ :card | card addClass bootstrap4 backgroundSuccess ];		addCard: [ :cardBuilder | cardBuilder addText: 'Hello!!' ];		useColumnLayout;		build.	html := self render: cardGroup.	self		assert: html		equals:			'<div class="card-columns"><div class="card bg-success"><div class="card-body"><p class="card-text">Hello success!!</p></div></div><div class="card"><div class="card-body"><p class="card-text">Hello!!</p></div></div></div>'!

testRenderingDeck	| cardGroup html |	cardGroup := supplier cardLayoutBuilder		addCard: [ :cardBuilder | cardBuilder addText: 'Hello success!!' ]			applying: [ :card | card addClass bootstrap4 backgroundSuccess ];		addCard: [ :cardBuilder | cardBuilder addText: 'Hello!!' ];		useDeckLayout;		build.	html := self render: cardGroup.	self		assert: html		equals:			'<div class="card-deck"><div class="card bg-success"><div class="card-body"><p class="card-text">Hello success!!</p></div></div><div class="card"><div class="card-body"><p class="card-text">Hello!!</p></div></div></div>'!

testRenderingGroup	| cardGroup html |	cardGroup := supplier cardLayoutBuilder		addCard: [ :cardBuilder | cardBuilder addText: 'Hello success!!' ]			applying: [ :card | card addClass bootstrap4 backgroundSuccess ];		addCard: [ :cardBuilder | cardBuilder addText: 'Hello!!' ];		useGroupLayout;		build.	html := self render: cardGroup.	self		assert: html		equals:			'<div class="card-group"><div class="card bg-success"><div class="card-body"><p class="card-text">Hello success!!</p></div></div><div class="card"><div class="card-body"><p class="card-text">Hello!!</p></div></div></div>'! !
!Bootstrap4CardLayoutBuilderTest categoriesFor: #setUp!public!running! !
!Bootstrap4CardLayoutBuilderTest categoriesFor: #testRenderingColumns!public!tests! !
!Bootstrap4CardLayoutBuilderTest categoriesFor: #testRenderingDeck!public!tests! !
!Bootstrap4CardLayoutBuilderTest categoriesFor: #testRenderingGroup!public!tests! !

