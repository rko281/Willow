"Filed out from Dolphin Smalltalk 7"!

BinaryChoiceWebViewBehavior subclass: #BootstrapCheckboxWebView
	instanceVariableNames: 'commandToComponent interactionInterpreter identifierAssigner isChecked labelOptional'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapCheckboxWebView guid: (GUID fromString: '{ebcfc344-d2bc-4da3-a04c-13ee3853cc5d}')!
BootstrapCheckboxWebView comment: 'I''m a checkbox specifically designed to use the html structure required by Bootstrap.'!
!BootstrapCheckboxWebView categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapCheckboxWebView methodsFor!

identifier	^ identifierAssigner assignedIdentifier!

identifyIn: aCanvas	^ identifierAssigner identifyIn: aCanvas!

initializeLabeledAccordingTo: anOptionalLabel applying: aCommandToComponent	labelOptional := anOptionalLabel.	commandToComponent := aCommandToComponent.	interactionInterpreter := WebInteractionInterpreter forClickOnHiddenInputDependentComponent.	identifierAssigner := IdentifierAssigner prefixedBy: 'checkbox'.	isChecked := true!

onTrigger	^ interactionInterpreter!

renderCheckboxOn: aCanvas	| checkbox |	checkbox := aCanvas checkbox.	checkbox		apply: commandToComponent;		value: isChecked;		callback: [ :value | 			value = isChecked				ifFalse: [ self toggleCurrentSelection ] ].	identifierAssigner withAssignedIdentifierDo: [ :id | checkbox id: id ].	checkbox interactUsing: interactionInterpreter!

renderContentOn: aCanvas	aCanvas div with: [ self renderLabelOn: aCanvas ] applying: [ :div | div addClass bootstrap checkbox + commandToComponent ]!

renderLabelOn: aCanvas	aCanvas		label: [ self renderCheckboxOn: aCanvas.			labelOptional withContentDo: [ :label | aCanvas render: label ] ]!

selectOffModel	super selectOffModel.	isChecked := false!

selectOnModel	super selectOnModel.	isChecked := true!

toggleCurrentSelection	isChecked := isChecked not.	super toggleCurrentSelection! !
!BootstrapCheckboxWebView categoriesFor: #identifier!accessing!public! !
!BootstrapCheckboxWebView categoriesFor: #identifyIn:!configuring!public! !
!BootstrapCheckboxWebView categoriesFor: #initializeLabeledAccordingTo:applying:!initialization!public! !
!BootstrapCheckboxWebView categoriesFor: #onTrigger!configuring!public! !
!BootstrapCheckboxWebView categoriesFor: #renderCheckboxOn:!public!rendering / private! !
!BootstrapCheckboxWebView categoriesFor: #renderContentOn:!public!rendering! !
!BootstrapCheckboxWebView categoriesFor: #renderLabelOn:!public!rendering / private! !
!BootstrapCheckboxWebView categoriesFor: #selectOffModel!Binary Choice/API!public! !
!BootstrapCheckboxWebView categoriesFor: #selectOnModel!Binary Choice/API!public! !
!BootstrapCheckboxWebView categoriesFor: #toggleCurrentSelection!Binary Choice/API!public! !

!BootstrapCheckboxWebView class methodsFor!

labeled: aRenderable onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent	^ self		labeledAccordingTo: (Optional containing: aRenderable)		onModel: anObjectToUseWhenOn		offModel: anObjectToUseWhenOff		applying: aCommandToComponent!

labeledAccordingTo: aLabelOptional onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent	^ (super onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff)		initializeLabeledAccordingTo: aLabelOptional		applying: aCommandToComponent asWebComponentCommand !

onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff	^ self		onModel: anObjectToUseWhenOn		offModel: anObjectToUseWhenOff		applying: [ :checkbox |  ]!

onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent	^ self		labeledAccordingTo: Optional unused		onModel: anObjectToUseWhenOn		offModel: anObjectToUseWhenOff		applying: aCommandToComponent! !
!BootstrapCheckboxWebView class categoriesFor: #labeled:onModel:offModel:applying:!instance creation!public! !
!BootstrapCheckboxWebView class categoriesFor: #labeledAccordingTo:onModel:offModel:applying:!private/instance creation!public! !
!BootstrapCheckboxWebView class categoriesFor: #onModel:offModel:!instance creation!public! !
!BootstrapCheckboxWebView class categoriesFor: #onModel:offModel:applying:!instance creation!public! !

