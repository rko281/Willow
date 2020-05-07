"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap4PanelBuilderTest
	instanceVariableNames: 'supplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4PanelBuilderTest guid: (GUID fromString: '{3ef73a95-f834-442f-9aeb-cb6b68ddbbb5}')!
Bootstrap4PanelBuilderTest comment: ''!
!Bootstrap4PanelBuilderTest categoriesForClass!Willow-Bootstrap-4-Tests-WebViews! !
!Bootstrap4PanelBuilderTest methodsFor!

setUp	super setUp.	supplier := Bootstrap4ComponentSupplier online!

testRenderContextualAlternatives	| panel html |	panel := supplier panelBuilder		headingDisplaying: 'Panel title' withLevel: 3;		wrapping: 'Panel content';		buildApplying: [ :card | card addClass bootstrap4 backgroundDark + card addClass bootstrap4 textWhite50 ].	html := self render: panel.	self		assert: html		equals:			'<div class="card bg-dark text-white-50"><h3 class="card-header">Panel title</h3><div class="card-body">Panel content</div></div>'!

testRenderingBasicExample	| panel html |	panel := supplier panelBuilder		wrapping: 'Basic panel example';		build.	html := self render: panel.	self		assert: html		equals: '<div class="card"><div class="card-body">Basic panel example</div></div>'!

testRenderPanelWithFooter	| panel html |	panel := supplier panelBuilder		wrapping: 'Panel content';		footer: 'Panel footer';		build.	html := self render: panel.	self		assert: html		equals:			'<div class="card"><div class="card-body">Panel content</div><div class="card-footer">Panel footer</div></div>'!

testRenderPanelWithHeading	| panel html |	panel := supplier panelBuilder		headingDisplaying: 'Panel heading without title';		wrapping: 'Panel content';		buildApplying: [ :container | container addClass bootstrap4 backgroundLight ].	html := self render: panel.	self		assert: html		equals:			'<div class="card bg-light"><div class="card-header">Panel heading without title</div><div class="card-body">Panel content</div></div>'.	panel := supplier panelBuilder		headingDisplaying: 'Panel title' withLevel: 3;		wrapping: 'Panel content';		buildApplying: [ :container | container addClass bootstrap4 backgroundSuccess ].	html := self render: panel.	self		assert: html		equals:			'<div class="card bg-success"><h3 class="card-header">Panel title</h3><div class="card-body">Panel content</div></div>'!

testRenderPanelWithListGroups	| panel html listGroup |	listGroup := supplier		unorderedListApplying: [ :list |  ]		listing: #(1 2)		applyingToEach: [ :listItem |  ].	panel := supplier panelBuilder		headingDisplaying: 'Panel heading';		wrapping: 'Panel content.';		withListGroup: listGroup;		build.	html := self render: panel.	self		assert: html		equals:			'<div class="card"><div class="card-header">Panel heading</div><div class="card-body">Panel content.</div><ul class="list-group list-group-flush"><li class="list-group-item">1</li><li class="list-group-item">2</li></ul></div>'!

testRenderPanelWithListGroupsAndTables	| panel html listGroup table |	table := supplier tableBuilder		addColumn: [ :column | 			column				titled: 'First Name';				rendering: [ :item | item first ]			];		build.	listGroup := supplier		unorderedListApplying: [ :list |  ]		listing: #(1 2)		applyingToEach: [ :listItem |  ].	panel := supplier panelBuilder		headingDisplaying: 'Panel heading';		wrapping: 'Panel content.';		withListGroup: listGroup;		withTable: table;		build.	html := self render: panel.	self		assert: html		equals:			'<div class="card"><div class="card-header">Panel heading</div><div class="card-body">Panel content.</div><ul class="list-group list-group-flush"><li class="list-group-item">1</li><li class="list-group-item">2</li></ul><table id="table-id1" class="table"><thead><th>First Name</th></thead><tbody></tbody></table></div>'!

testRenderPanelWithTables	| panel html table |	table := supplier tableBuilder		addColumn: [ :column | 			column				titled: 'First Name';				rendering: [ :item | item first ]			];		build.	table changeContentsTo: #(#(1 2) #(2 2)).	panel := supplier panelBuilder		headingDisplaying: 'Panel heading';		wrapping: 'Panel content.';		withTable: table;		build.	html := self render: panel.	self		assert: html		equals:			'<div class="card"><div class="card-header">Panel heading</div><div class="card-body">Panel content.</div><table id="table-id1" class="table"><thead><th>First Name</th></thead><tbody><tr><td>1</td></tr><tr><td>2</td></tr></tbody></table></div>'.	panel := supplier panelBuilder		headingDisplaying: 'Panel heading';		withTable: table;		build.	html := self render: panel.	self		assert: html		equals:			'<div class="card"><div class="card-header">Panel heading</div><table id="table-id1" class="table"><thead><th>First Name</th></thead><tbody><tr><td>1</td></tr><tr><td>2</td></tr></tbody></table></div>'! !
!Bootstrap4PanelBuilderTest categoriesFor: #setUp!initialization!public! !
!Bootstrap4PanelBuilderTest categoriesFor: #testRenderContextualAlternatives!public!tests! !
!Bootstrap4PanelBuilderTest categoriesFor: #testRenderingBasicExample!public!tests! !
!Bootstrap4PanelBuilderTest categoriesFor: #testRenderPanelWithFooter!public!tests! !
!Bootstrap4PanelBuilderTest categoriesFor: #testRenderPanelWithHeading!public!tests! !
!Bootstrap4PanelBuilderTest categoriesFor: #testRenderPanelWithListGroups!public!tests! !
!Bootstrap4PanelBuilderTest categoriesFor: #testRenderPanelWithListGroupsAndTables!public!tests! !
!Bootstrap4PanelBuilderTest categoriesFor: #testRenderPanelWithTables!public!tests! !

