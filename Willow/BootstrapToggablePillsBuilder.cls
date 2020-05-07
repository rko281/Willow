"Filed out from Dolphin Smalltalk 7"!

BootstrapToggableNavigationBuilder subclass: #BootstrapToggablePillsBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapToggablePillsBuilder guid: (GUID fromString: '{04748c1b-96d4-464e-ac7a-e111bbcabd8c}')!
BootstrapToggablePillsBuilder comment: 'Add quick, dynamic pills functionality to transition through panes of local content, even via dropdown menus. '!
!BootstrapToggablePillsBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapToggablePillsBuilder methodsFor!

addPillHeadedBy: aRenderable containing: aTabContent	self addNavigationHeadedBy: aRenderable containing: aTabContent!

dataToggleValue	^ Constants >> #bootstrap >> #pill!

navigationTypeCommand	^ [ :list | list addClass bootstrapCommon navPills ] asWebComponentCommand! !
!BootstrapToggablePillsBuilder categoriesFor: #addPillHeadedBy:containing:!adding!public! !
!BootstrapToggablePillsBuilder categoriesFor: #dataToggleValue!private! !
!BootstrapToggablePillsBuilder categoriesFor: #navigationTypeCommand!private! !

