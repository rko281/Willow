"Filed out from Dolphin Smalltalk 7"!

PresentationStepWebView subclass: #IntroductionStepWebView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
IntroductionStepWebView guid: (GUID fromString: '{f15822ba-8b96-470c-9291-a8ac6ea60e53}')!
IntroductionStepWebView comment: 'I''m the introduction step '!
!IntroductionStepWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!IntroductionStepWebView methodsFor!

description	^ 'Welcome to Willow 101: Feature Showcase'!

loadWillowFromGitHubCode!

loadWillowPlaygroundFromGitHubCode!

renderContentOn: aCanvas	| grid |	grid := self componentSupplier gridBuilder		columnsWidths: #(2 10);		applyingToCells: [ :cell | cell setStyleTo: [ :style :constants | style textAlign: constants >> #justify ] ];		addContent: self willowLogoView;		addContent: [ :html | 			html				strong: 'Willow is a Web Interaction Library that eases the burden of creating AJAX-based web applications.';				break;				break;				render: 'It''s built on top of the Seaside Web Framework providing a set of composable components, easier AJAX interaction and licensed under MIT.' ];		build.	aCanvas		render: grid;		break;		render:			(self componentSupplier				fieldSetContaining: [ :html | 					self renderSourceOf: #loadWillowFromGitHubCode on: html.					self renderSourceOf: #loadWillowPlaygroundFromGitHubCode on: html ]				applying: [  ]				withLegend: 'Get Started!!'				applying: [  ])!

shortName	^ 'Introduction'!

willowLogoView	^ ImageWebView		locatedAt: Smalltalks2017FileMetadataLibrary / #willowlogoSvg		applying: [ :image | image setStyleTo: [ :style | style width: 128 px ] ]! !
!IntroductionStepWebView categoriesFor: #description!accessing!public! !
!IntroductionStepWebView categoriesFor: #loadWillowFromGitHubCode!public! !
!IntroductionStepWebView categoriesFor: #loadWillowPlaygroundFromGitHubCode!public! !
!IntroductionStepWebView categoriesFor: #renderContentOn:!public!rendering! !
!IntroductionStepWebView categoriesFor: #shortName!accessing!public! !
!IntroductionStepWebView categoriesFor: #willowLogoView!private/accessing!public! !

