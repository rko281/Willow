"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ListLabelingCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ListLabelingCommandTest guid: (GUID fromString: '{7da65392-6e19-45bc-a1ad-38e799bac72b}')!
ListLabelingCommandTest comment: 'A ListLabelingCommandTest is a test class for testing the behavior of ListLabelingCommand'!
!ListLabelingCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ListLabelingCommandTest methodsFor!

testApplyToOn	| html |	html := self		apply: (ListLabelingCommand with: [ :string | string asUppercase ])		toComponentDefinedBy: [ :canvas | canvas select list: #('one' 'two') ].	self assert: html equals: '<select><option>ONE</option><option>TWO</option></select>'! !
!ListLabelingCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

