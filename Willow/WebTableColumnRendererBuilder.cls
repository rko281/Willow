﻿"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #WebTableColumnRendererBuilder
	instanceVariableNames: 'title renderingCommandBinding footerRenderingCommand cellCommand headingCommand footerCommand tableBuilder'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebTableColumnRendererBuilder guid: (GUID fromString: '{824eabae-93c7-49c4-8fe8-dacaf270fbc9}')!
WebTableColumnRendererBuilder comment: 'I''m a builder of table column renderers'!
!WebTableColumnRendererBuilder categoriesForClass!Willow-WebViews! !
!WebTableColumnRendererBuilder methodsFor!

applyingToEachCell: aCellCommand

build

initializeOn: aTableWebViewBuilder

rendering: aRenderingCommand

summarizedWith: aFooterRenderingCommand

summarizedWith: aFooterRenderingCommand applying: aCommandToFooter

titled: aRenderable

titled: aRenderable applying: aHeadingCommand
!WebTableColumnRendererBuilder categoriesFor: #applyingToEachCell:!configuring!public! !
!WebTableColumnRendererBuilder categoriesFor: #build!building!public! !
!WebTableColumnRendererBuilder categoriesFor: #initializeOn:!initialization!public! !
!WebTableColumnRendererBuilder categoriesFor: #rendering:!configuring!public! !
!WebTableColumnRendererBuilder categoriesFor: #summarizedWith:!configuring!public! !
!WebTableColumnRendererBuilder categoriesFor: #summarizedWith:applying:!configuring!public! !
!WebTableColumnRendererBuilder categoriesFor: #titled:!configuring!public! !
!WebTableColumnRendererBuilder categoriesFor: #titled:applying:!configuring!public! !

!WebTableColumnRendererBuilder class methodsFor!

on: aTableWebViewBuilder
!WebTableColumnRendererBuilder class categoriesFor: #on:!instance creation!public! !
