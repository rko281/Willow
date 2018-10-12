"Filed out from Dolphin Smalltalk 7"!

WAOnlineLibrary subclass: #Bootstrap3OnlineLibrary
	instanceVariableNames: 'includeOptionalTheme'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3OnlineLibrary guid: (GUID fromString: '{fc839553-9360-4131-9d0e-1ff8f2da7a51}')!
Bootstrap3OnlineLibrary comment: 'I''m a WALibary serving the files from the official CDN.'!
!Bootstrap3OnlineLibrary categoriesForClass!Willow-Bootstrap-Libraries! !
!Bootstrap3OnlineLibrary methodsFor!

initializeWithOptionalTheme: aBoolean	includeOptionalTheme := aBoolean!

updateRoot: aRoot	aRoot stylesheet		url: ('https://maxcdn.bootstrapcdn.com/bootstrap/<1s>/css/bootstrap.min.css' expandMacrosWith: self version);		anonymousSubResourceIntegrity: 'sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u'.	includeOptionalTheme		ifTrue: [ aRoot stylesheet				url: ('https://maxcdn.bootstrapcdn.com/bootstrap/<1s>/css/bootstrap-theme.min.css' expandMacrosWith: self version);				anonymousSubResourceIntegrity: 'sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp' ].	aRoot javascript		url: ('https://maxcdn.bootstrapcdn.com/bootstrap/<1s>/js/bootstrap.min.js' expandMacrosWith: self version);		anonymousSubResourceIntegrity: 'sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa'!

version	^'3.3.7'! !
!Bootstrap3OnlineLibrary categoriesFor: #initializeWithOptionalTheme:!initialization!public! !
!Bootstrap3OnlineLibrary categoriesFor: #updateRoot:!public!Updating! !
!Bootstrap3OnlineLibrary categoriesFor: #version!Accessing!public! !

!Bootstrap3OnlineLibrary class methodsFor!

default	^ self new initializeWithOptionalTheme: true!

withoutOptionalTheme	^ self new initializeWithOptionalTheme: false! !
!Bootstrap3OnlineLibrary class categoriesFor: #default!instance creation!public! !
!Bootstrap3OnlineLibrary class categoriesFor: #withoutOptionalTheme!instance creation!public! !

