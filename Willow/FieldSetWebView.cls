"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #FieldSetWebView
	instanceVariableNames: 'title contentView fieldSetCommand legendCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FieldSetWebView guid: (GUID fromString: '{4d9bb401-732d-4a9e-b32f-2dab6f537bd4}')!
FieldSetWebView comment: 'A Web View that renders a fieldSet with custom styles.'!
!FieldSetWebView categoriesForClass!Willow-Core-WebViews! !
!FieldSetWebView methodsFor!

initializeContaining: aWebView applying: aFieldSetCommand withLegend: aTitle applying: aLegendCommand	title := aTitle.	contentView := aWebView.	fieldSetCommand := aFieldSetCommand.	legendCommand := aLegendCommand!

renderContentOn: aCanvas	aCanvas fieldSet		with: [ 			aCanvas legend with: title applying: legendCommand.			aCanvas render: contentView ]		applying: fieldSetCommand! !
!FieldSetWebView categoriesFor: #initializeContaining:applying:withLegend:applying:!initialization!public! !
!FieldSetWebView categoriesFor: #renderContentOn:!public!rendering! !

!FieldSetWebView class methodsFor!

containing: aWebView applying: fieldSetCommand withLegend: aTitle applying: legendCommand	^ self new		initializeContaining: aWebView		applying: fieldSetCommand asWebComponentCommand		withLegend: aTitle		applying: legendCommand asWebComponentCommand! !
!FieldSetWebView class categoriesFor: #containing:applying:withLegend:applying:!instance creation!public! !

