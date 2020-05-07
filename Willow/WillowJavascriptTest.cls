"Filed out from Dolphin Smalltalk 7"!

JSObjectTest subclass: #WillowJavascriptTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowJavascriptTest guid: (GUID fromString: '{d7925474-ed17-4070-b898-0bd717aa3eee}')!
WillowJavascriptTest comment: ''!
!WillowJavascriptTest categoriesForClass!Willow-Tests-WebInteraction! !
!WillowJavascriptTest methodsFor!

testJSConcatenateBefore	| jsObject |	jsObject := ( ( JSStream this alias: 'theVariable' ) call: 'doIt' )		addDecoration: ( JSConcatenateBefore on: ( JSStream this assignTo: 'theVariable' ) ).	self assert: jsObject equals: 'theVariable=this;theVariable.doIt()'! !
!WillowJavascriptTest categoriesFor: #testJSConcatenateBefore!public!tests! !

