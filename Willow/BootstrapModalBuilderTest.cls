"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapModalBuilderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapModalBuilderTest guid: (GUID fromString: '{8d03d614-f255-433b-81ed-3acf275a2ff6}')!
BootstrapModalBuilderTest comment: ''!
!BootstrapModalBuilderTest categoriesForClass!Willow-Bootstrap-Tests-WebViews! !
!BootstrapModalBuilderTest methodsFor!

testBeSelfCleaning	| html dialog |	dialog := BootstrapComponentSupplier online dialogBuilder		beSelfCleaning;		headerTitled: 'Terms and Conditions';		closeButtonLabeled: 'Ok' applying: [ :closeButton | closeButton addClass bootstrap buttonLink ];		build.	html := self render: dialog.	self		assert: html		equals:			'<div class="modal" tabindex="-1" role="dialog" id="id1"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body"></div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Ok</button></div></div></div></div><script type="text/javascript">$("#id1").modal({"backdrop":"static"}).on("hidden.bs.modal",function(){Willow.Bootstrap.cleanModal($(this))});</script>'!

testCantBuildWithoutHeaderSpec	self should: [ BootstrapComponentSupplier online dialogBuilder build ] raise: AssertionFailed!

testRenderContentOn	| html dialog |	dialog := BootstrapComponentSupplier online dialogBuilder		headerTitled: 'Terms and Conditions';		wrapping: 'Some very large legal stuff. ;)';		closeButtonLabeled: 'Ok' applying: [ :closeButton | closeButton addClass bootstrap buttonLink ];		build.	html := self render: dialog.	self		assert: html		equals:			'<div class="modal" tabindex="-1" role="dialog"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body">Some very large legal stuff. ;)</div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Ok</button></div></div></div></div>'!

testRenderContentOnWithCommands	| html legalDialog |	legalDialog := BootstrapComponentSupplier online dialogBuilder		headerTitled: 'Terms and Conditions';		wrapping: 'Some very large legal stuff. ;)';		closeButtonLabeled: 'Ok' applying: [ :closeButton | closeButton addClass bootstrap buttonLink ];		applyingToDialog: [ :dialog | dialog addClass bootstrap fade ];		buildApplying: [ :document | document addClass bootstrap modalLarge ].	html := self render: legalDialog.	self		assert: html		equals:			'<div class="modal fade" tabindex="-1" role="dialog"><div class="modal-dialog modal-lg" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body">Some very large legal stuff. ;)</div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Ok</button></div></div></div></div>'!

testRenderContentOnWithDismissableHeader	| html dialog |	dialog := BootstrapComponentSupplier online dialogBuilder		dismissableHeaderTitled: 'Terms and Conditions';		closeButtonLabeled: 'Ok' applying: [ :closeButton | closeButton addClass bootstrap buttonLink ];		build.	html := self render: dialog.	self		assert: html		equals:			'<div class="modal" tabindex="-1" role="dialog"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><button class="close" data-dismiss="modal" aria-label="Close" type="button"><span aria-hidden="true">×</span></button><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body"></div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Ok</button></div></div></div></div>'!

testSimplestDialog	| html |	html := self		render:			(BootstrapComponentSupplier online dialogBuilder				headerTitled: 'Title';				build).	self		assert: html		equals:			'<div class="modal" tabindex="-1" role="dialog"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Title</h4></div><div class="modal-body"></div><div class="modal-footer"><button class="btn" data-dismiss="modal" type="button">Close</button></div></div></div></div>'! !
!BootstrapModalBuilderTest categoriesFor: #testBeSelfCleaning!public!tests! !
!BootstrapModalBuilderTest categoriesFor: #testCantBuildWithoutHeaderSpec!public!tests! !
!BootstrapModalBuilderTest categoriesFor: #testRenderContentOn!public!tests! !
!BootstrapModalBuilderTest categoriesFor: #testRenderContentOnWithCommands!public!tests! !
!BootstrapModalBuilderTest categoriesFor: #testRenderContentOnWithDismissableHeader!public!tests! !
!BootstrapModalBuilderTest categoriesFor: #testSimplestDialog!public!tests! !

