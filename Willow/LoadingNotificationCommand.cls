"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #LoadingNotificationCommand
	instanceVariableNames: 'serverIndependentActions modelLoadingActions'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
LoadingNotificationCommand guid: (GUID fromString: '{cfee00d8-17ab-4187-baee-d8326bbd4e88}')!
LoadingNotificationCommand comment: 'I''m a WebInteractionCommand that displays a Loading... notification while an AJAX call is beign executed.'!
!LoadingNotificationCommand categoriesForClass!Willow-WebInteraction! !
!LoadingNotificationCommand methodsFor!

clientIndependentActions	^#()!

initializeExecuting: aServerIndependentActionCollection then: aModelLoadingActionCollection	serverIndependentActions := aServerIndependentActionCollection.	modelLoadingActions := aModelLoadingActionCollection!

modelLoadingActions	^modelLoadingActions!

priorityActions	^#()!

requiresSerialization	^false!

serverIndependentActions	^serverIndependentActions! !
!LoadingNotificationCommand categoriesFor: #clientIndependentActions!accessing!public! !
!LoadingNotificationCommand categoriesFor: #initializeExecuting:then:!initialize/release!public! !
!LoadingNotificationCommand categoriesFor: #modelLoadingActions!accessing!public! !
!LoadingNotificationCommand categoriesFor: #priorityActions!accessing!public! !
!LoadingNotificationCommand categoriesFor: #requiresSerialization!public!testing! !
!LoadingNotificationCommand categoriesFor: #serverIndependentActions!accessing!public! !

!LoadingNotificationCommand class methodsFor!

executing: aServerIndependentActionCollection then: aModelLoadingActionCollection	^self new initializeExecuting: aServerIndependentActionCollection		then: aModelLoadingActionCollection!

onPageTopWithClasses: aCssClassCollection	^ self		executing:			(Array				with: [ :aScript :aCanvas | 					aScript << (aCanvas jQuery id: Constants >> #willow >> #notificationSectionName)						html: [ :aSubCanvas | 							aSubCanvas div								classes: aCssClassCollection;								with: 'Loading...' ] ])		then:			(Array				with: [ :aScript :aCanvas | 					aScript << (aCanvas jQuery id: Constants >> #willow >> #notificationSectionName)						html: [ :aSubCanvas |  ] ])! !
!LoadingNotificationCommand class categoriesFor: #executing:then:!instance creation / private!public! !
!LoadingNotificationCommand class categoriesFor: #onPageTopWithClasses:!instance creation!public! !

