"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #LoadingNotificationCommand
	instanceVariableNames: 'serverIndependentActions modelLoadingActions'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
LoadingNotificationCommand guid: (GUID fromString: '{353e42f5-29d0-4bd3-bbd6-0e14f8626967}')!
LoadingNotificationCommand comment: 'I''m a WebInteractionCommand that displays a Loading... notification while an AJAX call is beign executed.'!
!LoadingNotificationCommand categoriesForClass!Willow-Core-WebInteraction! !
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

displaying: aWebView applying: aComponentCommand	^ self		executing:			(Array				with: [ :aScript :aCanvas | 					aScript << (aCanvas jQuery id: Constants >> #willow >> #notificationSectionName)						html: [ :aSubCanvas | 							aSubCanvas render:								(GenericContainerWebView wrapping: aWebView applying: aComponentCommand) ] ])		then:			(Array				with: [ :aScript :aCanvas | 					aScript << (aCanvas jQuery id: Constants >> #willow >> #notificationSectionName)						html: [ :aSubCanvas |  ] ])!

executing: aServerIndependentActionCollection then: aModelLoadingActionCollection	^self new initializeExecuting: aServerIndependentActionCollection		then: aModelLoadingActionCollection!

onPageTopWithClasses: aCssClassCollection	^ self		displaying: 'Loading...'		applying: (ComponentClassificationCommand toStyleWithAll: aCssClassCollection)! !
!LoadingNotificationCommand class categoriesFor: #displaying:applying:!instance creation!public! !
!LoadingNotificationCommand class categoriesFor: #executing:then:!instance creation / private!public! !
!LoadingNotificationCommand class categoriesFor: #onPageTopWithClasses:!instance creation!public! !

