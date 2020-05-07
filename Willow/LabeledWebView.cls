"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #LabeledWebView
	instanceVariableNames: 'phrasingContentProvider fieldWebView commandToComponent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
LabeledWebView guid: (GUID fromString: '{9a359cf9-107a-4bd8-be17-71927399b0d2}')!
LabeledWebView comment: 'I represent a label bound to some field.'!
!LabeledWebView categoriesForClass!Willow-Core-WebViews! !
!LabeledWebView methodsFor!

fieldWebView	^fieldWebView!

initializeObtainingContentFrom: aNyladicBlock boundTo: aFieldWebView applying: aComponentCommand	phrasingContentProvider := aNyladicBlock.	fieldWebView := aFieldWebView.	commandToComponent := aComponentCommand!

phrasingContent	^ phrasingContentProvider value!

renderContentOn: aCanvas	| fieldIdentifier |	fieldIdentifier := fieldWebView identifyIn: aCanvas.	aCanvas label		for: fieldIdentifier;		with: self phrasingContent applying: commandToComponent.	aCanvas render: self fieldWebView! !
!LabeledWebView categoriesFor: #fieldWebView!accessing!public! !
!LabeledWebView categoriesFor: #initializeObtainingContentFrom:boundTo:applying:!initialization!public! !
!LabeledWebView categoriesFor: #phrasingContent!private/accessing!public! !
!LabeledWebView categoriesFor: #renderContentOn:!public!rendering! !

!LabeledWebView class methodsFor!

displaying: thePhrasingContent boundTo: aFieldWebView applying: aComponentCommand	^ self obtainingContentFrom: [ thePhrasingContent ] boundTo: aFieldWebView applying: aComponentCommand!

obtainingContentFrom: aNyladicBlock boundTo: aFieldWebView applying: aComponentCommand	^ self new initializeObtainingContentFrom: aNyladicBlock boundTo: aFieldWebView applying: aComponentCommand asWebComponentCommand ! !
!LabeledWebView class categoriesFor: #displaying:boundTo:applying:!Instance Creation!public! !
!LabeledWebView class categoriesFor: #obtainingContentFrom:boundTo:applying:!Instance Creation!public! !

