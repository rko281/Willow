"Filed out from Dolphin Smalltalk 7"!

WillowComponentBuilder subclass: #Bootstrap4CardLayoutBuilder
	instanceVariableNames: 'supplier cards layoutCommandBinding'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4CardLayoutBuilder guid: (GUID fromString: '{c643722c-256a-4502-a825-03306f50d638}')!
Bootstrap4CardLayoutBuilder comment: ''!
!Bootstrap4CardLayoutBuilder categoriesForClass!Willow-Bootstrap-4-WebViews! !
!Bootstrap4CardLayoutBuilder methodsFor!

addCard: aCardBuildingBlock	self addCard: aCardBuildingBlock applying: [  ]!

addCard: aCardBuildingBlock applying: aCommandToCard	| builder |	builder := supplier cardBuilder.	aCardBuildingBlock value: builder.	cards add: ( builder buildApplying: aCommandToCard )!

buildApplying: aCommand	^ GenericContainerWebView wrapping: cards applying: self layoutCommand + aCommand!

initializeUsing: aComponentSupplier	supplier := aComponentSupplier.	cards := OrderedCollection new.	layoutCommandBinding := Binding undefinedExplainedBy: 'Missing layout configuration'!

layoutCommand	^ layoutCommandBinding content asWebComponentCommand!

useColumnLayout	layoutCommandBinding := Binding to: [ :div | div addClass bootstrap4 cardColumns ]!

useDeckLayout	layoutCommandBinding := Binding to: [ :div | div addClass bootstrap4 cardDeck ]!

useGroupLayout	layoutCommandBinding := Binding to: [ :div | div addClass bootstrap4 cardGroup ]! !
!Bootstrap4CardLayoutBuilder categoriesFor: #addCard:!Configuring!public! !
!Bootstrap4CardLayoutBuilder categoriesFor: #addCard:applying:!Configuring!public! !
!Bootstrap4CardLayoutBuilder categoriesFor: #buildApplying:!building!public! !
!Bootstrap4CardLayoutBuilder categoriesFor: #initializeUsing:!initialization!public! !
!Bootstrap4CardLayoutBuilder categoriesFor: #layoutCommand!private! !
!Bootstrap4CardLayoutBuilder categoriesFor: #useColumnLayout!Configuring!public! !
!Bootstrap4CardLayoutBuilder categoriesFor: #useDeckLayout!Configuring!public! !
!Bootstrap4CardLayoutBuilder categoriesFor: #useGroupLayout!Configuring!public! !

!Bootstrap4CardLayoutBuilder class methodsFor!

using: aComponentSupplier	^ self new initializeUsing: aComponentSupplier! !
!Bootstrap4CardLayoutBuilder class categoriesFor: #using:!instance creation!public! !

