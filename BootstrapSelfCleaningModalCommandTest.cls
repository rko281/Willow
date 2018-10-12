"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #BootstrapSelfCleaningModalCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSelfCleaningModalCommandTest guid: (GUID fromString: '{a5a1df39-1e5c-4644-a2c1-008da53a88c6}')!
BootstrapSelfCleaningModalCommandTest comment: 'A BootstrapSelfCleaningModalCommandTest is a test class for testing the behavior of BootstrapSelfCleaningModalCommand'!
!BootstrapSelfCleaningModalCommandTest categoriesForClass!Willow-Bootstrap-Tests-Frontend! !
!BootstrapSelfCleaningModalCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: BootstrapSelfCleaningModalCommand new toComponentDefinedBy: [ :canvas | canvas div apply: [ :div | div addClass bootstrap modal ] ].	self		assert: html		equals: '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal({"backdrop":"static"}).on("hidden.bs.modal",function(){Willow.Bootstrap.cleanModal($(this))});</script>'! !
!BootstrapSelfCleaningModalCommandTest categoriesFor: #testApplyToOn!public!tests! !

