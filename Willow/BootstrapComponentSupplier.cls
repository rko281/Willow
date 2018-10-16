"Filed out from Dolphin Smalltalk 7"!

FrontendComponentSupplier subclass: #BootstrapComponentSupplier
	instanceVariableNames: 'bootstrapLibraries'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapComponentSupplier guid: (GUID fromString: '{11c5f93b-73d3-4162-ab48-1423a3564c8b}')!
BootstrapComponentSupplier comment: 'I have the responsibility to provide Bootstrap components. '!
!BootstrapComponentSupplier categoriesForClass!Willow-Bootstrap-Frontend! !
!BootstrapComponentSupplier methodsFor!

addStatementsTo: aJSScript toCloseDialogsIn: jQueryMatchingDialogContainer matching: dialogSupplier on: aCanvas	aJSScript << (dialogSupplier value: (jQueryMatchingDialogContainer children: 'div')) bootstrapModal hide!

asynchronicButtonLabeled: aRenderable applying: aComponentCommand	^ AsynchronicButtonWebView labeled: aRenderable applying: [ :button | button addClass bootstrap button + aComponentCommand ]!

asynchronicLinkActingAsButtonLabeled: aRenderable applying: aComponentCommand	^ self asynchronicLinkLabeled: aRenderable applying: [ :anchor :constants | (anchor setARIARoleTo: #button) + anchor addClass bootstrap button + aComponentCommand ]!

asynchronicLinkLabeled: aRenderable applying: aComponentCommand	^ LinkWebView asynchronicLabeled: aRenderable applying: aComponentCommand!

checkboxLabeled: aRenderable onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent	^ BootstrapCheckboxWebView		labeled: aRenderable		onModel: anObjectToUseWhenOn		offModel: anObjectToUseWhenOff		applying: aCommandToComponent!

checkboxUnlabeledOnModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent	^ BootstrapCheckboxWebView		onModel: anObjectToUseWhenOn		offModel: anObjectToUseWhenOff		applying: aCommandToComponent!

dateFieldApplying: aComponentCommand		"The datepicker plugin doesn't play nice with the HTML5 date input, so we use a text input instead."	^ DateFieldWebView applying: [ :field | field addClass bootstrap formControl + (field setMaximumLengthTo: 10) + aComponentCommand + BootstrapDatepickerCommand new + field beTextInput ]!

decimalNumberFieldApplying: aComponentCommand	^ NumberFieldWebView applying: [ :field | field addClass bootstrap formControl + field addClass bootstrap textRight + aComponentCommand ] transformingWith: FloatCodec new!

dialogBuilder	^ BootstrapModalBuilder new!

dropdownListApplying: aComponentCommand	^ DropDownListWebView applying: [ :field | field addClass bootstrap formControl + aComponentCommand + BootstrapSelectCommand new ]!

dropdownMenuBuilder	^ BootstrapDropdownMenuBuilder using: self!

fieldSetContaining: aWebView applying: fieldSetCommand withLegend: aTitle applying: legendCommand	^ FieldSetWebView		containing: aWebView		applying: fieldSetCommand		withLegend: aTitle		applying: legendCommand!

gridBuilder	^ BootstrapGridBuilder new!

initializeUsing: aLibraryCollection	bootstrapLibraries := aLibraryCollection!

inputGroupAddOnWrapping: aRenderable	^ PhrasingContainerWebView wrapping: aRenderable applying: [ :container | container addClass bootstrap inputGroupAddon ]!

inputGroupButtonWrapping: aRenderable	^ PhrasingContainerWebView wrapping: aRenderable applying: [ :container | container addClass bootstrap inputGroupButton ]!

multiLineTextFieldApplying: aComponentCommand	^ TextFieldWebView multiLineTriggeringOnChangeApplying: [ :field | field addClass bootstrap formControl + aComponentCommand ]!

multipleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand	^ MultipleSelectionListBoxWebView displayingAtOnce: aNumberOfElements applying: [ :field | field addClass bootstrap formControl + aComponentCommand ]!

naturalNumberFieldApplying: aComponentCommand	^ NumberFieldWebView applying: [ :field | field addClass bootstrap formControl + field addClass bootstrap textRight + aComponentCommand + field boundNotNegative ] transformingWith: NaturalNumberCodec new!

notificationBuilder 	^BootstrapNotificationBuilder new!

panelBuilder	^ BootstrapPanelBuilder new!

pillsBuilder		^BootstrapToggablePillsBuilder new!

radioRenderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand	^BootstrapRadioWebView 		renderingWith: aRenderingBlock 		applyingToLabel: aLabelCommand		applyingToInput: anInputCommand!

singleButtonDropdownBuilder	^ BootstrapSingleButtonDropdownBuilder using: self!

singleLineTextFieldApplying: aComponentCommand	^ TextFieldWebView singleLineTriggeringOnChangeApplying: [ :field | field addClass bootstrap formControl + aComponentCommand ]!

singleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand	^ SingleSelectionListBoxWebView displayingAtOnce: aNumberOfElements applying: [ :listBox | listBox addClass bootstrap formControl + aComponentCommand ]!

splitButtonDropdownBuilder	^ BootstrapSplitButtonDropdownBuilder using: self!

synchronicButtonLabeled: aRenderable applying: aComponentCommand evaluating: anActionBlock	^ SynchronicSubmitButtonWebView		labeled: aRenderable		applying: [ :field | field addClass bootstrap button + aComponentCommand ]		evaluating: anActionBlock!

tableBuilder	^ TableWebViewBuilder new		apply: [ :table | table addClass bootstrap table ];		yourself!

tabsBuilder	^ BootstrapToggableTabsBuilder new!

unorderedListApplying: aCommandToList listing: aCollection applyingToEach: aCommandToItem	^ UnorderedListWebView		applying: [ :list | list addClass bootstrap listGroup + aCommandToList ]		listing: aCollection		applyingToEach: [ :listItem | listItem addClass bootstrap listGroupItem + aCommandToItem ]!

updateRoot: aRoot	aRoot beHtml5.	aRoot meta		responseHeaderName: 'X-UA-Compatible';		content: 'IE=edge'.	aRoot meta		name: 'viewport';		content: 'width=device-width, initial-scale=1.0'.	bootstrapLibraries do: [ :library | library updateRoot: aRoot ].	WillowBootstrapFileMetadataLibrary default updateRoot: aRoot! !
!BootstrapComponentSupplier categoriesFor: #addStatementsTo:toCloseDialogsIn:matching:on:!Interaction!public! !
!BootstrapComponentSupplier categoriesFor: #asynchronicButtonLabeled:applying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #asynchronicLinkActingAsButtonLabeled:applying:!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #asynchronicLinkLabeled:applying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #checkboxLabeled:onModel:offModel:applying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #checkboxUnlabeledOnModel:offModel:applying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #dateFieldApplying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #decimalNumberFieldApplying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #dialogBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #dropdownListApplying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #dropdownMenuBuilder!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #fieldSetContaining:applying:withLegend:applying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #gridBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #initializeUsing:!initialization!public! !
!BootstrapComponentSupplier categoriesFor: #inputGroupAddOnWrapping:!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #inputGroupButtonWrapping:!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #multiLineTextFieldApplying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #multipleSelectionListBoxDisplayingAtOnce:applying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #naturalNumberFieldApplying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #notificationBuilder!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #panelBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #pillsBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #radioRenderingWith:applyingToLabel:applyingToInput:!public!Supplying! !
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

online	^ self		usingLibraries:			{Bootstrap3OnlineLibrary default.			BootstrapSelectOnlineLibrary default.			BootstrapDatepickerOnlineLibrary default.			BootstrapTypeaheadOnlineLibrary default}!

usingLibraries: aLibraryCollection	^ self new initializeUsing: aLibraryCollection!

withBootstrapLibrary: aBootstrapLibrary selectLibrary: aBootstrapSelectLibrary datepickerLibrary: aDatePickerLibrary typeaheadLibrary: aTypeaheadLibrary	^ self		usingLibraries:			{aBootstrapLibrary.			aBootstrapSelectLibrary.			aDatePickerLibrary.			aTypeaheadLibrary}! !
!BootstrapComponentSupplier class categoriesFor: #online!Instance Creation!public! !
!BootstrapComponentSupplier class categoriesFor: #usingLibraries:!private / Instance Creation!public! !
!BootstrapComponentSupplier class categoriesFor: #withBootstrapLibrary:selectLibrary:datepickerLibrary:typeaheadLibrary:!Instance Creation!public! !

