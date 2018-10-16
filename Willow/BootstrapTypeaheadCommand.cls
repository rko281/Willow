﻿"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #BootstrapTypeaheadCommand
	instanceVariableNames: 'scriptCommand searchResults'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapTypeaheadCommand guid: (GUID fromString: '{967d0756-2cef-49ee-a1c4-0c221b0d8893}')!
BootstrapTypeaheadCommand comment: 'I''m a component command enabling Bootstrap Typeahead using the programmatic-API'!
!BootstrapTypeaheadCommand categoriesForClass!Willow-Bootstrap-Frontend! !
!BootstrapTypeaheadCommand methodsFor!

afterSelectFunctionEvaluate: aSelectionCallback on: aCanvas

applyTo: aComponent on: aCanvas

evaluate: aSearchAction with: searchTerm using: aLabelsBlock

indexProperty

initializeSearchingWith: aSearchAction labeledBy: aLabelsBlock withSelectionDo: aSelectionCallback configuredBy: aConfigurationBlock

responseFunctionName

searchTermVariable

searchWith: aSearchAction labels: aLabelsBlock on: aCanvas

updaterFunction
!BootstrapTypeaheadCommand categoriesFor: #afterSelectFunctionEvaluate:on:!private! !
!BootstrapTypeaheadCommand categoriesFor: #applyTo:on:!processing!public! !
!BootstrapTypeaheadCommand categoriesFor: #evaluate:with:using:!private! !
!BootstrapTypeaheadCommand categoriesFor: #indexProperty!private! !
!BootstrapTypeaheadCommand categoriesFor: #initializeSearchingWith:labeledBy:withSelectionDo:configuredBy:!initialization!public! !
!BootstrapTypeaheadCommand categoriesFor: #responseFunctionName!private! !
!BootstrapTypeaheadCommand categoriesFor: #searchTermVariable!private! !
!BootstrapTypeaheadCommand categoriesFor: #searchWith:labels:on:!private! !
!BootstrapTypeaheadCommand categoriesFor: #updaterFunction!private! !

!BootstrapTypeaheadCommand class methodsFor!

defaultConfigurationBlock

defaultLabelBlock

searchingWith: aSearchAction labeledBy: aLabelsBlock withSelectionDo: aSelectionCallback

searchingWith: aSearchAction labeledBy: aLabelsBlock withSelectionDo: aSelectionCallback configuredBy: aConfigurationBlock

searchingWith: aSearchAction withSelectionDo: aSelectionCallback

searchingWith: aSearchAction withSelectionDo: aSelectionCallback configuredBy: aConfigurationBlock
!BootstrapTypeaheadCommand class categoriesFor: #defaultConfigurationBlock!private! !
!BootstrapTypeaheadCommand class categoriesFor: #defaultLabelBlock!private! !
!BootstrapTypeaheadCommand class categoriesFor: #searchingWith:labeledBy:withSelectionDo:!Instance Creation!public! !
!BootstrapTypeaheadCommand class categoriesFor: #searchingWith:labeledBy:withSelectionDo:configuredBy:!Instance Creation!public! !
!BootstrapTypeaheadCommand class categoriesFor: #searchingWith:withSelectionDo:!Instance Creation!public! !
!BootstrapTypeaheadCommand class categoriesFor: #searchingWith:withSelectionDo:configuredBy:!Instance Creation!public! !
