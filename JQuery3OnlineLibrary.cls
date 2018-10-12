"Filed out from Dolphin Smalltalk 7"!

WAOnlineLibrary subclass: #JQuery3OnlineLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQuery3OnlineLibrary guid: (GUID fromString: '{fa9d8806-4f82-4294-a072-07bb083ba027}')!
JQuery3OnlineLibrary comment: 'I''m a WALibary serving the files from the official CDN.'!
!JQuery3OnlineLibrary categoriesForClass!Willow-Libraries! !
!JQuery3OnlineLibrary methodsFor!

updateRoot: aRoot	aRoot javascript		url: ('https://code.jquery.com/jquery-<1s>.min.js' expandMacrosWith: self version);		anonymousSubResourceIntegrity: 'sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8='!

version	^ '3.3.1'! !
!JQuery3OnlineLibrary categoriesFor: #updateRoot:!public!Updating! !
!JQuery3OnlineLibrary categoriesFor: #version!Accessing!public! !

