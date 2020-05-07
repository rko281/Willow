"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap3FieldAddonBuilderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3FieldAddonBuilderTest guid: (GUID fromString: '{2c5d4cdf-b0b9-4ecb-92e6-317b385fd1c8}')!
Bootstrap3FieldAddonBuilderTest comment: ''!
!Bootstrap3FieldAddonBuilderTest categoriesForClass!Willow-Bootstrap-3-Tests-WebViews! !
!Bootstrap3FieldAddonBuilderTest methodsFor!

supplier	^ Bootstrap3ComponentSupplier online!

testCantCreateWithoutAddons	self		should: [ self supplier fieldAddonBuilder				wrapping: ( self supplier singleLineTextFieldApplying: [  ] );				build			]		raise: InstanceCreationFailed		withMessageText: 'At least some component must be appended or prepended.'!

testCantCreateWithoutFields	self		should: [ self supplier fieldAddonBuilder				prependText: '$';				build			]		raise: InstanceCreationFailed		withMessageText: 'At least one field to wrap is required.'!

testRenderContentOn	| field html |	field := self supplier fieldAddonBuilder		wrapping: ( self supplier naturalNumberFieldApplying: [  ] );		prependText: 'USD';		appendText: '.00';		build.	html := self render: field.	self		assert: html		equals:			'<div class="input-group"><div class="input-group-addon">USD</div><input value="" name="1" type="number" class="form-control text-right" min="0"/><div class="input-group-addon">.00</div></div>'!

testRenderContentOnWithButton	| field html |	field := self supplier fieldAddonBuilder		wrapping: ( self supplier singleLineTextFieldApplying: [  ] );		appendButton:			( self supplier				asynchronicButtonLabeled: 'Search!!'				applying: [ :button | button addClass bootstrapCommon buttonPrimary ] );		build.	html := self render: field.	self		assert: html		equals:			'<div class="input-group"><input value="" name="1" class="form-control" type="text"/><div class="input-group-btn"><button class="btn btn-primary" type="button">Search!!</button></div></div>'!

testRenderLarge	| field html |	field := self supplier fieldAddonBuilder		prependText: '@';		wrapping: ( self supplier singleLineTextFieldApplying: [  ] );		beLarge;		build.	html := self render: field.	self		assert: html		equals:			'<div class="input-group input-group-lg"><div class="input-group-addon">@</div><input value="" name="1" class="form-control" type="text"/></div>'!

testRenderMultipleButtons	| field html |	field := self supplier fieldAddonBuilder		wrapping: ( self supplier singleLineTextFieldApplying: [  ] );		appendButton:			( self supplier				asynchronicButtonLabeled: 'Go'				applying: [ :button | button addClass bootstrap3 buttonDefault ] );		appendButton:			( self supplier				asynchronicButtonLabeled: 'Johnny Go!!'				applying: [ :button | button addClass bootstrap3 buttonDefault ] );		build.	html := self render: field.	self		assert: html		equals:			'<div class="input-group"><input value="" name="1" class="form-control" type="text"/><div class="input-group-btn"><button class="btn btn-default" type="button">Go</button><button class="btn btn-default" type="button">Johnny Go!!</button></div></div>'!

testRenderSmall	| field html |	field := self supplier fieldAddonBuilder		prependText: '@';		wrapping: ( self supplier singleLineTextFieldApplying: [  ] );		beSmall;		build.	html := self render: field.	self		assert: html		equals:			'<div class="input-group input-group-sm"><div class="input-group-addon">@</div><input value="" name="1" class="form-control" type="text"/></div>'! !
!Bootstrap3FieldAddonBuilderTest categoriesFor: #supplier!private! !
!Bootstrap3FieldAddonBuilderTest categoriesFor: #testCantCreateWithoutAddons!public!tests! !
!Bootstrap3FieldAddonBuilderTest categoriesFor: #testCantCreateWithoutFields!public!tests! !
!Bootstrap3FieldAddonBuilderTest categoriesFor: #testRenderContentOn!public!tests! !
!Bootstrap3FieldAddonBuilderTest categoriesFor: #testRenderContentOnWithButton!public!tests! !
!Bootstrap3FieldAddonBuilderTest categoriesFor: #testRenderLarge!public!tests! !
!Bootstrap3FieldAddonBuilderTest categoriesFor: #testRenderMultipleButtons!public!tests! !
!Bootstrap3FieldAddonBuilderTest categoriesFor: #testRenderSmall!public!tests! !

