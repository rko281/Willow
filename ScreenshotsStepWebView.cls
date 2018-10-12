"Filed out from Dolphin Smalltalk 7"!

PresentationStepWebView subclass: #ScreenshotsStepWebView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ScreenshotsStepWebView guid: (GUID fromString: '{10c166e4-2399-481b-8a4c-484c4cfb5baa}')!
ScreenshotsStepWebView comment: 'I''m a step showing real apps screenshots.'!
!ScreenshotsStepWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!ScreenshotsStepWebView methodsFor!

abbacoScreenshot	^ self screenshotFor: #abbacoPng describedBy: 'Abbaco'!

description	^ 'Real applications using Willow'!

eraForRolemasterScreenshot	^ self screenshotFor: #eraJpg describedBy: 'ERA for Rolemaster'!

orderManagementScreenshot	^ self screenshotFor: #omPng describedBy: 'Mercap Order Management'!

portfolioScreenshot	^ self screenshotFor: #portfolioPng describedBy: 'Mercap Portfolio'!

renderContentOn: aCanvas	self		renderCarouselWithAll:			{self eraForRolemasterScreenshot.			self abbacoScreenshot.			self tradingRoomScreenshot.			self orderManagementScreenshot.			self portfolioScreenshot}		on: aCanvas!

screenshotFor: aSymbol describedBy: aCaption	^ [ :html | 	html render: (ImageWebView locatedAt: Smalltalks2017FileMetadataLibrary / aSymbol applying: [ :theImage | theImage addClass smalltalks2017 screenshot ]).	html div		class: 'carousel-caption';		setStyleTo: [ :style | 			style				color: #black;				paddingBottom: 0 ];		with: aCaption ]!

shortName	^ 'Applications'!

tradingRoomScreenshot	^ self screenshotFor: #tradingRoomJpg describedBy: 'Mercap Trading Room'! !
!ScreenshotsStepWebView categoriesFor: #abbacoScreenshot!private/accessing!public! !
!ScreenshotsStepWebView categoriesFor: #description!accessing!public! !
!ScreenshotsStepWebView categoriesFor: #eraForRolemasterScreenshot!private/accessing!public! !
!ScreenshotsStepWebView categoriesFor: #orderManagementScreenshot!private/accessing!public! !
!ScreenshotsStepWebView categoriesFor: #portfolioScreenshot!private/accessing!public! !
!ScreenshotsStepWebView categoriesFor: #renderContentOn:!public!rendering! !
!ScreenshotsStepWebView categoriesFor: #screenshotFor:describedBy:!private/accessing!public! !
!ScreenshotsStepWebView categoriesFor: #shortName!accessing!public! !
!ScreenshotsStepWebView categoriesFor: #tradingRoomScreenshot!private/accessing!public! !

