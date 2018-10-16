"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #ComponentNamingCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentNamingCommandTest guid: (GUID fromString: '{983fd2d3-5f7c-4fda-8de0-994972c58bea}')!
ComponentNamingCommandTest comment: 'A ComponentNamingCommandTest is a test class for testing the behavior of ComponentNamingCommand'!
!ComponentNamingCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentNamingCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (ComponentNamingCommand assigning: 'name') toComponentDefinedBy: [ :canvas | canvas anchor ].	self assert: html equals: '<a name="name"></a>'! !
!ComponentNamingCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

