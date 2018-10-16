"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #WebComponentCommandBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'Willow'
	classInstanceVariableNames: ''!
WebComponentCommandBuilder guid: (GUID fromString: '{74f70456-bb27-4fd7-8163-9cceafad32d1}')!
WebComponentCommandBuilder comment: 'I''m a builder to ease the creation of component commands'!
!WebComponentCommandBuilder categoriesForClass!Willow-Frontend! !
!WebComponentCommandBuilder methodsFor!

addClass	^ ComponentClassificationCommandBuilder new!

addScript	^ ComponentScriptCommandBuilder new!

beAutofocused	^ AutoFocusComponentCommand new!

beDateInput	^ InputModeCommand asDate!

beDisabled	^ DisableComponentCommand new!

beEmailInput	^ InputModeCommand asEmail!

beNumberInput	^ InputModeCommand asNumber!

bePasswordInput	^ InputModeCommand asPassword!

beReadOnly	^ ComponentReadOnlyCommand new!

beRequired	^ ComponentRequiredCommand new!

beTextInput	^ InputModeCommand asText!

boundBetween: aLowerBound and: anUpperBound	^ ComponentBoundaryCommand between: aLowerBound and: anUpperBound!

boundNotNegative	^ ComponentBoundaryCommand nonNegative!

deselectAllOptions	^ DeselectAllOptionsCommand new!

disableTabCycle	^ DisableComponentTabCycleCommand new!

labelItemsWith: aBlockClosure	^ ListLabelingCommand with: aBlockClosure!

setARIAAttribute: aName to: aValue	^ ComponentAccessibilityEnrichmentCommand toDeclare: aName with: aValue!

setARIARoleTo: aRoleNameOrSymbol	^ self setAttribute: 'role' to: Constants >> #aria >> aRoleNameOrSymbol!

setAttribute: aName to: aValue	^ ComponentAttributeCommand named: aName with: aValue!

setCallbackTo: aBlockClosure	^ ComponentCallbackSettingCommand setting: aBlockClosure!

setData: aName to: aValue	^ ComponentMetadataCommand toDeclare: aName with: aValue!

setMaximumLengthTo: anInteger	^ InputFieldMaxLengthCommand allowingUpTo: anInteger!

setNameTo: aString	^ ComponentNamingCommand assigning: aString!

setPlaceholderTo: aSuggestion	^ ComponentPlaceholderCommand suggestedBy: aSuggestion!

setStyleTo: aDeclarationAction	| declarationBlock |	declarationBlock := CssDeclarationBlock new.	aDeclarationAction cull: declarationBlock cull: Constants >> #css.	^ SetComponentStyleCommand setting: declarationBlock!

setTabIndexTo: anInteger	^ SetComponentTabIndexCommand setting: anInteger!

setTitleTo: aTitle	^ ComponentTitleCommand toSet: aTitle !

when: aCondition apply: aComponentCommand	^ ConditionalComponentCommand applying: aComponentCommand when: aCondition! !
!WebComponentCommandBuilder categoriesFor: #addClass!Configuring!public! !
!WebComponentCommandBuilder categoriesFor: #addScript!Configuring!public! !
!WebComponentCommandBuilder categoriesFor: #beAutofocused!Building!public! !
!WebComponentCommandBuilder categoriesFor: #beDateInput!Building!public! !
!WebComponentCommandBuilder categoriesFor: #beDisabled!Building!public! !
!WebComponentCommandBuilder categoriesFor: #beEmailInput!Building!public! !
!WebComponentCommandBuilder categoriesFor: #beNumberInput!Building!public! !
!WebComponentCommandBuilder categoriesFor: #bePasswordInput!Building!public! !
!WebComponentCommandBuilder categoriesFor: #beReadOnly!Building!public! !
!WebComponentCommandBuilder categoriesFor: #beRequired!Building!public! !
!WebComponentCommandBuilder categoriesFor: #beTextInput!Building!public! !
!WebComponentCommandBuilder categoriesFor: #boundBetween:and:!Building!public! !
!WebComponentCommandBuilder categoriesFor: #boundNotNegative!Building!public! !
!WebComponentCommandBuilder categoriesFor: #deselectAllOptions!Building!public! !
!WebComponentCommandBuilder categoriesFor: #disableTabCycle!Building!public! !
!WebComponentCommandBuilder categoriesFor: #labelItemsWith:!Building!public! !
!WebComponentCommandBuilder categoriesFor: #setARIAAttribute:to:!Building!public! !
!WebComponentCommandBuilder categoriesFor: #setARIARoleTo:!Building!public! !
!WebComponentCommandBuilder categoriesFor: #setAttribute:to:!Building!public! !
!WebComponentCommandBuilder categoriesFor: #setCallbackTo:!Building!public! !
!WebComponentCommandBuilder categoriesFor: #setData:to:!Building!public! !
!WebComponentCommandBuilder categoriesFor: #setMaximumLengthTo:!Building!public! !
!WebComponentCommandBuilder categoriesFor: #setNameTo:!Building!public! !
!WebComponentCommandBuilder categoriesFor: #setPlaceholderTo:!Building!public! !
!WebComponentCommandBuilder categoriesFor: #setStyleTo:!Building!public! !
!WebComponentCommandBuilder categoriesFor: #setTabIndexTo:!Building!public! !
!WebComponentCommandBuilder categoriesFor: #setTitleTo:!Building!public! !
!WebComponentCommandBuilder categoriesFor: #when:apply:!Building!public! !

