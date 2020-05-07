"Filed out from Dolphin Smalltalk 7"!

BootstrapComponentSupplier subclass: #Bootstrap4ComponentSupplier
	instanceVariableNames: 'bootstrapLibraries'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4ComponentSupplier guid: (GUID fromString: '{4924288e-4186-459b-be71-ed73a258c833}')!
Bootstrap4ComponentSupplier comment: 'I have the responsibility to provide Bootstrap 4 components. '!
!Bootstrap4ComponentSupplier categoriesForClass!Willow-Bootstrap-4-Frontend! !
!Bootstrap4ComponentSupplier methodsFor!

cardBuilder	^ Bootstrap4CardBuilder using: self!

cardLayoutBuilder	^ Bootstrap4CardLayoutBuilder using: self!

checkboxLabeled: aRenderable onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent	^ Bootstrap4CheckboxWebView		labeled: aRenderable		onModel: anObjectToUseWhenOn		offModel: anObjectToUseWhenOff		applying: aCommandToComponent!

checkboxUnlabeledOnModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent	^ Bootstrap4CheckboxWebView		onModel: anObjectToUseWhenOn		offModel: anObjectToUseWhenOff		applying: aCommandToComponent!

fieldAddonBuilder	^ Bootstrap4FieldAddonBuilder new!

gridBuilder	^ Bootstrap4GridBuilder new!

helpTextBoundTo: aFieldWebView describedBy: aHelpText	^ Bootstrap4HelpTextWebView boundTo: aFieldWebView describedBy: aHelpText!

initializeUsing: aLibraryCollection	bootstrapLibraries := aLibraryCollection!

labeledFieldApplying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField	^ BootstrapLabeledFieldWebView		applying: aCommandToContainer		displaying: thePhrasingContent		applying: aCommandToLabel		boundTo: aFieldWebView		applying: aCommandToField!

navigationDropdownMenuBuilder	^ Bootstrap4NavigationDropdownMenuBuilder using: self!

panelBuilder	^ self cardBuilder!

pillsBuilder	^ BootstrapToggablePillsBuilder new		beBootstrap4Aware;		yourself!

radioRenderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand	^Bootstrap4RadioWebView 		renderingWith: aRenderingBlock 		applyingToLabel: aLabelCommand		applyingToInput: anInputCommand!

singleButtonDropdownBuilder	^ Bootstrap4SingleButtonDropdownBuilder using: self!

splitButtonDropdownBuilder	^ Bootstrap4SplitButtonDropdownBuilder using: self!

tableBuilder	^ TableWebViewBuilder new		apply: [ :table | table addClass bootstrap4 table ];		yourself!

tabsBuilder	^ BootstrapToggableTabsBuilder new		beBootstrap4Aware;		yourself!

updateRoot: aRoot	super updateRoot: aRoot.	aRoot meta charset: 'utf-8'.	aRoot meta		name: 'viewport';		content: 'width=device-width, initial-scale=1.0, shrink-to-fit=no'.	bootstrapLibraries do: [ :library | library updateRoot: aRoot ].	WillowBootstrapFileMetadataLibrary default updateRoot: aRoot! !
!Bootstrap4ComponentSupplier categoriesFor: #cardBuilder!public!Supplying / Non Portable! !
!Bootstrap4ComponentSupplier categoriesFor: #cardLayoutBuilder!public!Supplying / Non Portable! !
!Bootstrap4ComponentSupplier categoriesFor: #checkboxLabeled:onModel:offModel:applying:!public!Supplying! !
!Bootstrap4ComponentSupplier categoriesFor: #checkboxUnlabeledOnModel:offModel:applying:!public!Supplying! !
!Bootstrap4ComponentSupplier categoriesFor: #fieldAddonBuilder!public!Supplying / Non Portable! !
!Bootstrap4ComponentSupplier categoriesFor: #gridBuilder!public!Supplying / Non Portable! !
!Bootstrap4ComponentSupplier categoriesFor: #helpTextBoundTo:describedBy:!public!Supplying / Non Portable! !
!Bootstrap4ComponentSupplier categoriesFor: #initializeUsing:!initialization!public! !
!Bootstrap4ComponentSupplier categoriesFor: #labeledFieldApplying:displaying:applying:boundTo:applying:!public!Supplying / Non Portable! !
!Bootstrap4ComponentSupplier categoriesFor: #navigationDropdownMenuBuilder!public!Supplying / Non Portable! !
!Bootstrap4ComponentSupplier categoriesFor: #panelBuilder!public!Supplying / Non Portable! !
!Bootstrap4ComponentSupplier categoriesFor: #pillsBuilder!public!Supplying / Non Portable! !
!Bootstrap4ComponentSupplier categoriesFor: #radioRenderingWith:applyingToLabel:applyingToInput:!public!Supplying! !
!Bootstrap4ComponentSupplier categoriesFor: #singleButtonDropdownBuilder!public!Supplying / Non Portable! !
!Bootstrap4ComponentSupplier categoriesFor: #splitButtonDropdownBuilder!public!Supplying / Non Portable! !
!Bootstrap4ComponentSupplier categoriesFor: #tableBuilder!public!Supplying! !
!Bootstrap4ComponentSupplier categoriesFor: #tabsBuilder!public!Supplying / Non Portable! !
!Bootstrap4ComponentSupplier categoriesFor: #updateRoot:!Processing!public! !

!Bootstrap4ComponentSupplier class methodsFor!

online	^ self		usingLibraries:			{Bootstrap4OnlineLibrary default.			BootstrapSelectOnlineLibrary default.			BootstrapDatepickerOnlineLibrary default.			BootstrapTypeaheadOnlineLibrary default}!

usingLibraries: aLibraryCollection	^ self new initializeUsing: aLibraryCollection! !
!Bootstrap4ComponentSupplier class categoriesFor: #online!Instance Creation!public! !
!Bootstrap4ComponentSupplier class categoriesFor: #usingLibraries:!private / Instance Creation!public! !

