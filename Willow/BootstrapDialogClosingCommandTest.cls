"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapDialogClosingCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDialogClosingCommandTest guid: (GUID fromString: '{2cfb0011-140b-4076-926d-9d23d5b13d5f}')!
BootstrapDialogClosingCommandTest comment: 'A BootstrapDialogClosingCommandTest is a test class for testing the behavior of DialogClosingCommand using the Bootstrap Component Supplier'!
!BootstrapDialogClosingCommandTest categoriesForClass!Willow-Bootstrap-Tests-WebInteraction! !
!BootstrapDialogClosingCommandTest methodsFor!

componentSupplier	^ BootstrapComponentSupplier online!

createHandlers	^ Array with: self!

isSession^true!

testModelLoadingActionsWhenOnlyRemovingLastDialog	| html |	html := self		renderUsing: [ :canvas | 			| script anchor |			script := canvas javascript.			anchor := canvas anchor.			canvas ensureIdFor: anchor.			DialogClosingCommand onlyForLastDialog modelLoadingActions do: [ :action | action value: script value: canvas ].			anchor script: (canvas jQuery this onClick: script) ].	self		assert: html		equals:			'<a id="a-id1"></a><script type="text/javascript">$("#a-id1").click(function(){$("#willow-dialog-section").children("div").last().modal("hide")});</script>'!

testModelLoadingActionsWhenRemovingAllDialogs	| html |	html := self		renderUsing: [ :canvas | 			| script anchor |			script := canvas javascript.			anchor := canvas anchor.			canvas ensureIdFor: anchor.			DialogClosingCommand forAllDialogs modelLoadingActions do: [ :action | action value: script value: canvas ].			anchor script: (canvas jQuery this onClick: script) ].	self		assert: html		equals:			'<a id="a-id1"></a><script type="text/javascript">$("#a-id1").click(function(){$("#willow-dialog-section").children("div").modal("hide")});</script>'! !
!BootstrapDialogClosingCommandTest categoriesFor: #componentSupplier!accessing!public! !
!BootstrapDialogClosingCommandTest categoriesFor: #createHandlers!accessing!public! !
!BootstrapDialogClosingCommandTest categoriesFor: #isSession!accessing!public! !
!BootstrapDialogClosingCommandTest categoriesFor: #testModelLoadingActionsWhenOnlyRemovingLastDialog!public!tests! !
!BootstrapDialogClosingCommandTest categoriesFor: #testModelLoadingActionsWhenRemovingAllDialogs!public!tests! !

