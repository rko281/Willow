"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #TemporarilyDisablingCommand
	instanceVariableNames: 'componentProvider viewWhileDisabled'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TemporarilyDisablingCommand guid: (GUID fromString: '{c00b30be-1f0a-4de9-b53f-7e41c378e3f6}')!
TemporarilyDisablingCommand comment: 'I''m a WebInteractionCommand that disable an specific component during an AJAX call execution.'!
!TemporarilyDisablingCommand categoriesForClass!Willow-WebInteraction! !
!TemporarilyDisablingCommand methodsFor!

clientIndependentActions	^#()!

componentToDisableOn: aCanvas	^componentProvider value: aCanvas!

disabledAttributeName	^ Constants >> #willow >> #disabledAttributeName!

disabledComponentVariableName	^'disabledComponent'!

initializeTransformingComponentMatching: aComponentProvider into: aViewWhileDisabled	viewWhileDisabled := aViewWhileDisabled.	componentProvider := aComponentProvider!

modelLoadingActions	^#()!

priorityActions	^ Array		with: [ :anAsynchronousCall :aCanvas | 			anAsynchronousCall				onComplete:					((aCanvas jQuery class: Classification >> #disabledComponent)						attributeAt: self disabledAttributeName put: false;						removeClass: Classification >> #disabledComponent;						call: 'html' with: (aCanvas jQuery alias: self disabledComponentVariableName)) ]!

requiresSerialization	^false!

serverIndependentActions	^ Array		with: [ :script :canvas | 			script << ((self componentToDisableOn: canvas) html assignTo: self disabledComponentVariableName).			script				<<					((self componentToDisableOn: canvas)						addClass: Classification >> #disabledComponent;						attributeAt: self disabledAttributeName put: true;						html: viewWhileDisabled) ]! !
!TemporarilyDisablingCommand categoriesFor: #clientIndependentActions!accessing!public! !
!TemporarilyDisablingCommand categoriesFor: #componentToDisableOn:!private! !
!TemporarilyDisablingCommand categoriesFor: #disabledAttributeName!private! !
!TemporarilyDisablingCommand categoriesFor: #disabledComponentVariableName!private! !
!TemporarilyDisablingCommand categoriesFor: #initializeTransformingComponentMatching:into:!initialization!public! !
!TemporarilyDisablingCommand categoriesFor: #modelLoadingActions!accessing!public! !
!TemporarilyDisablingCommand categoriesFor: #priorityActions!accessing!public! !
!TemporarilyDisablingCommand categoriesFor: #requiresSerialization!public!testing! !
!TemporarilyDisablingCommand categoriesFor: #serverIndependentActions!accessing!public! !

!TemporarilyDisablingCommand class methodsFor!

transforming: anIdentifieView into: aViewWhileDisabled	^ self		transformingComponentMatching: [ :canvas | 			anIdentifieView identifyIn: canvas.			canvas jQuery id: anIdentifieView identifier ]		into: aViewWhileDisabled!

transformingComponentMatching: aComponentProvider into: aViewWhileDisabled	^self new initializeTransformingComponentMatching: aComponentProvider into: aViewWhileDisabled!

transformingCurrentViewInto: aViewWhileDisabled	^self transformingComponentMatching: [:canvas | canvas jQuery this] into: aViewWhileDisabled! !
!TemporarilyDisablingCommand class categoriesFor: #transforming:into:!Instance Creation!public! !
!TemporarilyDisablingCommand class categoriesFor: #transformingComponentMatching:into:!Instance Creation!public! !
!TemporarilyDisablingCommand class categoriesFor: #transformingCurrentViewInto:!Instance Creation!public! !

