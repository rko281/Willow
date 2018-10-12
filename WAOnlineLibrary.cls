"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAOnlineLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAOnlineLibrary guid: (GUID fromString: '{55eed83e-bac4-4f04-8d67-8cabf70ab575}')!
WAOnlineLibrary comment: 'I''m a library serving files for an online location. Just redefine updateRoot: and update the header as requested.'!
!WAOnlineLibrary categoriesForClass!Boardwalk-WebApplication! !
!WAOnlineLibrary methodsFor!

updateRoot: aRoot	self subclassResponsibility !

version	^ self subclassResponsibility! !
!WAOnlineLibrary categoriesFor: #updateRoot:!public!Updating! !
!WAOnlineLibrary categoriesFor: #version!Accessing!public! !

!WAOnlineLibrary class methodsFor!

default	^ self new! !
!WAOnlineLibrary class categoriesFor: #default!accessing!public! !

