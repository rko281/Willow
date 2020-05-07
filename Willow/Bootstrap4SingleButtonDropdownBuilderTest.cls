"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap4SingleButtonDropdownBuilderTest
	instanceVariableNames: 'supplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4SingleButtonDropdownBuilderTest guid: (GUID fromString: '{5deb78a1-90a9-47f8-95f1-f2809d363780}')!
Bootstrap4SingleButtonDropdownBuilderTest comment: ''!
!Bootstrap4SingleButtonDropdownBuilderTest categoriesForClass!Willow-Bootstrap-4-Tests-WebViews! !
!Bootstrap4SingleButtonDropdownBuilderTest methodsFor!

setUp	super setUp.	supplier := Bootstrap4ComponentSupplier online!

testRenderContentOn	| button html |	button := supplier singleButtonDropdownBuilder		labeled: 'Dropdown'			applying: [ :dropdownButton | dropdownButton addClass bootstrap4 buttonDanger ];		addActionLabeled: 'Action' executing: [ :action | action onTrigger disable ];		build.	html := self render: button.	self		assert: html		equals:			'<div class="dropdown"><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">Dropdown</button><div class="dropdown-menu"><a id="a-id1" role="button" href="#" class="dropdown-item">Action</a></div></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'!

testRenderContentOnRightAligned	| button html |	button := supplier singleButtonDropdownBuilder		labeled: 'Dropdown'			applying: [ :dropdownButton | dropdownButton addClass bootstrap4 buttonDanger ];		addActionLabeled: 'Action' executing: [ :action | action onTrigger disable ];		beRightAligned;		build.	html := self render: button.	self		assert: html		equals:			'<div class="dropdown"><button class="btn dropdown-toggle btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">Dropdown</button><div class="dropdown-menu dropdown-menu-right"><a id="a-id1" role="button" href="#" class="dropdown-item">Action</a></div></div><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'! !
!Bootstrap4SingleButtonDropdownBuilderTest categoriesFor: #setUp!initialization!public! !
!Bootstrap4SingleButtonDropdownBuilderTest categoriesFor: #testRenderContentOn!public!tests! !
!Bootstrap4SingleButtonDropdownBuilderTest categoriesFor: #testRenderContentOnRightAligned!public!tests! !

