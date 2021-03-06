﻿"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #FileDownloadAnchorWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FileDownloadAnchorWebViewTest guid: (GUID fromString: '{434e3014-83a8-446b-911d-8f429bac6093}')!
FileDownloadAnchorWebViewTest comment: 'A FileDownloadAnchorWebViewTest is a test class for testing the behavior of FileDownloadAnchorWebView'!
!FileDownloadAnchorWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!FileDownloadAnchorWebViewTest methodsFor!

testRenderContentOn	| fileDownloadAnchor html |	fileDownloadAnchor := FileDownloadAnchorWebView		labeled: 'Download me!!'		applying: [ :anchor |  ]		obtainingFileUsing:			[ WAMimeDocument on: '<note><to>Tove</to><from>Jani</from><heading>Reminder</heading><body>Don''t forget me this weekend!!</body></note>' mimeType: (WAMimeType fromString: 'text/xml') fileName: 'note.xml' ].	html := self render: fileDownloadAnchor.	self assert: html equals: '<a href="/?1">Download me!!</a>'! !
!FileDownloadAnchorWebViewTest categoriesFor: #testRenderContentOn!public!tests/rendering! !

