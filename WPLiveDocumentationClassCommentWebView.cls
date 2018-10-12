"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPLiveDocumentationClassCommentWebView
	instanceVariableNames: 'selectedClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPLiveDocumentationClassCommentWebView guid: (GUID fromString: '{07088b6d-4e04-4161-a7f8-1d48f70a27fd}')!
WPLiveDocumentationClassCommentWebView comment: 'I''m responsible of showing the class comment if available'!
!WPLiveDocumentationClassCommentWebView categoriesForClass!Willow-Playground-LiveDocs-WebViews! !
!WPLiveDocumentationClassCommentWebView methodsFor!

initializeFor: aClass	selectedClass := aClass!

renderContentOn: html	selectedClass hasComment		ifTrue: [ html blockquote: [ selectedClass comment lines do: [ :line | html render: line ] separatedBy: [ html break ] ] ]! !
!WPLiveDocumentationClassCommentWebView categoriesFor: #initializeFor:!initialization!public! !
!WPLiveDocumentationClassCommentWebView categoriesFor: #renderContentOn:!public!rendering! !

!WPLiveDocumentationClassCommentWebView class methodsFor!

for: aClass	^ self new initializeFor: aClass! !
!WPLiveDocumentationClassCommentWebView class categoriesFor: #for:!instance creation!public! !

