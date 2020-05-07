"Filed out from Dolphin Smalltalk 7"!

BootstrapToggableNavigationBuilder subclass: #BootstrapToggableTabsBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapToggableTabsBuilder guid: (GUID fromString: '{78241418-0bdc-4d1d-87ab-4351cd220a3c}')!
BootstrapToggableTabsBuilder comment: 'Add quick, dynamic tab functionality to transition through panes of local content, even via dropdown menus. Nested tabs are not supported.'!
!BootstrapToggableTabsBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapToggableTabsBuilder methodsFor!

addTabHeadedBy: aRenderable containing: aTabContent	self addNavigationHeadedBy: aRenderable containing: aTabContent!

dataToggleValue	^ Constants >> #aria >> #tab!

navigationTypeCommand	^ [ :list | list addClass bootstrapCommon navTabs ] asWebComponentCommand! !
!BootstrapToggableTabsBuilder categoriesFor: #addTabHeadedBy:containing:!Configuring!public! !
!BootstrapToggableTabsBuilder categoriesFor: #dataToggleValue!private! !
!BootstrapToggableTabsBuilder categoriesFor: #navigationTypeCommand!private! !

