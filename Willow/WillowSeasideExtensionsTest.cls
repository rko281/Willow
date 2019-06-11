"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #WillowSeasideExtensionsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowSeasideExtensionsTest guid: (GUID fromString: '{008ce6a7-788c-4cf8-8b86-bee31b8764cf}')!
WillowSeasideExtensionsTest comment: 'This test case verifies method extensions to Seaside classes'!
!WillowSeasideExtensionsTest categoriesForClass!Willow-Tests-Applications! !
!WillowSeasideExtensionsTest methodsFor!

componentSupplier	"To support calls for the context componentSupplier"	^ self!

createHandlers	^ Array with: self!

isSession	^ true!

testComponentSupplier	self		renderUsing: [ :canvas | 			| webView |			webView := PhrasingContainerWebView wrapping: 'The Content' applying: [ :container |  ].			self assert: webView componentSupplier equals: self ]!

testGRSmallOrderedSetAt	| orderedSet |	orderedSet := GRSmallOrderedSet new.	orderedSet		add: 'a';		add: 'a';		add: 'c';		add: 'b';		add: 'c';		add: 'a'.	self		assert: (orderedSet at: 1) equals: 'a';		assert: (orderedSet at: 2) equals: 'c';		assert: (orderedSet at: 3) equals: 'b'!

testIcon	| html |	html := self render: [ :canvas | canvas icon ].	self assert: html equals: '<i></i>'!

testJSObjectWillow	self assert: JSStream this willow asJavascript equals: 'Willow'!

testWAUrlSlash	| url |	url := 'http://www.example.com' seasideUrl.	self assert: url / 'api' equals: 'http://www.example.com/api' seasideUrl! !
!WillowSeasideExtensionsTest categoriesFor: #componentSupplier!accessing!public! !
!WillowSeasideExtensionsTest categoriesFor: #createHandlers!accessing!public! !
!WillowSeasideExtensionsTest categoriesFor: #isSession!accessing!public! !
!WillowSeasideExtensionsTest categoriesFor: #testComponentSupplier!public!tests! !
!WillowSeasideExtensionsTest categoriesFor: #testGRSmallOrderedSetAt!public!tests! !
!WillowSeasideExtensionsTest categoriesFor: #testIcon!public!tests! !
!WillowSeasideExtensionsTest categoriesFor: #testJSObjectWillow!public!tests! !
!WillowSeasideExtensionsTest categoriesFor: #testWAUrlSlash!public!tests! !

