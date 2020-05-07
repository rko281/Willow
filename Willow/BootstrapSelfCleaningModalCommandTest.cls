"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapSelfCleaningModalCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSelfCleaningModalCommandTest guid: (GUID fromString: '{961830fc-65eb-4035-b904-7ad39d5d23b5}')!
BootstrapSelfCleaningModalCommandTest comment: 'A BootstrapSelfCleaningModalCommandTest is a test class for testing the behavior of BootstrapSelfCleaningModalCommand'!
!BootstrapSelfCleaningModalCommandTest categoriesForClass!Willow-Bootstrap-Tests-Frontend! !
!BootstrapSelfCleaningModalCommandTest methodsFor!

testApplyToOn	| html |	html := self		apply: BootstrapSelfCleaningModalCommand new		toComponentDefinedBy: [ :canvas | canvas div apply: [ :div | div addClass bootstrapCommon modal ] ].	self		assert: html		equals:			'<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal({"backdrop":"static"}).on("hidden.bs.modal",function(){Willow.Bootstrap.cleanModal($(this))});</script>'! !
!BootstrapSelfCleaningModalCommandTest categoriesFor: #testApplyToOn!public!tests! !

