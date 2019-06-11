"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #AddTimestampToSourceCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AddTimestampToSourceCommandTest guid: (GUID fromString: '{50752486-1082-45ca-bc4b-5c0b6287029d}')!
AddTimestampToSourceCommandTest comment: ''!
!AddTimestampToSourceCommandTest categoriesForClass!Willow-Tests-Frontend! !
!AddTimestampToSourceCommandTest methodsFor!

testApplyToOn	| html upToTime afterTime |	html := self		apply: AddTimestampToSourceCommand new		toComponentDefinedBy: [ :canvas | 			canvas image				url: (WAUrl absolute: 'here');				yourself ].	upToTime := '<img alt="" src="/here?time='.	afterTime := '"/>'.	self		assert: (html copyFrom: 1 to: upToTime size) equals: upToTime;		assert: (html copyFrom: html size - afterTime size + 1 to: html size)			equals: afterTime! !
!AddTimestampToSourceCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

