"Filed out from Dolphin Smalltalk 7"!

FrontendComponentSupplier subclass: #BootstrapComponentSupplier
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapComponentSupplier guid: (GUID fromString: '{11c5f93b-73d3-4162-ab48-1423a3564c8b}')!
BootstrapComponentSupplier comment: 'I''m the abstract superclass of the Bootstrap components suppliers. '!
!BootstrapComponentSupplier categoriesForClass!Willow-Bootstrap-Frontend! !
!BootstrapComponentSupplier methodsFor!

addStatementsTo: aJSScript toCloseDialogsIn: jQueryMatchingDialogContainer matching: dialogSupplier on: aCanvas	aJSScript << (dialogSupplier value: (jQueryMatchingDialogContainer children: 'div')) bootstrapModal hide!

asynchronicButtonLabeled: aRenderable applying: aComponentCommand	^ AsynchronicButtonWebView		labeled: aRenderable		applying: [ :button | button addClass bootstrapCommon button + aComponentCommand ]!

asynchronicLinkActingAsButtonLabeled: aRenderable applying: aComponentCommand	^ self		asynchronicLinkLabeled: aRenderable		applying: [ :anchor :constants | 			( anchor setARIARoleTo: #button ) + anchor addClass bootstrapCommon button + aComponentCommand				+ ( anchor setAttribute: 'href' to: '#' )			]!

asynchronicLinkLabeled: aRenderable applying: aComponentCommand	^ LinkWebView asynchronicLabeled: aRenderable applying: aComponentCommand!

dateFieldApplying: aComponentCommand	^ DateFieldWebView		applying: [ :field | 			field addClass bootstrapCommon formControl + ( field setMaximumLengthTo: 10 ) + aComponentCommand				+ BootstrapDatepickerCommand new + field beTextInput	"The datepicker plugin doesn't play nice with the HTML5 date input, so we use a text input instead."			]!

decimalNumberFieldApplying: aComponentCommand	^ NumberFieldWebView		applying: [ :field | 			field addClass bootstrapCommon formControl + field addClass bootstrapCommon textRight				+ aComponentCommand			]		transformingWith: FloatCodec new!

dialogBuilder	^ BootstrapModalBuilder new!

dropdownListApplying: aComponentCommand	^ DropDownListWebView		applying: [ :field | field addClass bootstrapCommon formControl + aComponentCommand + BootstrapSelectCommand new ]!

fieldAddonBuilder	"A Field addon builder allows to extend fields by adding text, buttons or button groups on either side of the field"	^ self subclassResponsibility!

fieldSetContaining: aWebView applying: fieldSetCommand withLegend: aTitle applying: legendCommand	^ FieldSetWebView		containing: aWebView		applying: fieldSetCommand		withLegend: aTitle		applying: legendCommand!

gridBuilder	self subclassResponsibility!

helpTextBoundTo: aFieldWebView describedBy: aHelpText	^ self subclassResponsibility!

labeledFieldApplying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField	^ self subclassResponsibility!

multiLineTextFieldApplying: aComponentCommand	^ TextFieldWebView		multiLineTriggeringOnChangeApplying: [ :field | field addClass bootstrapCommon formControl + aComponentCommand ]!

multipleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand	^ MultipleSelectionListBoxWebView		displayingAtOnce: aNumberOfElements		applying: [ :field | field addClass bootstrapCommon formControl + aComponentCommand ]!

naturalNumberFieldApplying: aComponentCommand	^ NumberFieldWebView		applying: [ :field | 			field addClass bootstrapCommon formControl + field addClass bootstrapCommon textRight + aComponentCommand				+ field boundNotNegative			]		transformingWith: NaturalNumberCodec new!

navigationDropdownMenuBuilder	^ self subclassResponsibility!

notificationBuilder 	^BootstrapNotificationBuilder new!

panelBuilder	^ self subclassResponsibility!

pillsBuilder	^ self subclassResponsibility!

singleButtonDropdownBuilder	^ self subclassResponsibility!

singleLineTextFieldApplying: aComponentCommand	^ TextFieldWebView		singleLineTriggeringOnChangeApplying: [ :field | field addClass bootstrapCommon formControl + aComponentCommand ]!

singleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand	^ SingleSelectionListBoxWebView		displayingAtOnce: aNumberOfElements		applying: [ :listBox | listBox addClass bootstrapCommon formControl + aComponentCommand ]!

splitButtonDropdownBuilder	^ self subclassResponsibility!

synchronicButtonLabeled: aRenderable applying: aComponentCommand evaluating: anActionBlock	^ SynchronicSubmitButtonWebView		labeled: aRenderable		applying: [ :field | field addClass bootstrapCommon button + aComponentCommand ]		evaluating: anActionBlock!

tableBuilder	^ TableWebViewBuilder new		apply: [ :table | table addClass bootstrapCommon table ];		yourself!

tabsBuilder	^ self subclassResponsibility!

unorderedListApplying: aCommandToList listing: aCollection applyingToEach: aCommandToItem	^ UnorderedListWebView		applying: [ :list | list addClass bootstrapCommon listGroup + aCommandToList ]		listing: aCollection		applyingToEach: [ :listItem | listItem addClass bootstrapCommon listGroupItem + aCommandToItem ]!

updateRoot: aRoot	aRoot beHtml5! !
!BootstrapComponentSupplier categoriesFor: #addStatementsTo:toCloseDialogsIn:matching:on:!Interaction!public! !
!BootstrapComponentSupplier categoriesFor: #asynchronicButtonLabeled:applying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #asynchronicLinkActingAsButtonLabeled:applying:!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #asynchronicLinkLabeled:applying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #dateFieldApplying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #decimalNumberFieldApplying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #dialogBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #dropdownListApplying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #fieldAddonBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #fieldSetContaining:applying:withLegend:applying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #gridBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #helpTextBoundTo:describedBy:!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #labeledFieldApplying:displaying:applying:boundTo:applying:!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #multiLineTextFieldApplying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #multipleSelectionListBoxDisplayingAtOnce:applying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #naturalNumberFieldApplying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #navigationDropdownMenuBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #notificationBuilder!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #panelBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #pillsBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #singleButtonDropdownBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #singleLineTextFieldApplying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #singleSelectionListBoxDisplayingAtOnce:applying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #splitButtonDropdownBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #synchronicButtonLabeled:applying:evaluating:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #tableBuilder!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #tabsBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #unorderedListApplying:listing:applyingToEach:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #updateRoot:!Processing!public! !

!BootstrapComponentSupplier class methodsFor!

isAbstract	^ self name = #BootstrapComponentSupplier! !
!BootstrapComponentSupplier class categoriesFor: #isAbstract!public!testing! !

