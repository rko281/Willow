"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #FileDownloadAnchorWebView
	instanceVariableNames: 'label documentProvider commandToComponent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FileDownloadAnchorWebView guid: (GUID fromString: '{bd54ee3d-c98e-41ef-9dc1-5003ab6f3cbd}')!
FileDownloadAnchorWebView comment: 'I''m an anchor with a callback to download a document'!
!FileDownloadAnchorWebView categoriesForClass!Willow-WebViews! !
!FileDownloadAnchorWebView methodsFor!

initializeLabeled: aLabel applying: aComponentCommand obtainingFileUsing: aFileProvider	label := aLabel.	documentProvider := aFileProvider.	commandToComponent := aComponentCommand!

renderContentOn: aCanvas	aCanvas anchor		callback: [ aCanvas requestContext				respond: [ :response | 					| document |					document := documentProvider value.					response						contentType: document contentType;						attachmentWithFileName: document fileName;						nextPutAll: document content ] ];		with: label applying: commandToComponent! !
!FileDownloadAnchorWebView categoriesFor: #initializeLabeled:applying:obtainingFileUsing:!initialization!public! !
!FileDownloadAnchorWebView categoriesFor: #renderContentOn:!public!rendering! !

!FileDownloadAnchorWebView class methodsFor!

labeled: aLabel applying: aComponentCommand obtainingFileUsing: aFileProvider	^ self new		initializeLabeled: aLabel		applying: aComponentCommand asWebComponentCommand		obtainingFileUsing: aFileProvider! !
!FileDownloadAnchorWebView class categoriesFor: #labeled:applying:obtainingFileUsing:!Instance Creation!public! !

