﻿"Filed out from Dolphin Smalltalk 7"!

BootstrapPanelBuilder subclass: #Bootstrap4CardBuilder
	instanceVariableNames: 'headingOptional footerOptional topImageOptional bottomImageOptional elements currentBody supplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4CardBuilder guid: (GUID fromString: '{9946111e-df72-4cde-a597-5af7cfd15236}')!
Bootstrap4CardBuilder comment: 'Bootstrap’s cards provide a flexible and extensible content container with multiple variants and options.
!Bootstrap4CardBuilder categoriesForClass!Willow-Bootstrap-4-WebViews! !
!Bootstrap4CardBuilder methodsFor!

add: anElementToRender

addActionLabeled: aRenderable executing: anActionBlock

addActionLabeled: aRenderable executing: anActionBlock applying: aCommand

addSubtitle: aRenderable withLevel: aLevel

addSubtitle: aRenderable withLevel: aLevel applying: aCommand

addText: aRenderable

addTitle: aRenderable withLevel: aLevel

addTitle: aRenderable withLevel: aLevel applying: aCommand

addToBody: aRenderable

bottomImageCapLocatedAt: aLocation applying: anImageCommand

buildApplying: aCommandToCard

cardBodyRenderingAll: bodyElements

footer: aRenderable

headingDisplaying: aRenderable

headingDisplaying: aRenderable withLevel: aHeadingLevel

headingDisplaying: aRenderable withLevel: aHeadingLevel applying: aComponentCommand

initializeUsing: aSupplier

renderBodyElementsOn: canvas

renderBottomImageOn: canvas

renderFooterOn: canvas

renderHeadingOn: canvas

renderTopImageOn: canvas

resetCurrentBody

topImageCapLocatedAt: aLocation applying: anImageCommand

withListGroup: aListWebView

withTable: aTableWebView

wrapping: theBodyContent
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

using: aComponentSupplier
!Bootstrap4CardBuilder class categoriesFor: #using:!instance creation!public! !
