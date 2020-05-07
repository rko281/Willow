"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap4NavigationDropdownMenuBuilderTest
	instanceVariableNames: 'supplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4NavigationDropdownMenuBuilderTest guid: (GUID fromString: '{fbbcdf37-5340-4f33-9714-5b035fc898cd}')!
Bootstrap4NavigationDropdownMenuBuilderTest comment: ''!
!Bootstrap4NavigationDropdownMenuBuilderTest categoriesForClass!Willow-Bootstrap-4-Tests-WebViews! !
!Bootstrap4NavigationDropdownMenuBuilderTest methodsFor!

navigationBarWith: menuBuilder	^ [ :canvas | 	canvas navigation		with: [ | nav |			nav := canvas unorderedList.			menuBuilder containedIn: nav.			nav with: menuBuilder build applying: [ :list | list addClass bootstrap4 navbarNavigation ]			]		applying: [ :nav | nav addClass bootstrap4 navbar ]	]!

setUp	super setUp.	supplier := Bootstrap4ComponentSupplier online!

testRenderContentOn	| navigation html |	navigation := self		navigationBarWith:			( supplier navigationDropdownMenuBuilder				labeled: 'Dropdown';				addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];				addDivider;				addActionLabeled: 'Another action'					executing: [ :button | button onTrigger disable ]					applying: [ :button | button addClass willow ];				yourself ).	html := self render: navigation.	self		assert: html		equals:			'<nav class="navbar"><ul class="navbar-nav"><li class="dropdown nav-item"><a id="a-id1" class="dropdown-toggle nav-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Dropdown</a><div class="dropdown-menu"><a id="a-id2" role="button" href="#" class="dropdown-item">Action</a><div class="dropdown-divider" role="separator"></div><a id="a-id3" role="button" href="#" class="dropdown-item willow">Another action</a></div></li></ul></nav><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});$("#a-id3").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'!

testRenderContentOnRightAligned	| navigation html |	navigation := self		navigationBarWith:			( supplier navigationDropdownMenuBuilder				labeled: 'Dropdown';				addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];				beRightAligned;				yourself ).	html := self render: navigation.	self		assert: html		equals:			'<nav class="navbar"><ul class="navbar-nav"><li class="dropdown nav-item"><a id="a-id1" class="dropdown-toggle nav-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Dropdown</a><div class="dropdown-menu dropdown-menu-right"><a id="a-id2" role="button" href="#" class="dropdown-item">Action</a></div></li></ul></nav><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'!

testRenderContentOnWithHeaders	| navigation html |	navigation := self		navigationBarWith:			( supplier navigationDropdownMenuBuilder				labeled: 'Dropdown';				addHeaderLabeled: 'Dropdown header';				addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];				yourself ).	html := self render: navigation.	self		assert: html		equals:			'<nav class="navbar"><ul class="navbar-nav"><li class="dropdown nav-item"><a id="a-id1" class="dropdown-toggle nav-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Dropdown</a><div class="dropdown-menu"><h6 class="dropdown-header">Dropdown header</h6><a id="a-id2" role="button" href="#" class="dropdown-item">Action</a></div></li></ul></nav><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'!

testRenderNavigationMenuContent	| navigationBar html |	navigationBar := self		navigationBarWith:			( supplier navigationDropdownMenuBuilder				labeled: 'Dropdown';				addActionLabeled: 'Action' executing: [ :button | button onTrigger disable ];				yourself ).	html := self render: navigationBar.	self		assert: html		equals:			'<nav class="navbar"><ul class="navbar-nav"><li class="dropdown nav-item"><a id="a-id1" class="dropdown-toggle nav-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Dropdown</a><div class="dropdown-menu"><a id="a-id2" role="button" href="#" class="dropdown-item">Action</a></div></li></ul></nav><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});$("#a-id2").click(function(event){arguments[0].preventDefault();$(this).prop("disabled",true)});</script>'! !
!Bootstrap4NavigationDropdownMenuBuilderTest categoriesFor: #navigationBarWith:!private! !
!Bootstrap4NavigationDropdownMenuBuilderTest categoriesFor: #setUp!initialization!public! !
!Bootstrap4NavigationDropdownMenuBuilderTest categoriesFor: #testRenderContentOn!public!tests! !
!Bootstrap4NavigationDropdownMenuBuilderTest categoriesFor: #testRenderContentOnRightAligned!public!tests! !
!Bootstrap4NavigationDropdownMenuBuilderTest categoriesFor: #testRenderContentOnWithHeaders!public!tests! !
!Bootstrap4NavigationDropdownMenuBuilderTest categoriesFor: #testRenderNavigationMenuContent!public!tests! !

