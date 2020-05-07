"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #PresentationStepWebView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PresentationStepWebView guid: (GUID fromString: '{877553e3-077b-46b3-a75f-395c63479159}')!
PresentationStepWebView comment: 'I''m an abstract presentation step. Providing facilities used by all the steps.'!
!PresentationStepWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!PresentationStepWebView methodsFor!

browseStepButtonEvaluating: aCallback	| browseButton |	browseButton := self componentSupplier		asynchronicButtonLabeled: 'Browse'		applying: [ :theButton | 			theButton addClass bootstrap3 buttonDefault + theButton addClass bootstrap3 buttonSmall				+ theButton addClass smalltalks2017 browseStep			].	browseButton onTrigger evaluate: aCallback.	^ browseButton!

description	self subclassResponsibility!

renderCarouselControlIn: carouselIdentifier slidingTo: aSlideTarget anchorStyledWith: anAnchorClass spanStyledWith: aSpanClass named: aName on: aCanvas	aCanvas anchor		class: anAnchorClass;		class: 'carousel-control';		url: ( '#<1s>' expandMacrosWith: carouselIdentifier );		attributeAt: 'role' put: 'button';		attributeAt: 'data-slide' put: aSlideTarget;		setStyleTo: [ :style | 			style				maxWidth: 50 px;				background: #none			];		with: [ aCanvas span				apply: [ :span | span addClass bootstrap3 glyphicon + ( span setARIAAttribute: 'hidden' to: true ) ];				class: aSpanClass.			aCanvas span with: aName applying: [ :div | div addClass bootstrap3 screenReaderOnly ]			]!

renderCarouselControlsIn: carouselIdentifier on: aCanvas	self		renderCarouselControlIn: carouselIdentifier		slidingTo: 'prev'		anchorStyledWith: 'left'		spanStyledWith: Glyphicons chevronLeft		named: 'Previous'		on: aCanvas.	self		renderCarouselControlIn: carouselIdentifier		slidingTo: 'next'		anchorStyledWith: 'right'		spanStyledWith: Glyphicons chevronRight		named: 'Next'		on: aCanvas!

renderCarouselSlidesContainerForAll: aRenderableCollection on: aCanvas	aCanvas div		class: 'carousel-inner';		attributeAt: 'role' put: 'listbox';		with: [ self renderSlidesForAll: aRenderableCollection on: aCanvas ]!

renderCarouselWithAll: aRenderableCollection on: aCanvas	| carouselIdentifier |	carouselIdentifier := 'theCarousel'.	aCanvas div		id: carouselIdentifier;		class: 'carousel';		class: 'slide';		attributeAt: 'data-ride' put: 'carousel';		script: ((aCanvas jQuery class: 'carousel') call: 'carousel' with: 'pause');		with: [ self renderCarouselSlidesContainerForAll: aRenderableCollection on: aCanvas.			self renderCarouselControlsIn: carouselIdentifier on: aCanvas ]!

renderPanelWrapping: aRenderable on: aCanvas	| panel |	panel := self componentSupplier panelBuilder		headingDisplaying: self description;		wrapping: aRenderable;		buildApplying: [ :thePanel | thePanel addClass bootstrap3 panelDefault ].	aCanvas render: panel!

renderSlidesForAll: aRenderableCollection on: aCanvas	aRenderableCollection		doWithIndex: [ :renderable :index | 			| component |			component := aCanvas div.			component class: 'item'.			renderable = aRenderableCollection first				ifTrue: [ component apply: [ :div | div addClass bootstrap3 active ] ].			component with: renderable ]!

renderSourceOf: aSelector andBrowseButton: aButtonOptional on: aCanvas	| sourceCodeString |	sourceCodeString := self class sourceCodeAt: aSelector.	sourceCodeString := sourceCodeString copyAfter: Character cr.	aCanvas preformatted		class: 'smalltalk';		with: [ aButtonOptional withContentDo: [ :button | aCanvas render: button ].			aCanvas code: sourceCodeString ].	aCanvas document		addLoadScript:			(JSStream				on:					'$("pre code").each(function(i, block) {    hljs.highlightBlock(block);  });')!

renderSourceOf: aSelector on: aCanvas	self renderSourceOf: aSelector andBrowseButton: Optional unused on: aCanvas!

renderSourceOf: aSelector withBrowseButtonOn: aCanvas	self		renderSourceOf: aSelector		andBrowseButton: (Optional containing: (self browseStepButtonEvaluating: [ (self class >> aSelector) browse ]))		on: aCanvas!

shortName	self subclassResponsibility! !
!PresentationStepWebView categoriesFor: #browseStepButtonEvaluating:!private/accessing!public! !
!PresentationStepWebView categoriesFor: #description!accessing!public! !
!PresentationStepWebView categoriesFor: #renderCarouselControlIn:slidingTo:anchorStyledWith:spanStyledWith:named:on:!private/rendering!public! !
!PresentationStepWebView categoriesFor: #renderCarouselControlsIn:on:!private/rendering!public! !
!PresentationStepWebView categoriesFor: #renderCarouselSlidesContainerForAll:on:!private/rendering!public! !
!PresentationStepWebView categoriesFor: #renderCarouselWithAll:on:!private/rendering!public! !
!PresentationStepWebView categoriesFor: #renderPanelWrapping:on:!private/rendering!public! !
!PresentationStepWebView categoriesFor: #renderSlidesForAll:on:!private/rendering!public! !
!PresentationStepWebView categoriesFor: #renderSourceOf:andBrowseButton:on:!private/rendering!public! !
!PresentationStepWebView categoriesFor: #renderSourceOf:on:!private/rendering!public! !
!PresentationStepWebView categoriesFor: #renderSourceOf:withBrowseButtonOn:!private/rendering!public! !
!PresentationStepWebView categoriesFor: #shortName!accessing!public! !

