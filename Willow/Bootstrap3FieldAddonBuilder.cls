"Filed out from Dolphin Smalltalk 7"!

BootstrapFieldAddonBuilder subclass: #Bootstrap3FieldAddonBuilder
	instanceVariableNames: 'fieldBinding prependedTextOptional prependedButtons appendedTextOptional appendedButtons'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3FieldAddonBuilder guid: (GUID fromString: '{90b6fdbe-78fd-4ece-9087-a6e5ad2b60bd}')!
Bootstrap3FieldAddonBuilder comment: ''!
!Bootstrap3FieldAddonBuilder categoriesForClass!Willow-Bootstrap-3-WebViews! !
!Bootstrap3FieldAddonBuilder methodsFor!

appendButton: aButtonLikeComponent	appendedButtons add: aButtonLikeComponent!

appendText: aRenderable	appendedTextOptional := Optional		containing:			( GenericContainerWebView				wrapping: aRenderable				applying: [ :div | div addClass bootstrap3 inputGroupAddon ] )!

assertIsCorrectlyConfigured	AssertionChecker		enforce: [ fieldBinding isDefined ]			because: 'At least one field to wrap is required.'			raising: InstanceCreationFailed;		enforce: [ self isSomethingPreprended or: [ self isSomethingAppended ] ]			because: 'At least some component must be appended or prepended.'			raising: InstanceCreationFailed!

buildApplying: aCommand	self assertIsCorrectlyConfigured.	^ GenericContainerWebView		wrapping: [ :canvas | 			self				renderPrependedComponentsOn: canvas;				renderFieldOn: canvas;				renderAppendedComponentsOn: canvas			]		applying: [ :div | div addClass bootstrapCommon inputGroup + groupCommand + aCommand ]!

initialize	super initialize.	fieldBinding := Binding undefinedExplainedBy: 'Missing field'.	prependedTextOptional := Optional unused.	prependedButtons := OrderedCollection new.	appendedTextOptional := Optional unused.	appendedButtons := OrderedCollection new!

isSomethingAppended	^ appendedTextOptional withContentDo: [ true ] ifUnused: [ appendedButtons notEmpty ]!

isSomethingPreprended	^ prependedTextOptional withContentDo: [ true ] ifUnused: [ prependedButtons notEmpty ]!

prependButton: aButtonLikeComponent	prependedButtons add: aButtonLikeComponent!

prependText: aRenderable	prependedTextOptional := Optional		containing:			( GenericContainerWebView				wrapping: aRenderable				applying: [ :div | div addClass bootstrap3 inputGroupAddon ] )!

renderAppendedComponentsOn: aCanvas	"Bootstrap 3 don't allow mixing buttons and text in addons"	appendedTextOptional		withContentDo: [ :text | aCanvas render: text ]		ifUnused: [ appendedButtons				ifNotEmpty:					[ aCanvas div with: appendedButtons applying: [ :div | div addClass bootstrap3 inputGroupButton ] ]			]!

renderFieldOn: aCanvas	aCanvas render: fieldBinding content!

renderPrependedComponentsOn: aCanvas	"Bootstrap 3 don't allow mixing buttons and text in addons"	prependedTextOptional		withContentDo: [ :text | aCanvas render: text ]		ifUnused: [ prependedButtons				ifNotEmpty:					[ aCanvas div with: prependedButtons applying: [ :div | div addClass bootstrap3 inputGroupButton ] ]			]!

wrapping: aField	fieldBinding := Binding to: aField! !
!Bootstrap3FieldAddonBuilder categoriesFor: #appendButton:!configuring!public! !
!Bootstrap3FieldAddonBuilder categoriesFor: #appendText:!configuring!public! !
!Bootstrap3FieldAddonBuilder categoriesFor: #assertIsCorrectlyConfigured!private! !
!Bootstrap3FieldAddonBuilder categoriesFor: #buildApplying:!building!public! !
!Bootstrap3FieldAddonBuilder categoriesFor: #initialize!initialization!public! !
!Bootstrap3FieldAddonBuilder categoriesFor: #isSomethingAppended!private! !
!Bootstrap3FieldAddonBuilder categoriesFor: #isSomethingPreprended!private! !
!Bootstrap3FieldAddonBuilder categoriesFor: #prependButton:!configuring!public! !
!Bootstrap3FieldAddonBuilder categoriesFor: #prependText:!configuring!public! !
!Bootstrap3FieldAddonBuilder categoriesFor: #renderAppendedComponentsOn:!private! !
!Bootstrap3FieldAddonBuilder categoriesFor: #renderFieldOn:!private! !
!Bootstrap3FieldAddonBuilder categoriesFor: #renderPrependedComponentsOn:!private! !
!Bootstrap3FieldAddonBuilder categoriesFor: #wrapping:!configuring!public! !

