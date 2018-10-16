"Filed out from Dolphin Smalltalk 7"!

WAOnlineLibrary subclass: #WATestingOnlineLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATestingOnlineLibrary guid: (GUID fromString: '{38d6651c-a1d4-4708-a14b-9b60834b3ff5}')!
WATestingOnlineLibrary comment: 'I''m a library for testing purposes'!
!WATestingOnlineLibrary categoriesForClass!Boardwalk-Tests-WebApplication! !
!WATestingOnlineLibrary methodsFor!

updateRoot: aRoot	aRoot stylesheet		url: ('https://cdn.example.com/main<1s>.css' expandMacrosWith: self version);		anonymousSubResourceIntegrity: 'sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u'!

version 	^'1.0.1'! !
!WATestingOnlineLibrary categoriesFor: #updateRoot:!public!Updating! !
!WATestingOnlineLibrary categoriesFor: #version!public!Updating! !

