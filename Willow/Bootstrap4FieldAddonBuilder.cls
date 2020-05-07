"Filed out from Dolphin Smalltalk 7"!

BootstrapFieldAddonBuilder subclass: #Bootstrap4FieldAddonBuilder
	instanceVariableNames: 'fields componentsToPrepend componentsToAppend'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4FieldAddonBuilder guid: (GUID fromString: '{28e1ac52-2bd8-4197-9949-8ee52357a4ed}')!
Bootstrap4FieldAddonBuilder comment: ''!
!Bootstrap4FieldAddonBuilder categoriesForClass!Willow-Bootstrap-4-WebViews! !
!Bootstrap4FieldAddonBuilder methodsFor!

append: aRenderable	componentsToAppend add: aRenderable!

appendButton: aButtonLikeComponent	self append: aButtonLikeComponent!

appendText: aRenderable	self		append:			( PhrasingContainerWebView				wrapping: aRenderable				applying: [ :span | span addClass bootstrap4 inputGroupText ] )!

assertIsCorrectlyConfigured	AssertionCheckerBuilder new		raising: InstanceCreationFailed;		checking: [ :asserter | 			asserter				enforce: [ fields notEmpty ]				because: 'At least one field to wrap is required.'				onSuccess: [ :successAsserter | 					successAsserter						refuse: [ componentsToAppend isEmpty and: [ componentsToPrepend isEmpty ] ]						because: 'At least some component must be appended or prepended.'					]			];		buildAndCheck!

buildApplying: aCommand	self assertIsCorrectlyConfigured.	^ GenericContainerWebView		wrapping: [ :canvas | 			self				renderPrependedComponentsOn: canvas;				renderFieldsOn: canvas;				renderAppendedComponentsOn: canvas			]		applying: [ :div | div addClass bootstrapCommon inputGroup + groupCommand + aCommand ]!

initialize	super initialize.	fields := OrderedCollection new.	componentsToAppend := OrderedCollection new.	componentsToPrepend := OrderedCollection new!

prepend: aRenderable	componentsToPrepend add: aRenderable!

prependButton: aButtonLikeComponent	self prepend: aButtonLikeComponent!

prependText: aRenderable	self		prepend:			( PhrasingContainerWebView				wrapping: aRenderable				applying: [ :span | span addClass bootstrap4 inputGroupText ] )!

renderAppendedComponentsOn: canvas	^ componentsToAppend		ifNotEmpty:			[ canvas div with: componentsToAppend applying: [ :div | div addClass bootstrap4 inputGroupAppend ] ]!

renderFieldsOn: canvas	canvas render: fields!

renderPrependedComponentsOn: canvas	componentsToPrepend		ifNotEmpty: [ canvas div				with: componentsToPrepend				applying: [ :div | div addClass bootstrap4 inputGroupPrepend ] ]!

wrapping: aField	fields add: aField! !
!Bootstrap4FieldAddonBuilder categoriesFor: #append:!private! !
!Bootstrap4FieldAddonBuilder categoriesFor: #appendButton:!configuring!public! !
!Bootstrap4FieldAddonBuilder categoriesFor: #appendText:!configuring!public! !
!Bootstrap4FieldAddonBuilder categoriesFor: #assertIsCorrectlyConfigured!private! !
!Bootstrap4FieldAddonBuilder categoriesFor: #buildApplying:!building!public! !
!Bootstrap4FieldAddonBuilder categoriesFor: #initialize!initialization!public! !
!Bootstrap4FieldAddonBuilder categoriesFor: #prepend:!private! !
!Bootstrap4FieldAddonBuilder categoriesFor: #prependButton:!configuring!public! !
!Bootstrap4FieldAddonBuilder categoriesFor: #prependText:!configuring!public! !
!Bootstrap4FieldAddonBuilder categoriesFor: #renderAppendedComponentsOn:!private! !
!Bootstrap4FieldAddonBuilder categoriesFor: #renderFieldsOn:!private! !
!Bootstrap4FieldAddonBuilder categoriesFor: #renderPrependedComponentsOn:!private! !
!Bootstrap4FieldAddonBuilder categoriesFor: #wrapping:!configuring!public! !

