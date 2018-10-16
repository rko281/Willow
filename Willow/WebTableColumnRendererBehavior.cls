"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebTableColumnRendererBehavior
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebTableColumnRendererBehavior guid: (GUID fromString: '{d7a93b22-22fe-4a1e-a565-a0cb7b624fd7}')!
WebTableColumnRendererBehavior comment: 'I''m an abstract class defining the required behavior for rendering columns in a table'!
!WebTableColumnRendererBehavior categoriesForClass!Willow-WebViews! !
!WebTableColumnRendererBehavior methodsFor!

renderCellAt: anIndex for: anItem on: aCanvas	self subclassResponsibility!

renderFooterCellSummarizing: tableContents on: aCanvas 	self subclassResponsibility!

renderHeadingOn: aCanvas	self subclassResponsibility! !
!WebTableColumnRendererBehavior categoriesFor: #renderCellAt:for:on:!public!rendering! !
!WebTableColumnRendererBehavior categoriesFor: #renderFooterCellSummarizing:on:!public!rendering! !
!WebTableColumnRendererBehavior categoriesFor: #renderHeadingOn:!public!rendering! !

