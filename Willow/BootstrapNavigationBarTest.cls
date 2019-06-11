"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapNavigationBarTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapNavigationBarTest guid: (GUID fromString: '{d3f6901f-f760-48a1-9de3-125381958293}')!
BootstrapNavigationBarTest comment: 'A BootstrapNavigationBarTest is a test class for testing the behavior of BootstrapNavigationBar'!
!BootstrapNavigationBarTest categoriesForClass!Willow-Bootstrap-Tests-WebViews! !
!BootstrapNavigationBarTest methodsFor!

componentSupplier	^ BootstrapComponentSupplier online!

createHandlers	^ Array with: self!

isSession^ true!

testRenderContentOn	| navigationBar html |	navigationBar := BootstrapNavigationBar fluidBrandedWith: 'Willow' containing: '' applying: [ :nav |  ].	html := self render: navigationBar.	self		assert: html		equals:			'<nav class="navbar"><div class="container-fluid"><div class="navbar-header"><button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-content-id1" aria-expanded="false" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a id="a-id2" role="button" class="navbar-brand">Willow</a></div><div id="navbar-content-id1" class="collapse navbar-collapse"></div></div></nav><script type="text/javascript">$("#a-id2").click(function(event){arguments[0].preventDefault()});</script>'!

testRenderContentOnWithCommands	| navigationBar html |	navigationBar := BootstrapNavigationBar		brandedWith: 'Willow'		containing: ''		applying: [ :navigation | navigation addClass bootstrap navbarDefault + navigation addClass bootstrap navbarStaticTop ].	html := self render: navigationBar.	self		assert: html		equals:			'<nav class="navbar navbar-default navbar-static-top"><div class="container"><div class="navbar-header"><button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-content-id1" aria-expanded="false" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a id="a-id2" role="button" class="navbar-brand">Willow</a></div><div id="navbar-content-id1" class="collapse navbar-collapse"></div></div></nav><script type="text/javascript">$("#a-id2").click(function(event){arguments[0].preventDefault()});</script>'!

testRenderContentOnWithContent	| navigationBar html |	navigationBar := BootstrapNavigationBar		brandedWith: 'Willow'		containing: [ :canvas | canvas paragraph with: '2017' applying: [ :p | p addClass bootstrap navbarText + p addClass bootstrap navbarRight ] ]		applying: [ :navigation | navigation addClass bootstrap navbarDefault ].	html := self render: navigationBar.	self		assert: html		equals:			'<nav class="navbar navbar-default"><div class="container"><div class="navbar-header"><button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-content-id1" aria-expanded="false" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a id="a-id2" role="button" class="navbar-brand">Willow</a></div><div id="navbar-content-id1" class="collapse navbar-collapse"><p class="navbar-text navbar-right">2017</p></div></div></nav><script type="text/javascript">$("#a-id2").click(function(event){arguments[0].preventDefault()});</script>'! !
!BootstrapNavigationBarTest categoriesFor: #componentSupplier!accessing!public! !
!BootstrapNavigationBarTest categoriesFor: #createHandlers!accessing!public! !
!BootstrapNavigationBarTest categoriesFor: #isSession!accessing!public! !
!BootstrapNavigationBarTest categoriesFor: #testRenderContentOn!public!tests/rendering! !
!BootstrapNavigationBarTest categoriesFor: #testRenderContentOnWithCommands!public!tests/rendering! !
!BootstrapNavigationBarTest categoriesFor: #testRenderContentOnWithContent!public!tests/rendering! !

