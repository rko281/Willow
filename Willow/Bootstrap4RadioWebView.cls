"Filed out from Dolphin Smalltalk 7"!

BootstrapRadioWebView subclass: #Bootstrap4RadioWebView
	instanceVariableNames: 'inputContainerCommand additionalInputCommand additionalLabelCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4RadioWebView guid: (GUID fromString: '{dcd90018-7d6b-4a41-b4f1-61dbf56ac96e}')!
Bootstrap4RadioWebView comment: ''!
!Bootstrap4RadioWebView categoriesForClass!Willow-Bootstrap-4-WebViews! !
!Bootstrap4RadioWebView methodsFor!

beCustom	inputContainerCommand := [ :div | div addClass bootstrap4 customControl + div addClass bootstrap4 customRadio ].	additionalInputCommand := [ :radio | radio addClass bootstrap4 customControlInput ].	additionalLabelCommand := [ :label | label addClass bootstrap4 customControlLabel ]!

initializeRenderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand	super		initializeRenderingWith: aRenderingBlock		applyingToLabel: aLabelCommand		applyingToInput: anInputCommand.	additionalLabelCommand := [ :label | label addClass bootstrap4 formCheckLabel ].	additionalInputCommand := [ :radio | radio addClass bootstrap4 formCheckInput ].	inputContainerCommand := [ :div | div addClass bootstrap4 formCheck ]!

inputCommand	^ super inputCommand + additionalInputCommand!

labelCommand	^ labelCommand + additionalLabelCommand!

renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas	| radioButton |	radioButton := super renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas.	aCanvas label		for: radioButton id;		with: [ self renderLabelContentFor: anElement on: aCanvas ] applying: self labelCommand!

renderRadioButtonFor: anElement asPartOf: aRadioGroup on: aCanvas	aCanvas div		with: [ self renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas ]		applying: inputContainerCommand! !
!Bootstrap4RadioWebView categoriesFor: #beCustom!configuring!public! !
!Bootstrap4RadioWebView categoriesFor: #initializeRenderingWith:applyingToLabel:applyingToInput:!initialization!public! !
!Bootstrap4RadioWebView categoriesFor: #inputCommand!private / accessing!public! !
!Bootstrap4RadioWebView categoriesFor: #labelCommand!private / accessing!public! !
!Bootstrap4RadioWebView categoriesFor: #renderInputFor:asPartOf:on:!private/rendering!public! !
!Bootstrap4RadioWebView categoriesFor: #renderRadioButtonFor:asPartOf:on:!private/rendering!public! !

