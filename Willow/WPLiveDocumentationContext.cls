"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #WPLiveDocumentationContext
	instanceVariableNames: 'selectedPackageOptional selectedBehaviorOptional'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPLiveDocumentationContext guid: (GUID fromString: '{c4d8c48a-d75f-4f5d-83ef-adc113f1e7b8}')!
WPLiveDocumentationContext comment: 'I''m the application context. My intent is to hold the state of the application.'!
!WPLiveDocumentationContext categoriesForClass!Willow-Playground-LiveDocs-Application! !
!WPLiveDocumentationContext methodsFor!

availableBehaviors	^ (selectedPackageOptional withContentDo: [ :package | package definedClasses ] ifUnused: [ #() ]) sorted: [ :a :b | a name < b name ]!

availablePackages	^ RPackageOrganizer default packages sorted: [ :a :b | a name < b name ]!

initialize	super initialize.	selectedPackageOptional := Optional unused.	selectedBehaviorOptional := Optional unused!

setSelectedBehaviorTo: aBehavior	selectedBehaviorOptional := Optional containing: aBehavior!

setSelectedPackageTo: aPackage	selectedPackageOptional := Optional containing: aPackage!

withSelectedBehaviorDo: aBock ifNone: aNoneBlock	selectedBehaviorOptional withContentDo: aBock ifUnused: aNoneBlock! !
!WPLiveDocumentationContext categoriesFor: #availableBehaviors!public!Querying! !
!WPLiveDocumentationContext categoriesFor: #availablePackages!public!Querying! !
!WPLiveDocumentationContext categoriesFor: #initialize!initialization!public! !
!WPLiveDocumentationContext categoriesFor: #setSelectedBehaviorTo:!public!State Management! !
!WPLiveDocumentationContext categoriesFor: #setSelectedPackageTo:!public!State Management! !
!WPLiveDocumentationContext categoriesFor: #withSelectedBehaviorDo:ifNone:!public!Querying! !

