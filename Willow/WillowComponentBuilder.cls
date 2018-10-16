"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #WillowComponentBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'Willow'
	classInstanceVariableNames: ''!
WillowComponentBuilder guid: (GUID fromString: '{c8deeb28-2535-42e6-ab5c-aa3c1a70a177}')!
WillowComponentBuilder comment: 'I''m an abstract subclass for component builders'!
!WillowComponentBuilder categoriesForClass!Willow-WebViews! !
!WillowComponentBuilder methodsFor!

build	^ self buildApplying: [ :component |  ]!

buildApplying: aComponentCommand	^ self subclassResponsibility! !
!WillowComponentBuilder categoriesFor: #build!building!public! !
!WillowComponentBuilder categoriesFor: #buildApplying:!building!public! !

