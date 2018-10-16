﻿"Filed out from Dolphin Smalltalk 7"!

WillowComponentBuilder subclass: #BootstrapToggableNavigationBuilder
	instanceVariableNames: 'headers contents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapToggableNavigationBuilder guid: (GUID fromString: '{47ebeb67-99ae-4380-8228-da5406c39966}')!
BootstrapToggableNavigationBuilder comment: 'Add quick, dynamic tab functionality to transition through panes of local content, even via dropdown menus. Nested tabs are not supported.'!
!BootstrapToggableNavigationBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapToggableNavigationBuilder methodsFor!

addNavigationHeadedBy: aRenderable containing: aNavigationContent

buildApplying: aCommandToComponent

dataToggleValue

identifiedViewContaining: aNavigationContent

initialize

navigationTypeCommand

renderFirstTabHeaderOn: canvas

renderRemainingTabHeadersOn: aCanvas

renderTabContentOn: aCanvas

renderTabListOn: aCanvas applying: aCommantToTabList

tabListOn: canvas

tabTitleWith: aRenderable linkedTo: identifiedContent
!BootstrapToggableNavigationBuilder categoriesFor: #addNavigationHeadedBy:containing:!private! !
!BootstrapToggableNavigationBuilder categoriesFor: #buildApplying:!Building!public! !
!BootstrapToggableNavigationBuilder categoriesFor: #dataToggleValue!private! !
!BootstrapToggableNavigationBuilder categoriesFor: #identifiedViewContaining:!private! !
!BootstrapToggableNavigationBuilder categoriesFor: #initialize!initialization!public! !
!BootstrapToggableNavigationBuilder categoriesFor: #navigationTypeCommand!private! !
!BootstrapToggableNavigationBuilder categoriesFor: #renderFirstTabHeaderOn:!private / Rendering!public! !
!BootstrapToggableNavigationBuilder categoriesFor: #renderRemainingTabHeadersOn:!private / Rendering!public! !
!BootstrapToggableNavigationBuilder categoriesFor: #renderTabContentOn:!private / Rendering!public! !
!BootstrapToggableNavigationBuilder categoriesFor: #renderTabListOn:applying:!private / Rendering!public! !
!BootstrapToggableNavigationBuilder categoriesFor: #tabListOn:!private / Rendering!public! !
!BootstrapToggableNavigationBuilder categoriesFor: #tabTitleWith:linkedTo:!private! !
