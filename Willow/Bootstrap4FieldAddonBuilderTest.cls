"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap4FieldAddonBuilderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4FieldAddonBuilderTest guid: (GUID fromString: '{2c35305c-c25e-4cb4-8a23-7d80bfbd6da4}')!
Bootstrap4FieldAddonBuilderTest comment: ''!
!Bootstrap4FieldAddonBuilderTest categoriesForClass!Willow-Bootstrap-4-Tests-WebViews! !
!Bootstrap4FieldAddonBuilderTest methodsFor!

supplier	^ Bootstrap4ComponentSupplier online!

testCantCreateWithoutAddons	self		should: [ self supplier fieldAddonBuilder				wrapping: ( self supplier singleLineTextFieldApplying: [  ] );				build			]		raise: InstanceCreationFailed		withMessageText: 'At least some component must be appended or prepended.'!

testCantCreateWithoutFields	self		should: [ self supplier fieldAddonBuilder				prependText: '$';				build			]		raise: InstanceCreationFailed		withMessageText: 'At least one field to wrap is required.'!

testRenderContentOn	| field html |	field := self supplier fieldAddonBuilder		wrapping: ( self supplier naturalNumberFieldApplying: [  ] );		prependText: 'USD';		appendText: '.00';		build.	html := self render: field.	self		assert: html		equals:			'<div class="input-group"><div class="input-group-prepend"><span class="input-group-text">USD</span></div><input value="" name="1" type="number" class="form-control text-right" min="0"/><div class="input-group-append"><span class="input-group-text">.00</span></div></div>'!

testRenderContentOnWithButton	| field html |	field := self supplier fieldAddonBuilder		wrapping: ( self supplier singleLineTextFieldApplying: [  ] );		appendButton:			( self supplier				asynchronicButtonLabeled: 'Search!!'				applying: [ :button | button addClass bootstrapCommon buttonPrimary ] );		build.	html := self render: field.	self		assert: html		equals:			'<div class="input-group"><input value="" name="1" class="form-control" type="text"/><div class="input-group-append"><button class="btn btn-primary" type="button">Search!!</button></div></div>'!

testRenderLarge	| field html |	field := self supplier fieldAddonBuilder		prependText: '@';		wrapping: ( self supplier singleLineTextFieldApplying: [  ] );		beLarge;		build.	html := self render: field.	self		assert: html		equals:			'<div class="input-group input-group-lg"><div class="input-group-prepend"><span class="input-group-text">@</span></div><input value="" name="1" class="form-control" type="text"/></div>'!

testRenderMultipleAddons	| field html |	field := self supplier fieldAddonBuilder		prependText: '$';		prependText: '0.00';		wrapping: ( self supplier singleLineTextFieldApplying: [  ] );		build.	html := self render: field.	self		assert: html		equals:			'<div class="input-group"><div class="input-group-prepend"><span class="input-group-text">$</span><span class="input-group-text">0.00</span></div><input value="" name="1" class="form-control" type="text"/></div>'!

testRenderMultipleInputs	| field html |	field := self supplier fieldAddonBuilder		prependText: 'Name and Surname';		wrapping: ( self supplier singleLineTextFieldApplying: [  ] );		wrapping: ( self supplier singleLineTextFieldApplying: [  ] );		build.	html := self render: field.	self		assert: html		equals:			'<div class="input-group"><div class="input-group-prepend"><span class="input-group-text">Name and Surname</span></div><input value="" name="1" class="form-control" type="text"/><input value="" name="2" class="form-control" type="text"/></div>'!

testRenderSmall	| field html |	field := self supplier fieldAddonBuilder		prependText: '@';		wrapping: ( self supplier singleLineTextFieldApplying: [  ] );		beSmall;		build.	html := self render: field.	self		assert: html		equals:			'<div class="input-group input-group-sm"><div class="input-group-prepend"><span class="input-group-text">@</span></div><input value="" name="1" class="form-control" type="text"/></div>'! !
!Bootstrap4FieldAddonBuilderTest categoriesFor: #supplier!private! !
!Bootstrap4FieldAddonBuilderTest categoriesFor: #testCantCreateWithoutAddons!public!tests! !
!Bootstrap4FieldAddonBuilderTest categoriesFor: #testCantCreateWithoutFields!public!tests! !
!Bootstrap4FieldAddonBuilderTest categoriesFor: #testRenderContentOn!public!tests! !
!Bootstrap4FieldAddonBuilderTest categoriesFor: #testRenderContentOnWithButton!public!tests! !
!Bootstrap4FieldAddonBuilderTest categoriesFor: #testRenderLarge!public!tests! !
!Bootstrap4FieldAddonBuilderTest categoriesFor: #testRenderMultipleAddons!public!tests! !
!Bootstrap4FieldAddonBuilderTest categoriesFor: #testRenderMultipleInputs!public!tests! !
!Bootstrap4FieldAddonBuilderTest categoriesFor: #testRenderSmall!public!tests! !

