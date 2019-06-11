"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapSingleButtonDropdownBuilderTest
	instanceVariableNames: 'supplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSingleButtonDropdownBuilderTest guid: (GUID fromString: '{eb88508c-2d9e-405d-9257-b1fe900b620e}')!
BootstrapSingleButtonDropdownBuilderTest comment: 'A BootstrapSingleButtonDropdownBuilderTest is a test class for testing the behavior of BootstrapSingleButtonDropdownBuilder'!
!BootstrapSingleButtonDropdownBuilderTest categoriesForClass!Willow-Bootstrap-Tests-WebViews! !
!BootstrapSingleButtonDropdownBuilderTest methodsFor!

setUp	super setUp.	supplier := BootstrapComponentSupplier online!

testRenderContentOn	| button html |	button := supplier singleButtonDropdownBuilder		labeled: 'Dropdown' applying: [ :dropdownButton | dropdownButton addClass bootstrap buttonDanger ];		addActionLabeled: 'Action' executing: [ :action | action onTrigger disable ];		build.	html := self render: button.	self		assert: html		equals:			'<div class="btn-group"><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">Dropdown&nbsp;<span class="caret"></span></button><ul class="dropdown-menu"><li><a id="a-id1" role="button">Action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'!

testRenderContentOnRightAligned	| button html |	button := supplier singleButtonDropdownBuilder		labeled: 'Dropdown' applying: [ :dropdownButton | dropdownButton addClass bootstrap buttonDanger ];		addActionLabeled: 'Action' executing: [ :action | action onTrigger disable ];		beRightAligned;		build.	html := self render: button.	self		assert: html		equals:			'<div class="btn-group"><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">Dropdown&nbsp;<span class="caret"></span></button><ul class="dropdown-menu dropdown-menu-right"><li><a id="a-id1" role="button">Action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'! !
!BootstrapSingleButtonDropdownBuilderTest categoriesFor: #setUp!initialization!public! !
!BootstrapSingleButtonDropdownBuilderTest categoriesFor: #testRenderContentOn!public!tests! !
!BootstrapSingleButtonDropdownBuilderTest categoriesFor: #testRenderContentOnRightAligned!public!tests! !

