﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPLiveDocumentationBehaviorWebView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPLiveDocumentationBehaviorWebView guid: (GUID fromString: '{4e64838e-2ec8-4854-9f92-040b52206c5d}')!
WPLiveDocumentationBehaviorWebView comment: 'í''m a web view showing the details for a class or trait'!
!WPLiveDocumentationBehaviorWebView categoriesForClass!Willow-Playground-LiveDocs-WebViews! !
!WPLiveDocumentationBehaviorWebView methodsFor!

buttonToBrowse: aBehavior	| browseButton |	browseButton := self componentSupplier		asynchronicLinkActingAsButtonLabeled: 'Open Browser'		applying: [ :button | button addClass bootstrap3 buttonPrimary + button addClass bootstrap3 pullRight ].	browseButton onTrigger evaluate: [ aBehavior browse ].	^ browseButton!

classNameHeaderFor: aClass	^ HeadingWebView		displaying: [ :html | 			html				render: aClass name;				space.			html span with: 'CLASS' applying: [ :span | span addClass bootstrap3 badge ].			html render: (self buttonToBrowse: aClass) ]		withLevel: 2!

emptyPlaceholder	^ self componentSupplier notificationBuilder		informational;		wrapping: [ :canvas | 			canvas				render: (Bootstrap3IconWebView representing: Glyphicons exclamationSign);				space;				strong: 'Hey!! Looks like you don''t selected anything yet.';				break;				break;				render: 'Give it a try to the left panel. Select a package and later a behavior to view it''s details.';				space;				strong: (Bootstrap3IconWebView representing: Glyphicons thumbsUp) ];		build!

renderClass: aClass on: html	html		render: (self classNameHeaderFor: aClass);		render: (WPLiveDocumentationClassCommentWebView for: aClass);		render: (WPLiveDocumentationClassHierarchyCard for: aClass);		render: (WPLiveDocumentationClassDefinitionCard for: aClass);		render: (HeadingWebView displaying: 'Class methods' withLevel: 3).	self renderMethodsIn: aClass class on: html.	html render: (HeadingWebView displaying: 'Instance methods' withLevel: 3).	self renderMethodsIn: aClass on: html!

renderContentOn: html	self session applicationContext		withSelectedBehaviorDo: [ :behavior | 			behavior isTrait				ifTrue: [ self renderTrait: behavior on: html ]				ifFalse: [ self renderClass: behavior on: html ] ]		ifNone: [ html				break;				render: self emptyPlaceholder ]!

renderMethodsIn: aBehavior on: html	(aBehavior methods sorted: [ :a :b | a selector < b selector ])		select: [ :method | method isExtension not and: [ (method protocol includesSubstring: 'private') not ] ]		thenDo: [ :method | html render: (WPLiveDocumentationMethodCard for: method) ]!

renderTrait: trait on: html	html		render: (self traitNameHeaderFor: trait);		render: (HeadingWebView displaying: 'Methods' withLevel: 3).	self renderMethodsIn: trait on: html!

traitNameHeaderFor: aTrait	^ HeadingWebView		displaying: [ :html | 			html				render: aTrait name;				space.			html span with: 'TRAIT' applying: [ :span | span addClass bootstrap3 badge ] ]		withLevel: 2! !
!WPLiveDocumentationBehaviorWebView categoriesFor: #buttonToBrowse:!private! !
!WPLiveDocumentationBehaviorWebView categoriesFor: #classNameHeaderFor:!private! !
!WPLiveDocumentationBehaviorWebView categoriesFor: #emptyPlaceholder!private! !
!WPLiveDocumentationBehaviorWebView categoriesFor: #renderClass:on:!private! !
!WPLiveDocumentationBehaviorWebView categoriesFor: #renderContentOn:!public!rendering! !
!WPLiveDocumentationBehaviorWebView categoriesFor: #renderMethodsIn:on:!private! !
!WPLiveDocumentationBehaviorWebView categoriesFor: #renderTrait:on:!private! !
!WPLiveDocumentationBehaviorWebView categoriesFor: #traitNameHeaderFor:!private! !

