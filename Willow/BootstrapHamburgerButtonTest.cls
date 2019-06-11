"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapHamburgerButtonTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapHamburgerButtonTest guid: (GUID fromString: '{82c4e3d1-18e4-417c-838c-97b10359cd30}')!
BootstrapHamburgerButtonTest comment: 'A BootstrapHamburgerButtonTest is a test class for testing the behavior of BootstrapHamburgerButton'!
!BootstrapHamburgerButtonTest categoriesForClass!Willow-Bootstrap-Tests-WebViews! !
!BootstrapHamburgerButtonTest methodsFor!

testRenderContentOn	| html |	html := self		renderUsing: [ :canvas | 			| targetId |			targetId := canvas nextId.			canvas render: (BootstrapHamburgerButton targeting: targetId) ].	self		assert: html		equals: '<button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#id1" aria-expanded="false" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>'! !
!BootstrapHamburgerButtonTest categoriesFor: #testRenderContentOn!public!tests/rendering! !

