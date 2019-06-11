"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ListItemWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ListItemWebViewTest guid: (GUID fromString: '{96325002-b53e-4264-84e7-ffecaa941c01}')!
ListItemWebViewTest comment: 'A ListItemWebViewTest is a test class for testing the behavior of ListItemWebView'!
!ListItemWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!ListItemWebViewTest methodsFor!

testRenderContentOn	| html |	html := self		renderUsing: [ :canvas | 			| list |			list := canvas unorderedList.			list with: [ canvas render: (ListItemWebView itemizing: 'Item' containedIn: list applying: [ :listItem |  ]) ] ].	self assert: html equals: '<ul><li>Item</li></ul>'!

testRenderContentOnWithCommands	| html |	html := self		renderUsing: [ :canvas | 			| list |			list := canvas unorderedList.			list with: [ canvas render: (ListItemWebView itemizing: 'Item' containedIn: list applying: [ :listItem | listItem addClass willow ]) ] ].	self assert: html equals: '<ul><li class="willow">Item</li></ul>'! !
!ListItemWebViewTest categoriesFor: #testRenderContentOn!public!tests/rendering! !
!ListItemWebViewTest categoriesFor: #testRenderContentOnWithCommands!public!tests/rendering! !

