"Filed out from Dolphin Smalltalk 7"!

BootstrapComponentSupplier subclass: #Bootstrap3ComponentSupplier
	instanceVariableNames: 'bootstrapLibraries'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3ComponentSupplier guid: (GUID fromString: '{b64e7661-20fd-4d21-a410-78ab591804b6}')!
Bootstrap3ComponentSupplier comment: 'I have the responsibility to provide Bootstrap components. '!
!Bootstrap3ComponentSupplier categoriesForClass!Willow-Bootstrap-3-Frontend! !
!Bootstrap3ComponentSupplier methodsFor!

checkboxLabeled: aRenderable onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent	^ Bootstrap3CheckboxWebView		labeled: aRenderable		onModel: anObjectToUseWhenOn		offModel: anObjectToUseWhenOff		applying: aCommandToComponent!

checkboxUnlabeledOnModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent	^ Bootstrap3CheckboxWebView		onModel: anObjectToUseWhenOn		offModel: anObjectToUseWhenOff		applying: aCommandToComponent!

fieldAddonBuilder	^ Bootstrap3FieldAddonBuilder new !

gridBuilder	^ Bootstrap3GridBuilder new!

helpTextBoundTo: aFieldWebView describedBy: aHelpText	^ Bootstrap3HelpTextWebView boundTo: aFieldWebView describedBy: aHelpText!

initializeUsing: aLibraryCollection	bootstrapLibraries := aLibraryCollection!

labeledFieldApplying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField	^ BootstrapLabeledFieldWebView		applying: aCommandToContainer		displaying: thePhrasingContent		applying: [ :label | label addClass bootstrap3 controlLabel + aCommandToLabel ] asWebComponentCommand		boundTo: aFieldWebView		applying: aCommandToField!

navigationDropdownMenuBuilder	^ Bootstrap3NavigationDropdownMenuBuilder using: self!

panelBuilder	^ Bootstrap3PanelBuilder new!

pillsBuilder		^BootstrapToggablePillsBuilder new!

radioRenderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand	^Bootstrap3RadioWebView 		renderingWith: aRenderingBlock 		applyingToLabel: aLabelCommand		applyingToInput: anInputCommand!

singleButtonDropdownBuilder	^ Bootstrap3SingleButtonDropdownBuilder using: self!

splitButtonDropdownBuilder	^ Bootstrap3SplitButtonDropdownBuilder using: self!

tabsBuilder	^ BootstrapToggableTabsBuilder new!

updateRoot: aRoot	super updateRoot: aRoot.	aRoot meta		responseHeaderName: 'X-UA-Compatible';		content: 'IE=edge'.	aRoot meta		name: 'viewport';		content: 'width=device-width, initial-scale=1.0'.	bootstrapLibraries do: [ :library | library updateRoot: aRoot ].	WillowBootstrap3FileMetadataLibrary default updateRoot: aRoot! !
!Bootstrap3ComponentSupplier categoriesFor: #checkboxLabeled:onModel:offModel:applying:!public!Supplying! !
!Bootstrap3ComponentSupplier categoriesFor: #checkboxUnlabeledOnModel:offModel:applying:!public!Supplying! !
!Bootstrap3ComponentSupplier categoriesFor: #fieldAddonBuilder!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #gridBuilder!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #helpTextBoundTo:describedBy:!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #initializeUsing:!initialization!public! !
!Bootstrap3ComponentSupplier categoriesFor: #labeledFieldApplying:displaying:applying:boundTo:applying:!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #navigationDropdownMenuBuilder!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #panelBuilder!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #pillsBuilder!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #radioRenderingWith:applyingToLabel:applyingToInput:!public!Supplying! !
!Bootstrap3ComponentSupplier categoriesFor: #singleButtonDropdownBuilder!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #splitButtonDropdownBuilder!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #tabsBuilder!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #updateRoot:!Processing!public! !

!Bootstrap3ComponentSupplier class methodsFor!

online	^ self		usingLibraries:			{Bootstrap3OnlineLibrary default.			BootstrapSelectOnlineLibrary default.			BootstrapDatepickerOnlineLibrary default.			BootstrapTypeaheadOnlineLibrary default}!

usingLibraries: aLibraryCollection	^ self new initializeUsing: aLibraryCollection!

withBootstrapLibrary: aBootstrapLibrary selectLibrary: aBootstrapSelectLibrary datepickerLibrary: aDatePickerLibrary typeaheadLibrary: aTypeaheadLibrary	^ self		usingLibraries:			{aBootstrapLibrary.			aBootstrapSelectLibrary.			aDatePickerLibrary.			aTypeaheadLibrary}! !
!Bootstrap3ComponentSupplier class categoriesFor: #online!Instance Creation!public! !
!Bootstrap3ComponentSupplier class categoriesFor: #usingLibraries:!private / Instance Creation!public! !
!Bootstrap3ComponentSupplier class categoriesFor: #withBootstrapLibrary:selectLibrary:datepickerLibrary:typeaheadLibrary:!Instance Creation!public! !

