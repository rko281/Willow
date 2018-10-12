"Filed out from Dolphin Smalltalk 7"!

PresentationStepWebView subclass: #RenderingStepWebView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RenderingStepWebView guid: (GUID fromString: '{0c16839d-4aa1-419b-921e-78cd93749a38}')!
RenderingStepWebView comment: 'I''m a step showing the rendering basics.'!
!RenderingStepWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!RenderingStepWebView methodsFor!

codeToRenderBlock: aBlock on: aCanvasaCanvas render: aBlock!

codeToRenderComponent: aWillowComponent on: aCanvasaCanvas render: aWillowComponent!

codeToRenderStringOn: aCanvasaCanvas render: 'A simple string'!

description	^ 'Willow components can be easily rendered'!

renderContentOn: aCanvas	self		renderPanelWrapping: [ self renderSourceOf: #codeToRenderStringOn: on: aCanvas.			self renderSourceOf: #codeToRenderBlock:on: on: aCanvas.			self renderSourceOf: #codeToRenderComponent:on: on: aCanvas ]		on: aCanvas!

shortName	^ 'Rendering'! !
!RenderingStepWebView categoriesFor: #codeToRenderBlock:on:!private/accessing!public! !
!RenderingStepWebView categoriesFor: #codeToRenderComponent:on:!private/accessing!public! !
!RenderingStepWebView categoriesFor: #codeToRenderStringOn:!private/accessing!public! !
!RenderingStepWebView categoriesFor: #description!accessing!public! !
!RenderingStepWebView categoriesFor: #renderContentOn:!public!rendering! !
!RenderingStepWebView categoriesFor: #shortName!accessing!public! !

