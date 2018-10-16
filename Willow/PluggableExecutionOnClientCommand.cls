"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #PluggableExecutionOnClientCommand
	instanceVariableNames: 'serverIndependentActions'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PluggableExecutionOnClientCommand guid: (GUID fromString: '{2a453c3c-01a7-4dd1-9fc6-119781e6c089}')!
PluggableExecutionOnClientCommand comment: 'I''m a WebInteractionCommand that allows for arbitrary code execution in the client'!
!PluggableExecutionOnClientCommand categoriesForClass!Willow-WebInteraction! !
!PluggableExecutionOnClientCommand methodsFor!

clientIndependentActions	^#()!

initializeExecutingAll: aServerIndependentActionCollection	serverIndependentActions := aServerIndependentActionCollection		collect: [ :actionBlock | [ :script :canvas | script << (actionBlock cull: canvas) ] ]!

modelLoadingActions	^#()!

priorityActions	^#()!

requiresSerialization	^false!

serverIndependentActions	^serverIndependentActions! !
!PluggableExecutionOnClientCommand categoriesFor: #clientIndependentActions!accessing!public! !
!PluggableExecutionOnClientCommand categoriesFor: #initializeExecutingAll:!initialize/release!public! !
!PluggableExecutionOnClientCommand categoriesFor: #modelLoadingActions!accessing!public! !
!PluggableExecutionOnClientCommand categoriesFor: #priorityActions!accessing!public! !
!PluggableExecutionOnClientCommand categoriesFor: #requiresSerialization!public!testing! !
!PluggableExecutionOnClientCommand categoriesFor: #serverIndependentActions!accessing!public! !

!PluggableExecutionOnClientCommand class methodsFor!

executingAll: aServerIndependentActionCollection	^self new initializeExecutingAll: aServerIndependentActionCollection!

executingOnly: aServerIndependentAction	^self executingAll: (Array with: aServerIndependentAction)! !
!PluggableExecutionOnClientCommand class categoriesFor: #executingAll:!instance creation!public! !
!PluggableExecutionOnClientCommand class categoriesFor: #executingOnly:!instance creation!public! !

