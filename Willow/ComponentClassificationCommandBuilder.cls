"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #ComponentClassificationCommandBuilder
	instanceVariableNames: 'classificationNamespace'
	classVariableNames: ''
	poolDictionaries: 'Willow'
	classInstanceVariableNames: ''!
ComponentClassificationCommandBuilder guid: (GUID fromString: '{6be8417a-aa78-46d1-86a9-697742255b1b}')!
ComponentClassificationCommandBuilder comment: 'I''m a builder of component classification commands'!
!ComponentClassificationCommandBuilder categoriesForClass!Willow-Frontend! !
!ComponentClassificationCommandBuilder methodsFor!

commandStyledWith: aSymbol	^ ComponentClassificationCommand toStyleWith: classificationNamespace >> aSymbol!

dialogContainer	^ self commandStyledWith: #dialogContainer!

disabledComponent	^ self commandStyledWith: #disabledComponent!

fadingNotification	^ self commandStyledWith: #fadingNotification!

initialize	super initialize.	classificationNamespace := Classification!

loading	^ self commandStyledWith: #loading!

willow	^ self commandStyledWith: #willow! !
!ComponentClassificationCommandBuilder categoriesFor: #commandStyledWith:!private! !
!ComponentClassificationCommandBuilder categoriesFor: #dialogContainer!Building!public! !
!ComponentClassificationCommandBuilder categoriesFor: #disabledComponent!Building!public! !
!ComponentClassificationCommandBuilder categoriesFor: #fadingNotification!Building!public! !
!ComponentClassificationCommandBuilder categoriesFor: #initialize!initialization!public! !
!ComponentClassificationCommandBuilder categoriesFor: #loading!Building!public! !
!ComponentClassificationCommandBuilder categoriesFor: #willow!Building!public! !

