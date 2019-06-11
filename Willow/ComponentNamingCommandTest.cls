"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ComponentNamingCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentNamingCommandTest guid: (GUID fromString: '{664be7ec-7fd2-4599-8125-25a8b2927b68}')!
ComponentNamingCommandTest comment: 'A ComponentNamingCommandTest is a test class for testing the behavior of ComponentNamingCommand'!
!ComponentNamingCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentNamingCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (ComponentNamingCommand assigning: 'name') toComponentDefinedBy: [ :canvas | canvas anchor ].	self assert: html equals: '<a name="name"></a>'! !
!ComponentNamingCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

