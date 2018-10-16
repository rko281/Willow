"Filed out from Dolphin Smalltalk 7"!

WillowSession subclass: #WPLiveDocumentationSession
	instanceVariableNames: 'applicationContext'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPLiveDocumentationSession guid: (GUID fromString: '{243f147b-6c15-494e-8ba3-3f2e64e5394b}')!
WPLiveDocumentationSession comment: 'I''m a Live Documentation session'!
!WPLiveDocumentationSession categoriesForClass!Willow-Playground-LiveDocs-Application! !
!WPLiveDocumentationSession methodsFor!

applicationContext	^ applicationContext!

startUpApplicationContextFor: liveDocumenationApp	super startUpApplicationContextFor: liveDocumenationApp.	applicationContext := WPLiveDocumentationContext new! !
!WPLiveDocumentationSession categoriesFor: #applicationContext!accessing!public! !
!WPLiveDocumentationSession categoriesFor: #startUpApplicationContextFor:!Controlling!public! !

