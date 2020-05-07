"Filed out from Dolphin Smalltalk 7"!

BootstrapCheckboxWebView subclass: #Bootstrap4CheckboxWebView
	instanceVariableNames: 'additionalInputCommand commandToContainer commandToLabel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4CheckboxWebView guid: (GUID fromString: '{90be72ed-96ee-4fc5-bf97-80f793fce4d9}')!
Bootstrap4CheckboxWebView comment: ''!
!Bootstrap4CheckboxWebView categoriesForClass!Willow-Bootstrap-4-WebViews! !
!Bootstrap4CheckboxWebView methodsFor!

beCustom	self beCustomControlApplying: [ :div | div addClass bootstrap4 customCheckbox ]!

beCustomControlApplying: aCommand	commandToContainer := [ :div | div addClass bootstrap4 customControl + aCommand ].	commandToLabel := [ :label | label addClass bootstrap4 customControlLabel ].	additionalInputCommand := [ :input | input addClass bootstrap4 customControlInput ]		asWebComponentCommand.	labelOptional		withContentDo: [  ]		ifUnused: [ additionalInputCommand := additionalInputCommand				+ [ :input | input addClass bootstrap4 positionStatic ]			]!

beSwitch	self beCustomControlApplying: [ :div | div addClass bootstrap4 customSwitch ]!

commandToContainer	^ commandToContainer asWebComponentCommand + commandToComponent!

commandToInput	^super commandToInput + additionalInputCommand!

initializeDefaultCommands	commandToContainer := [ :div | div addClass bootstrap4 formCheck ].	commandToLabel := [ :label | label addClass bootstrap4 formCheckLabel ].	additionalInputCommand := [ :input | input addClass bootstrap4 formCheckInput ]		asWebComponentCommand.	labelOptional		withContentDo: [  ]		ifUnused: [ additionalInputCommand := additionalInputCommand				+ [ :input | input addClass bootstrap4 positionStatic ]			]!

initializeLabeledAccordingTo: anOptionalLabel applying: aCommandToComponent	super initializeLabeledAccordingTo: anOptionalLabel applying: aCommandToComponent.	self initializeDefaultCommands!

renderContentOn: aCanvas	aCanvas div		with: [ labelOptional withContentDo: [ self identifyIn: aCanvas ].			self				renderCheckboxOn: aCanvas;				renderLabelOn: aCanvas			]		applying: self commandToContainer!

renderLabelOn: aCanvas	labelOptional		withContentDo: [ :labelContent | 			aCanvas label				for: self identifier;				with: labelContent applying: commandToLabel			]! !
!Bootstrap4CheckboxWebView categoriesFor: #beCustom!configuring!public! !
!Bootstrap4CheckboxWebView categoriesFor: #beCustomControlApplying:!private / configuring!public! !
!Bootstrap4CheckboxWebView categoriesFor: #beSwitch!configuring!public! !
!Bootstrap4CheckboxWebView categoriesFor: #commandToContainer!private / rendering!public! !
!Bootstrap4CheckboxWebView categoriesFor: #commandToInput!private / rendering!public! !
!Bootstrap4CheckboxWebView categoriesFor: #initializeDefaultCommands!initialization!public! !
!Bootstrap4CheckboxWebView categoriesFor: #initializeLabeledAccordingTo:applying:!initialization!public! !
!Bootstrap4CheckboxWebView categoriesFor: #renderContentOn:!public!rendering! !
!Bootstrap4CheckboxWebView categoriesFor: #renderLabelOn:!private / rendering!public! !

