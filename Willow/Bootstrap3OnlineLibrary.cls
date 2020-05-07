"Filed out from Dolphin Smalltalk 7"!

WAOnlineLibrary subclass: #Bootstrap3OnlineLibrary
	instanceVariableNames: 'includeOptionalTheme'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3OnlineLibrary guid: (GUID fromString: '{c4b9d844-4e26-4a37-90ab-873fb2af360e}')!
Bootstrap3OnlineLibrary comment: 'I''m a WALibary serving the files from the official CDN.'!
!Bootstrap3OnlineLibrary categoriesForClass!Willow-Bootstrap-3-Libraries! !
!Bootstrap3OnlineLibrary methodsFor!

initializeWithOptionalTheme: aBoolean	includeOptionalTheme := aBoolean!

updateRoot: aRoot	aRoot stylesheet		url: ('https://stackpath.bootstrapcdn.com/bootstrap/<1s>/css/bootstrap.min.css' expandMacrosWith: self version);		anonymousSubResourceIntegrity: 'sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu'.	includeOptionalTheme		then: [ aRoot stylesheet				url: ('https://stackpath.bootstrapcdn.com/bootstrap/<1s>/css/bootstrap-theme.min.css' expandMacrosWith: self version);				anonymousSubResourceIntegrity: 'sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ' ].	aRoot javascript		url: ('https://stackpath.bootstrapcdn.com/bootstrap/<1s>/js/bootstrap.min.js' expandMacrosWith: self version);		anonymousSubResourceIntegrity: 'sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd'!

version	^'3.4.1'! !
!Bootstrap3OnlineLibrary categoriesFor: #initializeWithOptionalTheme:!initialization!public! !
!Bootstrap3OnlineLibrary categoriesFor: #updateRoot:!public!Updating! !
!Bootstrap3OnlineLibrary categoriesFor: #version!Accessing!public! !

!Bootstrap3OnlineLibrary class methodsFor!

default	^ self new initializeWithOptionalTheme: true!

withoutOptionalTheme	^ self new initializeWithOptionalTheme: false! !
!Bootstrap3OnlineLibrary class categoriesFor: #default!instance creation!public! !
!Bootstrap3OnlineLibrary class categoriesFor: #withoutOptionalTheme!instance creation!public! !

