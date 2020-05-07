"Filed out from Dolphin Smalltalk 7"!

WillowApplication subclass: #WillowSpinKitPlayground
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowSpinKitPlayground guid: (GUID fromString: '{a119d53a-1aab-48a2-be56-e325d40452bf}')!
WillowSpinKitPlayground comment: 'I''m a really simple Willow application intented to show examples of Spin Kit'!
!WillowSpinKitPlayground categoriesForClass!Willow-SpinKit-Examples! !
!WillowSpinKitPlayground methodsFor!

componentSupplierForApplication	 ^ Html5ComponentSupplier new!

contentView	^ [ :html | self renderExamplesOn: html ]!

jQueryLibrary	^ JQuery3OnlineLibrary default!

render: aComponent asExampleTitled: aTitle on: html	html div		with: [ html heading				level: 1;				with: aTitle.			html render: aComponent			]		applying: [ :div | 			div				setStyleTo: [ :style | 					style						paddingBottom: 20 px;						borderBottom: {1 px. #solid }					]			]!

renderExamplesOn: html	self		render: SpinKitPlane new asExampleTitled: 'Plane' on: html;		render: SpinKitChase new asExampleTitled: 'Chase' on: html;		render: SpinKitBounce new asExampleTitled: 'Bounce' on: html;		render: SpinKitWave new asExampleTitled: 'Wave' on: html;		render: SpinKitPulse new asExampleTitled: 'Pulse' on: html;		render: SpinKitFlow new asExampleTitled: 'Flow' on: html;		render: SpinKitSwing new asExampleTitled: 'Swing' on: html;		render: SpinKitCircle new asExampleTitled: 'Circle' on: html;		render: SpinKitCircleFade new asExampleTitled: 'Circle Fade' on: html;		render: SpinKitGrid new asExampleTitled: 'Grid' on: html;		render: SpinKitFold new asExampleTitled: 'Fold' on: html;		render: SpinKitWander new asExampleTitled: 'Wander' on: html!

requiredLibraries	^ {SpinKitDevelopmentMetadataLibrary default}! !
!WillowSpinKitPlayground categoriesFor: #componentSupplierForApplication!accessing!public! !
!WillowSpinKitPlayground categoriesFor: #contentView!accessing!public! !
!WillowSpinKitPlayground categoriesFor: #jQueryLibrary!accessing!public! !
!WillowSpinKitPlayground categoriesFor: #render:asExampleTitled:on:!public!rendering! !
!WillowSpinKitPlayground categoriesFor: #renderExamplesOn:!public!rendering! !
!WillowSpinKitPlayground categoriesFor: #requiredLibraries!accessing!public! !

!WillowSpinKitPlayground class methodsFor!

applicationTitle		^ 'Willow SpinKit Examples'!

handlerName	^ 'willow-spinkit-examples'! !
!WillowSpinKitPlayground class categoriesFor: #applicationTitle!accessing!public! !
!WillowSpinKitPlayground class categoriesFor: #handlerName!accessing!public! !

