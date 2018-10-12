"Filed out from Dolphin Smalltalk 7"!

PresentationStepWebView subclass: #ProjectLocationStepWebView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ProjectLocationStepWebView guid: (GUID fromString: '{afbd2490-039c-4b5e-8dd3-3982a5a4b23b}')!
ProjectLocationStepWebView comment: 'I''m a step showing the related projects and his locations.'!
!ProjectLocationStepWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!ProjectLocationStepWebView methodsFor!

contactFieldSet	^ self componentSupplier gridBuilder		addContent: self gabrielCard;		addContent: self maxiCard;		build!

description	^ 'Download Willow today!!'!

gabrielCard	^ SpeakerCardWebView		for: 'Gabriel Omar Cotelli'		avatarLocatedAt: 'https://s.gravatar.com/avatar/e6e2cc60bac4aa512ecb68a391b1f3e9?s=80'		academicDegree: 'B.Comp.'		email: 'g.cotelli'		githubUser: 'gcotelli'!

gitHubImageView	^ ImageWebView		locatedAt: Smalltalks2017FileMetadataLibrary / #gitHubMark32pxPng		applying: [ :image | image setStyleTo: [ :style | style width: 22 px ] ]!

maxiCard	^ SpeakerCardWebView		for: 'Maximiliano Tabacman'		avatarLocatedAt: 'https://s.gravatar.com/avatar/2b6ca6391139ddaa462781e339bbf060?s=80'		academicDegree: 'Ph.D.'		email: 'm.tabacman'		githubUser: 'mtabacman'!

projectsTableView	| tableBuilder projectTable |	tableBuilder := self componentSupplier tableBuilder.	tableBuilder		addColumn: [ :column | 			column				titled: 'Project';				rendering: [ :info | info at: 1 ] ];		addColumn: [ :column | 			column				titled: 'Content';				rendering: [ :info | info at: 2 ] ];		addColumn: [ :column | 			column				titled: 'Status';				rendering: [ :info | info at: 3 ] ];		addColumn: [ :column | 			column				rendering: [ :info | self componentSupplier asynchronicLinkLabeled: (info at: 4) applying: (OpenLocationCommand forNewBrowsingContextNavigatingTo: ('https://github.com/<1s>' expandMacrosWith: (info at: 4))) ] ].	projectTable := tableBuilder buildApplying: [ :table | table addClass bootstrap tableCondensed ].	projectTable changeContentsTo: self projectsWithLocations.	^ projectTable!

projectsWithLocations	^ Array		with:			{'Willow'.			'Core features, components and commands'.			self stableLabel.			'ba-st/Willow'}		with:			{'Willow-Bootstrap'.			'Bootstrap 3 components and plugins'.			self stableLabel.			'ba-st/Willow-Bootstrap'}		with:			{'Willow-JQueryUI'.			'JQueryUI components'.			self stableLabel.			'ba-st/Willow-JQueryUI'}		with:			{'Willow-SemanticUI'.			'SemanticUI components'.			self workInProgressLabel.			'ba-st/Willow-SemanticUI'}		with:			{'Willow-SpinKit'.			'Spinner components (SpinKit)'.			self stableLabel.			'ba-st/Willow-SpinKit'}		with:			{'Willow-Playground'.			'This presentation, Test Runner and Live Docs applications'.			self stableLabel.			'ba-st/Willow-Playground'}!

renderContentOn: aCanvas	aCanvas		render:			(HeadingWebView				displaying: [ :html | 					html						render: 'Willow and it''s related projects are part of the web stack ecosystem hosted at '.					html anchor						url: 'https://github.com/ba-st';						with: [ html								render: self gitHubImageView;								strong: '/ba-st' ] ]				withLevel: 3).	aCanvas render: self projectsTableView.	aCanvas render: self contactFieldSet!

shortName	^ 'Project Location'!

stableLabel	^ PhrasingContainerWebView wrapping: 'STABLE' applying: [ :span | span addClass bootstrap label + span addClass bootstrap labelSuccess ]!

workInProgressLabel	^ PhrasingContainerWebView wrapping: 'WIP' applying: [ :span | span addClass bootstrap label + span addClass bootstrap labelWarning ]! !
!ProjectLocationStepWebView categoriesFor: #contactFieldSet!private/accessing!public! !
!ProjectLocationStepWebView categoriesFor: #description!accessing!public! !
!ProjectLocationStepWebView categoriesFor: #gabrielCard!private/accessing!public! !
!ProjectLocationStepWebView categoriesFor: #gitHubImageView!private/accessing!public! !
!ProjectLocationStepWebView categoriesFor: #maxiCard!private/accessing!public! !
!ProjectLocationStepWebView categoriesFor: #projectsTableView!private/accessing!public! !
!ProjectLocationStepWebView categoriesFor: #projectsWithLocations!private/accessing!public! !
!ProjectLocationStepWebView categoriesFor: #renderContentOn:!public!rendering! !
!ProjectLocationStepWebView categoriesFor: #shortName!accessing!public! !
!ProjectLocationStepWebView categoriesFor: #stableLabel!private/accessing!public! !
!ProjectLocationStepWebView categoriesFor: #workInProgressLabel!private/accessing!public! !

