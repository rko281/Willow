"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #TemporarilyDisablingCommand
	instanceVariableNames: 'componentProvider viewWhileDisabled'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TemporarilyDisablingCommand guid: (GUID fromString: '{c00b30be-1f0a-4de9-b53f-7e41c378e3f6}')!
TemporarilyDisablingCommand comment: 'I''m a WebInteractionCommand that disable an specific component during an AJAX call execution.'!
!TemporarilyDisablingCommand categoriesForClass!Willow-Core-WebInteraction! !
!TemporarilyDisablingCommand methodsFor!

areEventsEnabledOn: aCanvas	^ ( ( self componentToDisableVariableOn: aCanvas ) attributeAt: self eventsDisabledAttributeName )		notIdenticalTo: 'disabled'!

clientIndependentActions	^ #()!

componentToDisableOn: aCanvas	^ componentProvider value: aCanvas!

componentToDisableVariableName	^ self class componentToDisableVariableName!

componentToDisableVariableOn: aCanvas	^ aCanvas jQuery new alias: self componentToDisableVariableName!

disabledAttributeName	^ Constants >> #willow >> #disabledAttributeName!

eventsDisabledAttributeName	^ 'data-willow-events-disabled'!

initializeTransformingComponentMatching: aComponentProvider into: aViewWhileDisabled	viewWhileDisabled := aViewWhileDisabled.	componentProvider := aComponentProvider!

modelLoadingActions	^ #()!

originalContentAttributeName	^ 'data-original-html'!

priorityActions	^ Array		with: [ :anAsynchronousCall :aCanvas | 			anAsynchronousCall				addDecoration: ( JSConcatenateBefore on: ( self stepsBeforeServelCallOn: aCanvas ) ).			anAsynchronousCall condition: ( self areEventsEnabledOn: aCanvas ).			anAsynchronousCall onComplete: ( self stepsAfterServerCallOn: aCanvas )			]!

requiresSerialization	^false!

serverIndependentActions	^ Array		with: [ :script :canvas | 			script				<< ( ( self componentToDisableOn: canvas ) assignLocalTo: self componentToDisableVariableName )			]!

stepsAfterServerCallOn: aCanvas	^ ( self componentToDisableVariableOn: aCanvas )		removeAttribute: self eventsDisabledAttributeName;		attributeAt: self disabledAttributeName put: false;		removeClass: Classification >> #disabledComponent;		call: 'html'			with: ( ( self componentToDisableVariableOn: aCanvas ) attributeAt: self originalContentAttributeName )!

stepsBeforeServelCallOn: aCanvas	^ ( self componentToDisableVariableOn: aCanvas )		attributeAt: self eventsDisabledAttributeName put: 'disabled';		addClass: Classification >> #disabledComponent;		attributeAt: self originalContentAttributeName			put: ( self componentToDisableVariableOn: aCanvas ) html;		attributeAt: self disabledAttributeName put: true;		html: viewWhileDisabled! !
!TemporarilyDisablingCommand categoriesFor: #areEventsEnabledOn:!private! !
!TemporarilyDisablingCommand categoriesFor: #clientIndependentActions!accessing!public! !
!TemporarilyDisablingCommand categoriesFor: #componentToDisableOn:!private! !
!TemporarilyDisablingCommand categoriesFor: #componentToDisableVariableName!private! !
!TemporarilyDisablingCommand categoriesFor: #componentToDisableVariableOn:!private! !
!TemporarilyDisablingCommand categoriesFor: #disabledAttributeName!private! !
!TemporarilyDisablingCommand categoriesFor: #eventsDisabledAttributeName!private! !
!TemporarilyDisablingCommand categoriesFor: #initializeTransformingComponentMatching:into:!initialization!public! !
!TemporarilyDisablingCommand categoriesFor: #modelLoadingActions!accessing!public! !
!TemporarilyDisablingCommand categoriesFor: #originalContentAttributeName!private! !
!TemporarilyDisablingCommand categoriesFor: #priorityActions!accessing!public! !
!TemporarilyDisablingCommand categoriesFor: #requiresSerialization!public!testing! !
!TemporarilyDisablingCommand categoriesFor: #serverIndependentActions!accessing!public! !
!TemporarilyDisablingCommand categoriesFor: #stepsAfterServerCallOn:!private! !
!TemporarilyDisablingCommand categoriesFor: #stepsBeforeServelCallOn:!private! !

!TemporarilyDisablingCommand class methodsFor!

componentToDisableVariableName	^ 'componentToDisable'!

transforming: anIdentifieView into: aViewWhileDisabled	^ self		transformingComponentMatching: [ :canvas | 			anIdentifieView identifyIn: canvas.			canvas jQuery id: anIdentifieView identifier			]		into: aViewWhileDisabled!

transformingComponentMatching: aComponentProvider into: aViewWhileDisabled	^ self new initializeTransformingComponentMatching: aComponentProvider into: aViewWhileDisabled!

transformingCurrentViewInto: aViewWhileDisabled	^ self transformingComponentMatching: [ :canvas | canvas jQuery this ] into: aViewWhileDisabled! !
!TemporarilyDisablingCommand class categoriesFor: #componentToDisableVariableName!accessing!public! !
!TemporarilyDisablingCommand class categoriesFor: #transforming:into:!instance creation!public! !
!TemporarilyDisablingCommand class categoriesFor: #transformingComponentMatching:into:!instance creation!public! !
!TemporarilyDisablingCommand class categoriesFor: #transformingCurrentViewInto:!instance creation!public! !

