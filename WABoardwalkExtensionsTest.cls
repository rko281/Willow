"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #WABoardwalkExtensionsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABoardwalkExtensionsTest guid: (GUID fromString: '{4f58948f-5109-45a9-8aea-c52828556cf3}')!
WABoardwalkExtensionsTest comment: 'I''m a test of Seaside extensions'!
!WABoardwalkExtensionsTest categoriesForClass!Boardwalk-Tests-WebApplication! !
!WABoardwalkExtensionsTest methodsFor!

testFormDoNotSubmit	| html |	html := self		render: [ :canvas | 			| form |			form := canvas form.			form doNotSubmit ].	self assert: html equals: '<form accept-charset="utf-8" method="post" action="/" onsubmit="return false;"></form>'!

testFullDocumentRendering	self		assert: (self fullDocumentRendering: WATestingRootComponent new)		equals:			'<html><head><title>Hello</title></head><body onload="onLoad()">Hello world!!<script type="text/javascript">function onLoad(){};</script></body></html>'!

testTagBrushClasses	| html |	html := self render: [ :canvas | canvas div classes: #('a' 'b') ].	self assert: html equals: '<div class="a b"></div>'!

testTagBrushIdentifier	self		render: [ :canvas | 			| div |			div := canvas div.			self should: [ div identifier ] raise: AssertionFailed.			canvas ensureIdFor: div.			self shouldnt: [ div identifier ] raise: AssertionFailed ]!

testTagBrushIdentifyIn	self		render: [ :canvas | 			| div |			div := canvas div.			self should: [ div identifier ] raise: AssertionFailed.			div identifyIn: canvas.			self shouldnt: [ div identifier ] raise: AssertionFailed ]!

testWAAbstractFileLibrary	self		assert: WAAbstractFileLibrary isForDeployment;		assert: WAAbstractFileLibrary isForDevelopment!

testWAUrlSlash	| url |	url := 'http://www.example.com' seasideUrl.	self assert: url / 'api' equals: 'http://www.example.com/api' seasideUrl! !
!WABoardwalkExtensionsTest categoriesFor: #testFormDoNotSubmit!public!tests! !
!WABoardwalkExtensionsTest categoriesFor: #testFullDocumentRendering!public!tests! !
!WABoardwalkExtensionsTest categoriesFor: #testTagBrushClasses!public!tests! !
!WABoardwalkExtensionsTest categoriesFor: #testTagBrushIdentifier!public!tests! !
!WABoardwalkExtensionsTest categoriesFor: #testTagBrushIdentifyIn!public!tests! !
!WABoardwalkExtensionsTest categoriesFor: #testWAAbstractFileLibrary!public!tests! !
!WABoardwalkExtensionsTest categoriesFor: #testWAUrlSlash!public!tests! !

