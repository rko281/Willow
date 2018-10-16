"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #WebTableColumnRendererBuilder
	instanceVariableNames: 'title renderingCommandBinding footerRenderingCommand cellCommand headingCommand footerCommand tableBuilder'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebTableColumnRendererBuilder guid: (GUID fromString: '{824eabae-93c7-49c4-8fe8-dacaf270fbc9}')!
WebTableColumnRendererBuilder comment: 'I''m a builder of table column renderers'!
!WebTableColumnRendererBuilder categoriesForClass!Willow-WebViews! !
!WebTableColumnRendererBuilder methodsFor!

applyingToEachCell: aCellCommand	cellCommand := aCellCommand!

build	^ WebTableColumnRenderer		titled: title		applyingToEachCell: cellCommand		renderingWith: renderingCommandBinding content		applyingToHeading: headingCommand		summarizedWith: footerRenderingCommand		applyingToFooter: footerCommand!

initializeOn: aTableWebViewBuilder	tableBuilder := aTableWebViewBuilder.	title := ''.	renderingCommandBinding := Binding undefinedExplainedBy: 'Missing rendering configuration'.	footerRenderingCommand := [  ].	cellCommand := [  ].	headingCommand := [  ].	footerCommand := [  ]!

rendering: aRenderingCommand	renderingCommandBinding := Binding to: aRenderingCommand !

summarizedWith: aFooterRenderingCommand	self summarizedWith: aFooterRenderingCommand applying: [  ]!

summarizedWith: aFooterRenderingCommand applying: aCommandToFooter	footerRenderingCommand := aFooterRenderingCommand.	footerCommand := aCommandToFooter.	tableBuilder renderFooter!

titled: aRenderable	self titled: aRenderable applying: [  ]!

titled: aRenderable applying: aHeadingCommand	title := aRenderable .	headingCommand := aHeadingCommand .	tableBuilder renderHeader! !
!WebTableColumnRendererBuilder categoriesFor: #applyingToEachCell:!configuring!public! !
!WebTableColumnRendererBuilder categoriesFor: #build!building!public! !
!WebTableColumnRendererBuilder categoriesFor: #initializeOn:!initialization!public! !
!WebTableColumnRendererBuilder categoriesFor: #rendering:!configuring!public! !
!WebTableColumnRendererBuilder categoriesFor: #summarizedWith:!configuring!public! !
!WebTableColumnRendererBuilder categoriesFor: #summarizedWith:applying:!configuring!public! !
!WebTableColumnRendererBuilder categoriesFor: #titled:!configuring!public! !
!WebTableColumnRendererBuilder categoriesFor: #titled:applying:!configuring!public! !

!WebTableColumnRendererBuilder class methodsFor!

on: aTableWebViewBuilder	^ self new initializeOn: aTableWebViewBuilder! !
!WebTableColumnRendererBuilder class categoriesFor: #on:!instance creation!public! !

