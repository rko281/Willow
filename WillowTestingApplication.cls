"Filed out from Dolphin Smalltalk 7"!

WillowApplication subclass: #WillowTestingApplication
	instanceVariableNames: 'componentSupplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowTestingApplication guid: (GUID fromString: '{cddc343e-de61-40e4-b584-377e95a55b98}')!
WillowTestingApplication comment: 'I''m a test support class'!
!WillowTestingApplication categoriesForClass!Willow-Tests-Applications! !
!WillowTestingApplication methodsFor!

componentSupplierForApplication	^ componentSupplier !

contentView	^ PhrasingContainerWebView obtainingContentFrom: [ self componentSupplier dropdownListApplying: [  ] ]!

initializeUsing: aComponentSupplier	componentSupplier := aComponentSupplier!

jQueryLibrary	^ JQuery3OnlineLibrary default!

language	^ [ super language ]		on: WARequestContextNotFound		do: [ :ex | ex return: (WALocale fromString: 'en') ]! !
!WillowTestingApplication categoriesFor: #componentSupplierForApplication!accessing!public! !
!WillowTestingApplication categoriesFor: #contentView!accessing!public! !
!WillowTestingApplication categoriesFor: #initializeUsing:!initialization!public! !
!WillowTestingApplication categoriesFor: #jQueryLibrary!accessing!public! !
!WillowTestingApplication categoriesFor: #language!accessing!public! !

!WillowTestingApplication class methodsFor!

applicationTitle	^ 'The official testing app'!

handlerName	^ 'testing-app'!

new	^ self using: Html5ComponentSupplier new!

using: aComponentSupplier	^ super new initializeUsing: aComponentSupplier ! !
!WillowTestingApplication class categoriesFor: #applicationTitle!accessing!public! !
!WillowTestingApplication class categoriesFor: #handlerName!accessing!public! !
!WillowTestingApplication class categoriesFor: #new!instance creation!public! !
!WillowTestingApplication class categoriesFor: #using:!instance creation!public! !

