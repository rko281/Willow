"Filed out from Dolphin Smalltalk 7"!

BootstrapPanelBuilder subclass: #Bootstrap4CardBuilder
	instanceVariableNames: 'headingOptional footerOptional topImageOptional bottomImageOptional elements currentBody supplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4CardBuilder guid: (GUID fromString: '{9946111e-df72-4cde-a597-5af7cfd15236}')!
Bootstrap4CardBuilder comment: 'Bootstrap’s cards provide a flexible and extensible content container with multiple variants and options.AboutA card is a flexible and extensible content container. It includes options for headers and footers, a wide variety of content, contextual background colors, and powerful display options. If you’re familiar with Bootstrap 3, cards replace our old panels, wells, and thumbnails. Similar functionality to those components is available as modifier classes for cards.'!
!Bootstrap4CardBuilder categoriesForClass!Willow-Bootstrap-4-WebViews! !
!Bootstrap4CardBuilder methodsFor!

add: anElementToRender	elements add: anElementToRender!

addActionLabeled: aRenderable executing: anActionBlock	self addActionLabeled: aRenderable executing: anActionBlock applying: [  ]!

addActionLabeled: aRenderable executing: anActionBlock applying: aCommand	| anchor |	anchor := supplier		asynchronicLinkLabeled: aRenderable		applying:			[ :link :constants | ( link setAttribute: 'href' to: '#' ) + link addClass bootstrap4 cardLink + aCommand ].	anActionBlock value: anchor.	self addToBody: anchor!

addSubtitle: aRenderable withLevel: aLevel	self addSubtitle: aRenderable withLevel: aLevel applying: [  ]!

addSubtitle: aRenderable withLevel: aLevel applying: aCommand	self		addToBody:			( HeadingWebView				displaying: aRenderable				withLevel: aLevel				applying: [ :heading | heading addClass bootstrap4 cardSubtitle + aCommand ] )!

addText: aRenderable	self		addToBody: [ :canvas | canvas paragraph with: aRenderable applying: [ :p | p addClass bootstrap4 cardText ] ]!

addTitle: aRenderable withLevel: aLevel	self addTitle: aRenderable withLevel: aLevel applying: [  ]!

addTitle: aRenderable withLevel: aLevel applying: aCommand	self		addToBody:			( HeadingWebView				displaying: aRenderable				withLevel: aLevel				applying: [ :heading | heading addClass bootstrap4 cardTitle + aCommand ] )!

addToBody: aRenderable	currentBody add: aRenderable!

bottomImageCapLocatedAt: aLocation applying: anImageCommand	bottomImageOptional := Optional		containing:			( ImageWebView				locatedAt: aLocation				applying: [ :image | image addClass bootstrap4 cardImageTop + anImageCommand ] )!

buildApplying: aCommandToCard	self resetCurrentBody.	^ GenericContainerWebView		wrapping: [ :canvas | 			self renderTopImageOn: canvas.			self renderHeadingOn: canvas.			self renderBodyElementsOn: canvas.			self renderFooterOn: canvas.			self renderBottomImageOn: canvas			]		applying: [ :panel | panel addClass bootstrap4 card + aCommandToCard ]!

cardBodyRenderingAll: bodyElements	^ [ :canvas | canvas div with: bodyElements applying: [ :div | div addClass bootstrap4 cardBody ] ]!

footer: aRenderable	footerOptional := Optional containing: aRenderable!

headingDisplaying: aRenderable	headingOptional := Optional		containing: [ :canvas | canvas div with: aRenderable applying: [ :div | div addClass bootstrap4 cardHeader ] ]!

headingDisplaying: aRenderable withLevel: aHeadingLevel	self headingDisplaying: aRenderable withLevel: aHeadingLevel applying: [ :heading |  ]!

headingDisplaying: aRenderable withLevel: aHeadingLevel applying: aComponentCommand	headingOptional := Optional		containing:			( HeadingWebView				displaying: aRenderable				withLevel: aHeadingLevel				applying: [ :heading | heading addClass bootstrap4 cardHeader + aComponentCommand ] )!

initializeUsing: aSupplier	supplier := aSupplier.	topImageOptional := Optional unused.	headingOptional := Optional unused.	elements := OrderedCollection new.	currentBody := OrderedCollection new.	footerOptional := Optional unused.	bottomImageOptional := Optional unused!

renderBodyElementsOn: canvas	canvas render: elements!

renderBottomImageOn: canvas	bottomImageOptional withContentDo: [ :image | canvas render: image ]!

renderFooterOn: canvas	footerOptional		withContentDo: [ :footer | canvas div with: footer applying: [ :div | div addClass bootstrap4 cardFooter ] ]!

renderHeadingOn: canvas	headingOptional withContentDo: [ :heading | canvas render: heading ]!

renderTopImageOn: canvas	topImageOptional withContentDo: [ :image | canvas render: image ]!

resetCurrentBody	currentBody ifNotEmpty: [ self add: (self cardBodyRenderingAll: currentBody) ].	currentBody := OrderedCollection new!

topImageCapLocatedAt: aLocation applying: anImageCommand	topImageOptional := Optional		containing:			( ImageWebView				locatedAt: aLocation				applying: [ :image | image addClass bootstrap4 cardImageTop + anImageCommand ] )!

withListGroup: aListWebView	self resetCurrentBody.	aListWebView embeddedInCard.	self add: aListWebView!

withTable: aTableWebView	self resetCurrentBody.	self add: aTableWebView!

wrapping: theBodyContent	self resetCurrentBody.	self add: ( self cardBodyRenderingAll: {theBodyContent} )! !
!Bootstrap4CardBuilder categoriesFor: #add:!private! !
!Bootstrap4CardBuilder categoriesFor: #addActionLabeled:executing:!Configuring!public! !
!Bootstrap4CardBuilder categoriesFor: #addActionLabeled:executing:applying:!Configuring!public! !
!Bootstrap4CardBuilder categoriesFor: #addSubtitle:withLevel:!Configuring!public! !
!Bootstrap4CardBuilder categoriesFor: #addSubtitle:withLevel:applying:!Configuring!public! !
!Bootstrap4CardBuilder categoriesFor: #addText:!Configuring!public! !
!Bootstrap4CardBuilder categoriesFor: #addTitle:withLevel:!Configuring!public! !
!Bootstrap4CardBuilder categoriesFor: #addTitle:withLevel:applying:!Configuring!public! !
!Bootstrap4CardBuilder categoriesFor: #addToBody:!Configuring!public! !
!Bootstrap4CardBuilder categoriesFor: #bottomImageCapLocatedAt:applying:!Configuring!public! !
!Bootstrap4CardBuilder categoriesFor: #buildApplying:!building!public! !
!Bootstrap4CardBuilder categoriesFor: #cardBodyRenderingAll:!private / rendering!public! !
!Bootstrap4CardBuilder categoriesFor: #footer:!Configuring!public! !
!Bootstrap4CardBuilder categoriesFor: #headingDisplaying:!Configuring!public! !
!Bootstrap4CardBuilder categoriesFor: #headingDisplaying:withLevel:!Configuring!public! !
!Bootstrap4CardBuilder categoriesFor: #headingDisplaying:withLevel:applying:!Configuring!public! !
!Bootstrap4CardBuilder categoriesFor: #initializeUsing:!initialization!public! !
!Bootstrap4CardBuilder categoriesFor: #renderBodyElementsOn:!private / rendering!public! !
!Bootstrap4CardBuilder categoriesFor: #renderBottomImageOn:!private / rendering!public! !
!Bootstrap4CardBuilder categoriesFor: #renderFooterOn:!private / rendering!public! !
!Bootstrap4CardBuilder categoriesFor: #renderHeadingOn:!private / rendering!public! !
!Bootstrap4CardBuilder categoriesFor: #renderTopImageOn:!private / rendering!public! !
!Bootstrap4CardBuilder categoriesFor: #resetCurrentBody!initialization!public! !
!Bootstrap4CardBuilder categoriesFor: #topImageCapLocatedAt:applying:!Configuring!public! !
!Bootstrap4CardBuilder categoriesFor: #withListGroup:!Configuring!public! !
!Bootstrap4CardBuilder categoriesFor: #withTable:!Configuring!public! !
!Bootstrap4CardBuilder categoriesFor: #wrapping:!Configuring!public! !

!Bootstrap4CardBuilder class methodsFor!

using: aComponentSupplier	^ self new initializeUsing: aComponentSupplier! !
!Bootstrap4CardBuilder class categoriesFor: #using:!instance creation!public! !

