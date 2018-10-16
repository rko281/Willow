"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #PeriodicallyRenderedWebView
	instanceVariableNames: 'stopRenderingContent refreshCommand refreshIntervalInMilliseconds identifiedViewToRefresh conditionBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PeriodicallyRenderedWebView guid: (GUID fromString: '{74386074-86ba-4cb7-9649-45f936dc49ac}')!
PeriodicallyRenderedWebView comment: 'I''m a periodically rendered web view, easing the burden of refreshing automatically some content.'!
!PeriodicallyRenderedWebView categoriesForClass!Willow-WebViews! !
!PeriodicallyRenderedWebView methodsFor!

initializeEvaluating: aRefreshCommand every: aNumber millisecondsThenRendering: anIdentifiedWebView until: aConditionBlock	refreshCommand := aRefreshCommand.	refreshIntervalInMilliseconds := aNumber.	identifiedViewToRefresh := anIdentifiedWebView.	conditionBlock := aConditionBlock.	stopRenderingContent := false!

refreshAndRenderContentOn: aCanvas	refreshCommand value.	aCanvas render: identifiedViewToRefresh view.	stopRenderingContent := true.	aCanvas document addLoadScript: (aCanvas jQuery ajax callback: [ stopRenderingContent := conditionBlock value ])!

refreshAndRenderOn: aCanvas	refreshCommand value.	aCanvas render: identifiedViewToRefresh!

renderContentOn: aCanvas	self refreshAndRenderOn: aCanvas.	aCanvas		every: refreshIntervalInMilliseconds		millisecondsEvaluateAsAjaxScript: [:scriptCanvas |			self scriptToRefreshAndRenderContentOn: scriptCanvas]		until: [stopRenderingContent]!

scriptToRefreshAndRenderContentOn: aCanvas	^(aCanvas jQuery id: identifiedViewToRefresh identifier)		html: [:renderingCanvas | self refreshAndRenderContentOn: renderingCanvas]! !
!PeriodicallyRenderedWebView categoriesFor: #initializeEvaluating:every:millisecondsThenRendering:until:!initialization!public! !
!PeriodicallyRenderedWebView categoriesFor: #refreshAndRenderContentOn:!private/rendering!public! !
!PeriodicallyRenderedWebView categoriesFor: #refreshAndRenderOn:!private/rendering!public! !
!PeriodicallyRenderedWebView categoriesFor: #renderContentOn:!public!rendering! !
!PeriodicallyRenderedWebView categoriesFor: #scriptToRefreshAndRenderContentOn:!private/rendering!public! !

!PeriodicallyRenderedWebView class methodsFor!

evaluating: aRefreshCommand every: aNumber millisecondsThenRendering: aViewToRender	^ self		evaluating: aRefreshCommand		every: aNumber		millisecondsThenRendering: aViewToRender		until: [ false ]!

evaluating: aRefreshCommand every: aNumber millisecondsThenRendering: aViewToRender until: aConditionBlock	^ self new		initializeEvaluating: aRefreshCommand		every: aNumber		millisecondsThenRendering:			(IdentifiedWebView				forDivNamed: 'periodically-refreshed'				containing: aViewToRender)		until: aConditionBlock! !
!PeriodicallyRenderedWebView class categoriesFor: #evaluating:every:millisecondsThenRendering:!Instance Creation!public! !
!PeriodicallyRenderedWebView class categoriesFor: #evaluating:every:millisecondsThenRendering:until:!Instance Creation!public! !

