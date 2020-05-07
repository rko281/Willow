"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SpinKitComponentSupplierTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitComponentSupplierTest guid: (GUID fromString: '{1f03a747-4919-4bd3-b490-1beb64c76865}')!
SpinKitComponentSupplierTest comment: 'I''m a test for the integration between the component supplier and the spin kit views'!
!SpinKitComponentSupplierTest categoriesForClass!Willow-SpinKit-Tests! !
!SpinKitComponentSupplierTest methodsFor!

testUsingSpinKitAsThrobber	| supplier delayedView html |	supplier := Html5ComponentSupplier new.	delayedView := supplier		delayedViewShowing: SpinKitCircle new		whileEvaluating: [  ]		thenRendering: 'Done!!'.	html := self render: delayedView.	self		assert: html		equals:			'<div id="Delayed-id1"><div class="sk-circle"><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div></div></div><script type="text/javascript">Willow.callServer({"url":"/","data":"2"});</script>'! !
!SpinKitComponentSupplierTest categoriesFor: #testUsingSpinKitAsThrobber!public!tests! !

