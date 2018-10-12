"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #ListItemWebView
	instanceVariableNames: 'commandToComponent list item'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ListItemWebView guid: (GUID fromString: '{95ddad0e-593e-40b2-957e-2b8b2173c3dd}')!
ListItemWebView comment: 'I represent a list item including command support. '!
!ListItemWebView categoriesForClass!Willow-WebViews! !
!ListItemWebView methodsFor!

initializeItemizing: anObject containedIn: aList applying: aComponentCommand	item := anObject.	list := aList.	commandToComponent := aComponentCommand!

renderContentOn: aCanvas	aCanvas listItem with: (list labelForOption: item) applying: commandToComponent! !
!ListItemWebView categoriesFor: #initializeItemizing:containedIn:applying:!initialize/release!public! !
!ListItemWebView categoriesFor: #renderContentOn:!public!rendering! !

!ListItemWebView class methodsFor!

itemizing: anObject containedIn: aList applying: aComponentCommand	^ self new initializeItemizing: anObject containedIn: aList applying: aComponentCommand asWebComponentCommand ! !
!ListItemWebView class categoriesFor: #itemizing:containedIn:applying:!instance creation!public! !

