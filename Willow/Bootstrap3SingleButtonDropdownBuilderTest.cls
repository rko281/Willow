"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap3SingleButtonDropdownBuilderTest
	instanceVariableNames: 'supplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3SingleButtonDropdownBuilderTest guid: (GUID fromString: '{f36e6e02-f071-414f-bb7c-7f4fb1142dac}')!
Bootstrap3SingleButtonDropdownBuilderTest comment: 'A BootstrapSingleButtonDropdownBuilderTest is a test class for testing the behavior of BootstrapSingleButtonDropdownBuilder'!
!Bootstrap3SingleButtonDropdownBuilderTest categoriesForClass!Willow-Bootstrap-3-Tests-WebViews! !
!Bootstrap3SingleButtonDropdownBuilderTest methodsFor!

setUp	super setUp.	supplier := Bootstrap3ComponentSupplier online!

testRenderContentOn	| button html |	button := supplier singleButtonDropdownBuilder		labeled: 'Dropdown'			applying: [ :dropdownButton | dropdownButton addClass bootstrap3 buttonDanger ];		addActionLabeled: 'Action' executing: [ :action | action onTrigger disable ];		build.	html := self render: button.	self		assert: html		equals:			'<div class="btn-group"><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">Dropdown&nbsp;<span class="caret"></span></button><ul class="dropdown-menu"><li><a id="a-id1" role="button">Action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'!

testRenderContentOnRightAligned	| button html |	button := supplier singleButtonDropdownBuilder		labeled: 'Dropdown'			applying: [ :dropdownButton | dropdownButton addClass bootstrap3 buttonDanger ];		addActionLabeled: 'Action' executing: [ :action | action onTrigger disable ];		beRightAligned;		build.	html := self render: button.	self		assert: html		equals:			'<div class="btn-group"><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">Dropdown&nbsp;<span class="caret"></span></button><ul class="dropdown-menu dropdown-menu-right"><li><a id="a-id1" role="button">Action</a></li></ul></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'! !
!Bootstrap3SingleButtonDropdownBuilderTest categoriesFor: #setUp!initialization!public! !
!Bootstrap3SingleButtonDropdownBuilderTest categoriesFor: #testRenderContentOn!public!tests! !
!Bootstrap3SingleButtonDropdownBuilderTest categoriesFor: #testRenderContentOnRightAligned!public!tests! !

