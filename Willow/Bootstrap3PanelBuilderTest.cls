"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap3PanelBuilderTest
	instanceVariableNames: 'supplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3PanelBuilderTest guid: (GUID fromString: '{86769726-78a2-4ea4-b513-b2466c9a3301}')!
Bootstrap3PanelBuilderTest comment: 'A BootstrapPanelBuilderTest is a test class for testing the behavior of BootstrapPanelBuilder'!
!Bootstrap3PanelBuilderTest categoriesForClass!Willow-Bootstrap-3-Tests-WebViews! !
!Bootstrap3PanelBuilderTest methodsFor!

setUp	super setUp.	supplier := Bootstrap3ComponentSupplier online!

testRenderContextualAlternatives	| panel html |	panel := supplier panelBuilder		headingDisplaying: 'Panel title' withLevel: 3;		wrapping: 'Panel content';		buildApplying: [ :container | container addClass bootstrap3 panelPrimary ].	html := self render: panel.	self		assert: html		equals:			'<div class="panel panel-primary"><div class="panel-heading"><h3 class="panel-title">Panel title</h3></div><div class="panel-body">Panel content</div></div>'!

testRenderingBasicExample	| panel html |	panel := supplier panelBuilder		wrapping: 'Basic panel example';		buildApplying: [ :container | container addClass bootstrap3 panelDefault ].	html := self render: panel.	self		assert: html		equals: '<div class="panel panel-default"><div class="panel-body">Basic panel example</div></div>'!

testRenderPanelWithFooter	| panel html |	panel := supplier panelBuilder		wrapping: 'Panel content';		footer: 'Panel footer';		buildApplying: [ :container | container addClass bootstrap3 panelDefault ].	html := self render: panel.	self		assert: html		equals:			'<div class="panel panel-default"><div class="panel-body">Panel content</div><div class="panel-footer">Panel footer</div></div>'!

testRenderPanelWithHeading	| panel html |	panel := supplier panelBuilder		headingDisplaying: 'Panel heading without title';		wrapping: 'Panel content';		buildApplying: [ :container | container addClass bootstrap3 panelDefault ].	html := self render: panel.	self		assert: html		equals:			'<div class="panel panel-default"><div class="panel-heading">Panel heading without title</div><div class="panel-body">Panel content</div></div>'.	panel := supplier panelBuilder		headingDisplaying: 'Panel title' withLevel: 3;		wrapping: 'Panel content';		buildApplying: [ :container | container addClass bootstrap3 panelDefault ].	html := self render: panel.	self		assert: html		equals:			'<div class="panel panel-default"><div class="panel-heading"><h3 class="panel-title">Panel title</h3></div><div class="panel-body">Panel content</div></div>'!

testRenderPanelWithListGroups	| panel html listGroup |	listGroup := supplier		unorderedListApplying: [ :list |  ]		listing: #(1 2)		applyingToEach: [ :listItem |  ].	panel := supplier panelBuilder		headingDisplaying: 'Panel heading';		wrapping: 'Panel content.';		withListGroup: listGroup;		buildApplying: [ :container | container addClass bootstrap3 panelDefault ].	html := self render: panel.	self		assert: html		equals:			'<div class="panel panel-default"><div class="panel-heading">Panel heading</div><div class="panel-body">Panel content.</div><ul class="list-group"><li class="list-group-item">1</li><li class="list-group-item">2</li></ul></div>'!

testRenderPanelWithListGroupsAndTables	| panel html listGroup table |	table := supplier tableBuilder		addColumn: [ :column | 			column				titled: 'First Name';				rendering: [ :item | item first ]			];		build.	listGroup := supplier		unorderedListApplying: [ :list |  ]		listing: #(1 2)		applyingToEach: [ :listItem |  ].	panel := supplier panelBuilder		headingDisplaying: 'Panel heading';		wrapping: 'Panel content.';		withListGroup: listGroup;		withTable: table;		buildApplying: [ :container | container addClass bootstrap3 panelDefault ].	html := self render: panel.	self		assert: html		equals:			'<div class="panel panel-default"><div class="panel-heading">Panel heading</div><div class="panel-body">Panel content.</div><ul class="list-group"><li class="list-group-item">1</li><li class="list-group-item">2</li></ul><table id="table-id1" class="table"><thead><th>First Name</th></thead><tbody></tbody></table></div>'!

testRenderPanelWithTables	| panel html table |	table := supplier tableBuilder		addColumn: [ :column | 			column				titled: 'First Name';				rendering: [ :item | item first ]			];		build.	panel := supplier panelBuilder		headingDisplaying: 'Panel heading';		wrapping: 'Panel content.';		withTable: table;		buildApplying: [ :container | container addClass bootstrap3 panelDefault ].	html := self render: panel.	self		assert: html		equals:			'<div class="panel panel-default"><div class="panel-heading">Panel heading</div><div class="panel-body">Panel content.</div><table id="table-id1" class="table"><thead><th>First Name</th></thead><tbody></tbody></table></div>'.	panel := supplier panelBuilder		headingDisplaying: 'Panel heading';		withTable: table;		buildApplying: [ :container | container addClass bootstrap3 panelDefault ].	html := self render: panel.	self		assert: html		equals:			'<div class="panel panel-default"><div class="panel-heading">Panel heading</div><table id="table-id1" class="table"><thead><th>First Name</th></thead><tbody></tbody></table></div>'! !
!Bootstrap3PanelBuilderTest categoriesFor: #setUp!initialization!public! !
!Bootstrap3PanelBuilderTest categoriesFor: #testRenderContextualAlternatives!public!tests! !
!Bootstrap3PanelBuilderTest categoriesFor: #testRenderingBasicExample!public!tests! !
!Bootstrap3PanelBuilderTest categoriesFor: #testRenderPanelWithFooter!public!tests! !
!Bootstrap3PanelBuilderTest categoriesFor: #testRenderPanelWithHeading!public!tests! !
!Bootstrap3PanelBuilderTest categoriesFor: #testRenderPanelWithListGroups!public!tests! !
!Bootstrap3PanelBuilderTest categoriesFor: #testRenderPanelWithListGroupsAndTables!public!tests! !
!Bootstrap3PanelBuilderTest categoriesFor: #testRenderPanelWithTables!public!tests! !

