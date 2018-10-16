"Filed out from Dolphin Smalltalk 7"!

WAOnlineLibrary subclass: #SpinKitOnlineLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitOnlineLibrary guid: (GUID fromString: '{6ef29c82-f02f-49b2-b9ba-c9122a0172e4}')!
SpinKitOnlineLibrary comment: 'I''m a library serving files from the official CDN'!
!SpinKitOnlineLibrary categoriesForClass!Willow-SpinKit! !
!SpinKitOnlineLibrary methodsFor!

updateRoot: aRoot	aRoot stylesheet		url: (			'https://cdnjs.cloudflare.com/ajax/libs/spinkit/<1s>/spinkit.min.css'				expandMacrosWith: self version);		anonymousSubResourceIntegrity:			'sha384-KJ47Cczl/rtfDKmrmOi4gRjk338/m5tSeJ3q6GkrCl1SESmi8FL+E4nw4Nn2xw7O'!

version 		^ '1.2.5'! !
!SpinKitOnlineLibrary categoriesFor: #updateRoot:!public!versions! !
!SpinKitOnlineLibrary categoriesFor: #version!public!versions! !

