"Filed out from Dolphin Smalltalk 7"!

WAOnlineLibrary subclass: #JQuery3OnlineLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQuery3OnlineLibrary guid: (GUID fromString: '{2f4ee6c7-1239-46aa-aa13-1d4ad639343a}')!
JQuery3OnlineLibrary comment: 'I''m a WALibary serving the files from the official CDN.'!
!JQuery3OnlineLibrary categoriesForClass!Willow-Core-Libraries! !
!JQuery3OnlineLibrary methodsFor!

updateRoot: aRoot	aRoot javascript		url: ( 'https://code.jquery.com/jquery-<1s>.min.js' expandMacrosWith: self version );		anonymousSubResourceIntegrity: 'sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ='!

version	^ '3.5.0'! !
!JQuery3OnlineLibrary categoriesFor: #updateRoot:!public!Updating! !
!JQuery3OnlineLibrary categoriesFor: #version!Accessing!public! !

