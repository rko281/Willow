﻿"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #TableWebViewTest
	instanceVariableNames: 'notificationWasReceived'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TableWebViewTest guid: (GUID fromString: '{6e70b2e0-8ccb-47f6-a4da-fb0571dc8229}')!
TableWebViewTest comment: 'A TableWebViewTest is a test class for testing the behavior of TableWebView'!
!TableWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!TableWebViewTest methodsFor!

changeNotifiedBy: aTableWebView 		notificationWasReceived := true!

testComplexTable	| table html |	table := TableWebViewBuilder new		addColumn: [ :column | 			column				rendering: [ :number :index | index ];				applyingToEachCell: [ :cell | cell addClass willow ];				summarizedWith: [ 'Total' ] ];		addColumn: [ :column | 			column				titled: 'Squared';				rendering: [ :number | number squared ];				summarizedWith: [ :numbers | (numbers collect: #squared) sum ] ];		applyToEachRow: [ :row | row addClass willow ] asTableRowCommand;		build.	table changeContentsTo: #(1 2).	html := self render: table.	self		assert: html		equals:			'<table id="table-id1"><thead><th class="willow"></th><th>Squared</th></thead><tbody><tr class="willow"><td class="willow">1</td><td>1</td></tr><tr class="willow"><td class="willow">2</td><td>4</td></tr></tbody><tfoot><td class="willow">Total</td><td>5</td></tfoot></table>'!

testContents	| table |	table := TableWebViewBuilder new build.	self assert: table contents isEmpty.	notificationWasReceived := false.	table		notifyChangesTo: self;		changeContentsTo: #(1 2 3).	self		assert: table contents equals: #(1 2 3);		assert: notificationWasReceived!

testDefinedByApplyingHeaderRenderedByApplyingToEachRow	| table html |	table := TableWebViewBuilder new		addColumn: [ :column | column rendering: [ :number | number even ] ];		applyToEachRow: (PluggableTableRowCommand toExecute: [ :row :item :canvas | row id: canvas nextId ]);		buildApplying: [ :theTable | theTable addClass willow ].	table changeContentsTo: #(1 2 3).	html := self render: table.	self		assert: html		equals:			'<table id="table-id1" class="willow"><tbody><tr id="id2"><td>false</td></tr><tr id="id3"><td>true</td></tr><tr id="id4"><td>false</td></tr></tbody></table>'!

testHeadedDefinedByApplying	| table html |	table := TableWebViewBuilder new		addColumn: [ :column | 			column				titled: 'Is Even?';				rendering: [ :number | number even ] ];		build.	html := self render: table.	self assert: html equals: '<table id="table-id1"><thead><th>Is Even?</th></thead><tbody></tbody></table>'!

testHeadedDefinedByApplyingWithContents	| table html |	table := TableWebViewBuilder new		addColumn: [ :column | 			column				titled: 'Is Even?';				rendering: [ :number | number even ] ];		build.	table changeContentsTo: #(1 2 3).	html := self render: table.	self assert: html equals: '<table id="table-id1"><thead><th>Is Even?</th></thead><tbody><tr><td>false</td></tr><tr><td>true</td></tr><tr><td>false</td></tr></tbody></table>'!

testOnTrigger	| table html |	table := TableWebViewBuilder new		addColumn: [ :column | column rendering: [ :number | number even ] ];		build.	table onTrigger disable.	html := self render: table.	self		assert: html			equals:			'<table id="table-id1"><tbody></tbody></table><script type="text/javascript">$("#table-id1").click(function(event){$(this).prop("disabled",true)});</script>';		assert: table identifier equals: 'table-id1'!

testRenderContentOn	| table html |	table := TableWebViewBuilder new		addColumn: [ :column | column rendering: [ :number | number even ] ];		build.	html := self render: table.	self assert: html equals: '<table id="table-id1"><tbody></tbody></table>'!

testRenderContentOnWithContents	| table html |	table := TableWebViewBuilder new		addColumn: [ :column | column rendering: [ :number | number even ] ];		build.	table changeContentsTo: #(1 2 3).	html := self render: table.	self		assert: html		equals: '<table id="table-id1"><tbody><tr><td>false</td></tr><tr><td>true</td></tr><tr><td>false</td></tr></tbody></table>'!

testRenderContentOnWithContentsAndSeveralColumns	| table html |	table := TableWebViewBuilder new		addColumn: [ :column | column rendering: [ :number | number even ] ];		addColumn: [ :column | column rendering: [ :number | number odd ] ];		build.	table changeContentsTo: #(1 2 3).	html := self render: table.	self		assert: html		equals:			'<table id="table-id1"><tbody><tr><td>false</td><td>true</td></tr><tr><td>true</td><td>false</td></tr><tr><td>false</td><td>true</td></tr></tbody></table>'!

testTableWithFooterSupport	| table html |	table := TableWebViewBuilder new		addColumn: [ :column | 			column				rendering: [ :number :index | index ];				summarizedWith: [ 'Even count' ] ];		addColumn: [ :column | 			column				titled: 'Is Even?';				rendering: [ :number | number even ];				summarizedWith: [ :numbers | (numbers select: #even) size ] ];		applyToEachRow: (PluggableTableRowCommand toExecute: [ :row :item :canvas | row id: canvas nextId ]);		buildApplying: [ :theTable | theTable addClass willow ].	table changeContentsTo: #(1 2 3).	html := self render: table.	self		assert: html		equals:			'<table id="table-id1" class="willow"><thead><th></th><th>Is Even?</th></thead><tbody><tr id="id2"><td>1</td><td>false</td></tr><tr id="id3"><td>2</td><td>true</td></tr><tr id="id4"><td>3</td><td>false</td></tr></tbody><tfoot><td>Even count</td><td>1</td></tfoot></table>'! !
!TableWebViewTest categoriesFor: #changeNotifiedBy:!private! !
!TableWebViewTest categoriesFor: #testComplexTable!public!tests/rendering! !
!TableWebViewTest categoriesFor: #testContents!public!tests/container/API! !
!TableWebViewTest categoriesFor: #testDefinedByApplyingHeaderRenderedByApplyingToEachRow!public!tests/rendering! !
!TableWebViewTest categoriesFor: #testHeadedDefinedByApplying!public!tests/rendering! !
!TableWebViewTest categoriesFor: #testHeadedDefinedByApplyingWithContents!public!tests/rendering! !
!TableWebViewTest categoriesFor: #testOnTrigger!public!tests/rendering! !
!TableWebViewTest categoriesFor: #testRenderContentOn!public!tests/rendering! !
!TableWebViewTest categoriesFor: #testRenderContentOnWithContents!public!tests/rendering! !
!TableWebViewTest categoriesFor: #testRenderContentOnWithContentsAndSeveralColumns!public!tests/rendering! !
!TableWebViewTest categoriesFor: #testTableWithFooterSupport!public!tests/rendering! !

