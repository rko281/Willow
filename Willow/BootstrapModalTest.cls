"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapModalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapModalTest guid: (GUID fromString: '{11e95685-5228-4fe1-be2f-bd8d88beb306}')!
BootstrapModalTest comment: 'A BootstrapModalTest is a test class for testing the behavior of BootstrapModal'!
!BootstrapModalTest categoriesForClass!Willow-Bootstrap-Tests-Plugins! !
!BootstrapModalTest methodsFor!

renderModalContentApplying: aBlock	^ self		renderUsing: [ :canvas | 			| modal |			modal := canvas jQuery new bootstrapModal.			aBlock value: modal.			canvas div				apply: [ :div | div addClass bootstrap modal ];				script: modal ]!

testBackdrop	| html |	html := self renderModalContentApplying: [ :modal | modal backdrop: #static ].	self assert: html equals: '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal({"backdrop":"static"});</script>'!

testBackdropBoolean	| html |	html := self renderModalContentApplying: [ :modal | modal backdrop: true ].	self		assert: html		equals: '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal({"backdrop":true});</script>'!

testHide	| html |	html := self renderModalContentApplying: [ :modal | modal hide ].	self assert: html equals: '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal("hide");</script>'!

testOnHidden	| html |	html := self renderModalContentApplying: [ :modal | modal onHidden: JSFunction new ].	self assert: html equals:  '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal().on("hidden.bs.modal",function(){});</script>'!

testOnHide	| html |	html := self renderModalContentApplying: [ :modal | modal onHide: JSFunction new ].	self assert: html equals:  '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal().on("hide.bs.modal",function(){});</script>'!

testOnShow	| html |	html := self renderModalContentApplying: [ :modal | modal onShow: JSFunction new ].	self assert: html equals:  '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal().on("show.bs.modal",function(){});</script>'!

testOnShown	| html |	html := self renderModalContentApplying: [ :modal | modal onShown: JSFunction new ].	self assert: html equals:  '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal().on("shown.bs.modal",function(){});</script>'!

testOptions	| html |	html := self		renderModalContentApplying: [ :modal | 			modal				backdrop: false;				keyboard: false;				show: true ].	self		assert: html		equals:			'<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal({"backdrop":false,"keyboard":false,"show":true});</script>'!

testShow	| html |	html := self renderModalContentApplying: [ :modal | modal show ].	self assert: html equals: '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal("show");</script>'!

testToggle	| html |	html := self renderModalContentApplying: [ :modal | modal toggle ].	self assert: html equals: '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal("toggle");</script>'! !
!BootstrapModalTest categoriesFor: #renderModalContentApplying:!private! !
!BootstrapModalTest categoriesFor: #testBackdrop!public!tests/Options! !
!BootstrapModalTest categoriesFor: #testBackdropBoolean!public!tests/Options! !
!BootstrapModalTest categoriesFor: #testHide!public!tests/Methods! !
!BootstrapModalTest categoriesFor: #testOnHidden!public!tests/Methods! !
!BootstrapModalTest categoriesFor: #testOnHide!public!tests/Methods! !
!BootstrapModalTest categoriesFor: #testOnShow!public!tests/Methods! !
!BootstrapModalTest categoriesFor: #testOnShown!public!tests/Methods! !
!BootstrapModalTest categoriesFor: #testOptions!public!tests/Options! !
!BootstrapModalTest categoriesFor: #testShow!public!tests/Methods! !
!BootstrapModalTest categoriesFor: #testToggle!public!tests/Methods! !

