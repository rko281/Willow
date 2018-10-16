"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #ListLabelingCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ListLabelingCommandTest guid: (GUID fromString: '{f9ac9bbb-c678-4b29-ac84-7c1b3b9bebcc}')!
ListLabelingCommandTest comment: 'A ListLabelingCommandTest is a test class for testing the behavior of ListLabelingCommand'!
!ListLabelingCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ListLabelingCommandTest methodsFor!

testApplyToOn	| html |	html := self		apply: (ListLabelingCommand with: [ :string | string asUppercase ])		toComponentDefinedBy: [ :canvas | canvas select list: #('one' 'two') ].	self assert: html equals: '<select><option>ONE</option><option>TWO</option></select>'! !
!ListLabelingCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

