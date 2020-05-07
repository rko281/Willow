"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap3HamburgerButtonTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3HamburgerButtonTest guid: (GUID fromString: '{22c6ec1a-2968-4fd2-9c9b-5e3945707b33}')!
Bootstrap3HamburgerButtonTest comment: 'A BootstrapHamburgerButtonTest is a test class for testing the behavior of BootstrapHamburgerButton'!
!Bootstrap3HamburgerButtonTest categoriesForClass!Willow-Bootstrap-3-Tests-WebViews! !
!Bootstrap3HamburgerButtonTest methodsFor!

testRenderContentOn	| html |	html := self		renderUsing: [ :canvas | 			| targetId |			targetId := canvas nextId.			canvas render: (Bootstrap3HamburgerButton targeting: targetId) ].	self		assert: html		equals: '<button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#id1" aria-expanded="false" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>'! !
!Bootstrap3HamburgerButtonTest categoriesFor: #testRenderContentOn!public!tests/rendering! !

