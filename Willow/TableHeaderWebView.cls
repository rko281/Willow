"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #TableHeaderWebView
	instanceVariableNames: 'columnRenderers'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TableHeaderWebView guid: (GUID fromString: '{f54c17ce-8d69-494f-a32b-517ec78950b1}')!
TableHeaderWebView comment: 'I represent a table header'!
!TableHeaderWebView categoriesForClass!Willow-Core-WebViews! !
!TableHeaderWebView methodsFor!

initializeDefinedBy: aColumnRendererCollection	columnRenderers := aColumnRendererCollection!

renderContentOn: aCanvas	aCanvas tableHead: [ columnRenderers do: [ :renderer | renderer renderHeadingOn: aCanvas ] ]! !
!TableHeaderWebView categoriesFor: #initializeDefinedBy:!initialization!public! !
!TableHeaderWebView categoriesFor: #renderContentOn:!public!rendering! !

!TableHeaderWebView class methodsFor!

definedBy: aColumnRendererCollection	^ self new initializeDefinedBy: aColumnRendererCollection! !
!TableHeaderWebView class categoriesFor: #definedBy:!Instance Creation!public! !

