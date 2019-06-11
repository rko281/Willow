"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapGridBuilderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapGridBuilderTest guid: (GUID fromString: '{2017c092-ceec-463f-9d1d-fdfbded2967e}')!
BootstrapGridBuilderTest comment: 'A BootstrapGridBuilderTest is a test class for testing the behavior of BootstrapGridBuilder'!
!BootstrapGridBuilderTest categoriesForClass!Willow-Bootstrap-Tests-WebViews! !
!BootstrapGridBuilderTest methodsFor!

testApplyingCellCommand	| grid html |	grid := BootstrapGridBuilder new		addContent: 1;		addContent: 2;		addContent: 3;		addContent: 4;		applyingToCells: [ :cell | cell addClass bootstrap small ];		build.	html := self render: grid.	self		assert: html		equals: '<div class="row"><div class="col-md-6 small">1</div><div class="col-md-6 small">2</div></div><div class="row"><div class="col-md-6 small">3</div><div class="col-md-6 small">4</div></div>'!

testApplyingRowCommand	| grid html |	grid := BootstrapGridBuilder new		columnsPerRow: 3;		addContent: 1;		addContent: 2;		addContent: 3;		addContent: 4;		buildApplying: [ :row | row addClass bootstrap small ].	html := self render: grid.	self assert: html equals: '<div class="row small"><div class="col-md-4">1</div><div class="col-md-4">2</div><div class="col-md-4">3</div></div><div class="row small"><div class="col-md-4">4</div></div>'!

testEvenlyDistributed	| grid html |	grid := BootstrapGridBuilder new		columnsPerRow: 3;		addContent: 1;		addContent: 2;		addContent: 3;		addContent: 4;		build.	html := self render: grid.	self assert: html equals: '<div class="row"><div class="col-md-4">1</div><div class="col-md-4">2</div><div class="col-md-4">3</div></div><div class="row"><div class="col-md-4">4</div></div>'!

testForExtraSmallDevices	| grid html |	grid := BootstrapGridBuilder new		addContent: 1;		forExtraSmallDevices;		build.	html := self render: grid.	self assert: html equals: '<div class="row"><div class="col-xs-6">1</div></div>'!

testForLargeDevices	| grid html |	grid := BootstrapGridBuilder new		addContent: 1;		forLargeDevices;		build.	html := self render: grid.	self assert: html equals: '<div class="row"><div class="col-lg-6">1</div></div>'!

testForSmallDevices	| grid html |	grid := BootstrapComponentSupplier online gridBuilder		addContent: 1;		forSmallDevices;		build.	html := self render: grid.	self assert: html equals: '<div class="row"><div class="col-sm-6">1</div></div>'!

testWithCustomColumnWidths	| grid html |	grid := BootstrapGridBuilder new		columnsWidths: #(1 4 7);		addContent: 1;		addContent: 2;		addContent: 3;		addContent: 4;		build.	html := self render: grid.	self assert: html equals: '<div class="row"><div class="col-md-1">1</div><div class="col-md-4">2</div><div class="col-md-7">3</div></div><div class="row"><div class="col-md-1">4</div></div>'! !
!BootstrapGridBuilderTest categoriesFor: #testApplyingCellCommand!public!tests! !
!BootstrapGridBuilderTest categoriesFor: #testApplyingRowCommand!public!tests! !
!BootstrapGridBuilderTest categoriesFor: #testEvenlyDistributed!public!tests! !
!BootstrapGridBuilderTest categoriesFor: #testForExtraSmallDevices!public!tests! !
!BootstrapGridBuilderTest categoriesFor: #testForLargeDevices!public!tests! !
!BootstrapGridBuilderTest categoriesFor: #testForSmallDevices!public!tests! !
!BootstrapGridBuilderTest categoriesFor: #testWithCustomColumnWidths!public!tests! !

