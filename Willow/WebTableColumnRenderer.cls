﻿"Filed out from Dolphin Smalltalk 7"!

WebTableColumnRendererBehavior subclass: #WebTableColumnRenderer
	instanceVariableNames: 'title renderingCommand commandToHeading commandToCell footerRenderingCommand commandToFooterCell'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebTableColumnRenderer guid: (GUID fromString: '{e19097a0-b1a5-4a37-8f70-e8d4425db519}')!
WebTableColumnRenderer comment: 'I''m responsible of rendering a column and header in a table.'!
!WebTableColumnRenderer categoriesForClass!Willow-WebViews! !
!WebTableColumnRenderer methodsFor!

initializeTitled: aTitle applyingToEachCell: aCommandToCell renderingWith: aRenderingCommand applyingToHeading: aCommandToHeading summarizedWith: aFooterRenderingCommand applyingToFooter: aCommandToFooterCell

renderCellAt: anIndex for: anItem on: aCanvas

renderFooterCellSummarizing: tableContents on: aCanvas

renderHeadingOn: aCanvas
!WebTableColumnRenderer categoriesFor: #initializeTitled:applyingToEachCell:renderingWith:applyingToHeading:summarizedWith:applyingToFooter:!initialization!public! !
!WebTableColumnRenderer categoriesFor: #renderCellAt:for:on:!public!rendering! !
!WebTableColumnRenderer categoriesFor: #renderFooterCellSummarizing:on:!public!rendering! !
!WebTableColumnRenderer categoriesFor: #renderHeadingOn:!public!rendering! !

!WebTableColumnRenderer class methodsFor!

titled: aName applyingToEachCell: aCommandToCell renderingWith: aRenderingCommand applyingToHeading: aCommandToHeading summarizedWith: aFooterRenderingCommand applyingToFooter: aCommantToFooterCell
!WebTableColumnRenderer class categoriesFor: #titled:applyingToEachCell:renderingWith:applyingToHeading:summarizedWith:applyingToFooter:!Instance Creation!public! !
