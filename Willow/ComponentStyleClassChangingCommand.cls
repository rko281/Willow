"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #ComponentStyleClassChangingCommand
	instanceVariableNames: 'componentProvider styleToChange transformationMessage transformationProvider'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentStyleClassChangingCommand guid: (GUID fromString: '{33304e0b-1fbf-47fa-81f0-d3413f0cb0f3}')!
ComponentStyleClassChangingCommand comment: 'I''m a WebInteractionCommand allowing to change the css class of a component, which can be done using a specific transformation.'!
!ComponentStyleClassChangingCommand categoriesForClass!Willow-WebInteraction! !
!ComponentStyleClassChangingCommand methodsFor!

applyStyleChangeTo: component	^ component perform: transformationMessage with: styleToChange!

applyStyleChangeToComponentOn: aCanvas	^ self applyStyleChangeTo: (self componentOn: aCanvas)!

clientIndependentActions	^#()!

componentOn: aCanvas	^ componentProvider value: aCanvas!

initializeOn: aComponentProvider altering: aCssStyle sending: aTransformationMessage using: aTransformationProvider	componentProvider := aComponentProvider.	styleToChange := aCssStyle.	transformationMessage := aTransformationMessage.	transformationProvider := aTransformationProvider!

modelLoadingActions	^#()!

priorityActions	^#()!

requiresSerialization	^false!

serverIndependentActions	^ Array with: [ :aScript :aCanvas | aScript << (transformationProvider value:(self applyStyleChangeToComponentOn: aCanvas)) ]! !
!ComponentStyleClassChangingCommand categoriesFor: #applyStyleChangeTo:!private! !
!ComponentStyleClassChangingCommand categoriesFor: #applyStyleChangeToComponentOn:!private! !
!ComponentStyleClassChangingCommand categoriesFor: #clientIndependentActions!accessing!public! !
!ComponentStyleClassChangingCommand categoriesFor: #componentOn:!private! !
!ComponentStyleClassChangingCommand categoriesFor: #initializeOn:altering:sending:using:!initialize/release!public! !
!ComponentStyleClassChangingCommand categoriesFor: #modelLoadingActions!accessing!public! !
!ComponentStyleClassChangingCommand categoriesFor: #priorityActions!accessing!public! !
!ComponentStyleClassChangingCommand categoriesFor: #requiresSerialization!public!testing! !
!ComponentStyleClassChangingCommand categoriesFor: #serverIndependentActions!accessing!public! !

!ComponentStyleClassChangingCommand class methodsFor!

on: aComponentProvider altering: aCssClass sending: aTransformationMessage	^ self		on: aComponentProvider		altering: aCssClass		sending: aTransformationMessage		using: [ :component | component ]!

on: aComponentProvider altering: aCssClass sending: aTransformationMessage using: aTransformationAction	^self new		initializeOn: aComponentProvider		altering: aCssClass		sending: aTransformationMessage		using: aTransformationAction! !
!ComponentStyleClassChangingCommand class categoriesFor: #on:altering:sending:!instance creation!public! !
!ComponentStyleClassChangingCommand class categoriesFor: #on:altering:sending:using:!instance creation!public! !

