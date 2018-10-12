"Filed out from Dolphin Smalltalk 7"!

BinaryChoiceWebViewBehavior subclass: #CheckboxWebView
	instanceVariableNames: 'commandToComponent interactionInterpreter identifierAssigner isChecked labelOptional'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CheckboxWebView guid: (GUID fromString: '{45ff9b71-d8c0-42d9-a4b0-9d6bd3b4d7bd}')!
CheckboxWebView comment: 'I''m a binary choice web view implemented as a checkbox'!
!CheckboxWebView categoriesForClass!Willow-WebViews! !
!CheckboxWebView methodsFor!

identifier	^ identifierAssigner assignedIdentifier!

identifyIn: aCanvas	^ identifierAssigner identifyIn: aCanvas!

initializeLabeledAccordingTo: anOptionalLabel applying: aCommandToComponent	labelOptional := anOptionalLabel.	commandToComponent := aCommandToComponent.	interactionInterpreter := WebInteractionInterpreter forClickOnHiddenInputDependentComponent.	identifierAssigner := IdentifierAssigner prefixedBy: 'checkbox'.	isChecked := true!

onTrigger	^ interactionInterpreter!

renderContentOn: aCanvas	| checkbox |	checkbox := aCanvas checkbox.	commandToComponent applyTo: checkbox on: aCanvas.	checkbox		value: isChecked;		callback: [ :value | 			value = isChecked				ifFalse: [ self toggleCurrentSelection ] ].	self renderOptionalLabelRelatedTo: checkbox on: aCanvas.	interactionInterpreter applyTo: checkbox on: aCanvas!

renderOptionalLabelRelatedTo: checkbox on: aCanvas	labelOptional		withContentDo: [ :label | 			| id |			id := self identifyIn: aCanvas.			checkbox id: id.			aCanvas label				for: id;				with: label ]		ifUnused: [ identifierAssigner withAssignedIdentifierDo: [ :id | checkbox id: id ] ]!

selectOffModel	super selectOffModel.	isChecked := false!

selectOnModel	super selectOnModel.	isChecked := true!

toggleCurrentSelection	isChecked := isChecked not.	super toggleCurrentSelection! !
!CheckboxWebView categoriesFor: #identifier!accessing!public! !
!CheckboxWebView categoriesFor: #identifyIn:!configuring!public! !
!CheckboxWebView categoriesFor: #initializeLabeledAccordingTo:applying:!initialization!public! !
!CheckboxWebView categoriesFor: #onTrigger!configuring!public! !
!CheckboxWebView categoriesFor: #renderContentOn:!public!rendering! !
!CheckboxWebView categoriesFor: #renderOptionalLabelRelatedTo:on:!public!rendering / private! !
!CheckboxWebView categoriesFor: #selectOffModel!Binary Choice/API!public! !
!CheckboxWebView categoriesFor: #selectOnModel!Binary Choice/API!public! !
!CheckboxWebView categoriesFor: #toggleCurrentSelection!Binary Choice/API!public! !

!CheckboxWebView class methodsFor!

labeled: aRenderable onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent	^ self		labeledAccordingTo: (Optional containing: aRenderable)		onModel: anObjectToUseWhenOn		offModel: anObjectToUseWhenOff		applying: aCommandToComponent!

labeledAccordingTo: aLabelOptional onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent	^ (super onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff)		initializeLabeledAccordingTo: aLabelOptional		applying: aCommandToComponent asWebComponentCommand!

onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff	^ self onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: [ :checkbox |  ]!

onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent	^ self		labeledAccordingTo: Optional unused		onModel: anObjectToUseWhenOn		offModel: anObjectToUseWhenOff		applying: aCommandToComponent! !
!CheckboxWebView class categoriesFor: #labeled:onModel:offModel:applying:!instance creation!public! !
!CheckboxWebView class categoriesFor: #labeledAccordingTo:onModel:offModel:applying:!private/instance creation!public! !
!CheckboxWebView class categoriesFor: #onModel:offModel:!instance creation!public! !
!CheckboxWebView class categoriesFor: #onModel:offModel:applying:!instance creation!public! !

