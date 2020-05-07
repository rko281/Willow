"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap3GridBuilderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3GridBuilderTest guid: (GUID fromString: '{6dd86bf2-d856-49ae-a1f5-3d2a30728d91}')!
Bootstrap3GridBuilderTest comment: 'A BootstrapGridBuilderTest is a test class for testing the behavior of BootstrapGridBuilder'!
!Bootstrap3GridBuilderTest categoriesForClass!Willow-Bootstrap-3-Tests-WebViews! !
!Bootstrap3GridBuilderTest methodsFor!

testApplyingCellCommand	| grid html |	grid := Bootstrap3GridBuilder new		addContent: 1;		addContent: 2;		addContent: 3;		addContent: 4;		applyingToCells: [ :cell | cell addClass bootstrap3 small ];		build.	html := self render: grid.	self		assert: html		equals:			'<div class="row"><div class="col-md-6 small">1</div><div class="col-md-6 small">2</div></div><div class="row"><div class="col-md-6 small">3</div><div class="col-md-6 small">4</div></div>'!

testApplyingRowCommand	| grid html |	grid := Bootstrap3GridBuilder new		columnsPerRow: 3;		addContent: 1;		addContent: 2;		addContent: 3;		addContent: 4;		buildApplying: [ :row | row addClass bootstrap3 small ].	html := self render: grid.	self		assert: html		equals:			'<div class="row small"><div class="col-md-4">1</div><div class="col-md-4">2</div><div class="col-md-4">3</div></div><div class="row small"><div class="col-md-4">4</div></div>'!

testEvenlyDistributed	| grid html |	grid := Bootstrap3GridBuilder new		columnsPerRow: 3;		addContent: 1;		addContent: 2;		addContent: 3;		addContent: 4;		build.	html := self render: grid.	self assert: html equals: '<div class="row"><div class="col-md-4">1</div><div class="col-md-4">2</div><div class="col-md-4">3</div></div><div class="row"><div class="col-md-4">4</div></div>'!

testForExtraSmallDevices	| grid html |	grid := Bootstrap3GridBuilder new		addContent: 1;		forExtraSmallDevices;		build.	html := self render: grid.	self assert: html equals: '<div class="row"><div class="col-xs-6">1</div></div>'!

testForLargeDevices	| grid html |	grid := Bootstrap3GridBuilder new		addContent: 1;		forLargeDevices;		build.	html := self render: grid.	self assert: html equals: '<div class="row"><div class="col-lg-6">1</div></div>'!

testForSmallDevices	| grid html |	grid := Bootstrap3ComponentSupplier online gridBuilder		addContent: 1;		forSmallDevices;		build.	html := self render: grid.	self assert: html equals: '<div class="row"><div class="col-sm-6">1</div></div>'!

testWithCustomColumnWidths	| grid html |	grid := Bootstrap3GridBuilder new		columnsWidths: #(1 4 7);		addContent: 1;		addContent: 2;		addContent: 3;		addContent: 4;		build.	html := self render: grid.	self assert: html equals: '<div class="row"><div class="col-md-1">1</div><div class="col-md-4">2</div><div class="col-md-7">3</div></div><div class="row"><div class="col-md-1">4</div></div>'! !
!Bootstrap3GridBuilderTest categoriesFor: #testApplyingCellCommand!public!tests! !
!Bootstrap3GridBuilderTest categoriesFor: #testApplyingRowCommand!public!tests! !
!Bootstrap3GridBuilderTest categoriesFor: #testEvenlyDistributed!public!tests! !
!Bootstrap3GridBuilderTest categoriesFor: #testForExtraSmallDevices!public!tests! !
!Bootstrap3GridBuilderTest categoriesFor: #testForLargeDevices!public!tests! !
!Bootstrap3GridBuilderTest categoriesFor: #testForSmallDevices!public!tests! !
!Bootstrap3GridBuilderTest categoriesFor: #testWithCustomColumnWidths!public!tests! !

