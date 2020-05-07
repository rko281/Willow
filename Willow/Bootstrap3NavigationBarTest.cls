"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap3NavigationBarTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3NavigationBarTest guid: (GUID fromString: '{49e996bf-3c39-4f71-8381-94e2b66bda83}')!
Bootstrap3NavigationBarTest comment: 'A BootstrapNavigationBarTest is a test class for testing the behavior of BootstrapNavigationBar'!
!Bootstrap3NavigationBarTest categoriesForClass!Willow-Bootstrap-3-Tests-WebViews! !
!Bootstrap3NavigationBarTest methodsFor!

componentSupplier	^ Bootstrap3ComponentSupplier online!

createHandlers	^ Array with: self!

isSession^ true!

testRenderContentOn	| navigationBar html |	navigationBar := Bootstrap3NavigationBar fluidBrandedWith: 'Willow' containing: '' applying: [ :nav |  ].	html := self render: navigationBar.	self		assert: html		equals:			'<nav class="navbar"><div class="container-fluid"><div class="navbar-header"><button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-content-id1" aria-expanded="false" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a id="a-id2" role="button" class="navbar-brand">Willow</a></div><div id="navbar-content-id1" class="collapse navbar-collapse"></div></div></nav><script type="text/javascript">$("#a-id2").click(function(event){arguments[0].preventDefault()});</script>'!

testRenderContentOnWithCommands	| navigationBar html |	navigationBar := Bootstrap3NavigationBar		brandedWith: 'Willow'		containing: ''		applying:			[ :navigation | navigation addClass bootstrap3 navbarDefault + navigation addClass bootstrap3 navbarStaticTop ].	html := self render: navigationBar.	self		assert: html		equals:			'<nav class="navbar navbar-default navbar-static-top"><div class="container"><div class="navbar-header"><button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-content-id1" aria-expanded="false" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a id="a-id2" role="button" class="navbar-brand">Willow</a></div><div id="navbar-content-id1" class="collapse navbar-collapse"></div></div></nav><script type="text/javascript">$("#a-id2").click(function(event){arguments[0].preventDefault()});</script>'!

testRenderContentOnWithContent	| navigationBar html |	navigationBar := Bootstrap3NavigationBar		brandedWith: 'Willow'		containing: [ :canvas | 			canvas paragraph				with: '2017'				applying: [ :p | p addClass bootstrap3 navbarText + p addClass bootstrap3 navbarRight ]			]		applying: [ :navigation | navigation addClass bootstrap3 navbarDefault ].	html := self render: navigationBar.	self		assert: html		equals:			'<nav class="navbar navbar-default"><div class="container"><div class="navbar-header"><button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-content-id1" aria-expanded="false" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a id="a-id2" role="button" class="navbar-brand">Willow</a></div><div id="navbar-content-id1" class="collapse navbar-collapse"><p class="navbar-text navbar-right">2017</p></div></div></nav><script type="text/javascript">$("#a-id2").click(function(event){arguments[0].preventDefault()});</script>'! !
!Bootstrap3NavigationBarTest categoriesFor: #componentSupplier!accessing!public! !
!Bootstrap3NavigationBarTest categoriesFor: #createHandlers!accessing!public! !
!Bootstrap3NavigationBarTest categoriesFor: #isSession!accessing!public! !
!Bootstrap3NavigationBarTest categoriesFor: #testRenderContentOn!public!tests/rendering! !
!Bootstrap3NavigationBarTest categoriesFor: #testRenderContentOnWithCommands!public!tests/rendering! !
!Bootstrap3NavigationBarTest categoriesFor: #testRenderContentOnWithContent!public!tests/rendering! !

