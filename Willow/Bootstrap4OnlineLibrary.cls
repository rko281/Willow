"Filed out from Dolphin Smalltalk 7"!

WAOnlineLibrary subclass: #Bootstrap4OnlineLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4OnlineLibrary guid: (GUID fromString: '{df954bc6-d239-4d93-83b8-8ff71fcce348}')!
Bootstrap4OnlineLibrary comment: 'I''m a WALibary serving the files from the official CDN.'!
!Bootstrap4OnlineLibrary categoriesForClass!Willow-Bootstrap-4-Libraries! !
!Bootstrap4OnlineLibrary methodsFor!

updateRoot: aRoot	aRoot stylesheet		url:			( 'https://stackpath.bootstrapcdn.com/bootstrap/<1s>/css/bootstrap.min.css'				expandMacrosWith: self version );		anonymousSubResourceIntegrity: 'sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh'.	aRoot javascript		url: 'https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js';		anonymousSubResourceIntegrity: 'sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo'.	aRoot javascript		url:			( 'https://stackpath.bootstrapcdn.com/bootstrap/<1s>/js/bootstrap.min.js'				expandMacrosWith: self version );		anonymousSubResourceIntegrity: 'sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6'!

version	^'4.4.1'! !
!Bootstrap4OnlineLibrary categoriesFor: #updateRoot:!public!updating! !
!Bootstrap4OnlineLibrary categoriesFor: #version!public!versions! !

