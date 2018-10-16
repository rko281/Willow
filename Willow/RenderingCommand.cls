﻿"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #RenderingCommand
	instanceVariableNames: 'shouldRender renderingCondition identifiedViews'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RenderingCommand guid: (GUID fromString: '{abdb7184-235d-4d8e-8cdd-e67bff7baaf5}')!
RenderingCommand comment: 'I''m a Web Interaction Command used to render again the contents of an IdentifedWebView .'!
!RenderingCommand categoriesForClass!Willow-WebInteraction! !
!RenderingCommand methodsFor!

clientIndependentActions

initializeEvaluating: aCallback asConditionToRenderAll: anIdentifiedViewCollection

modelLoadingActions

priorityActions

requiresSerialization

serverIndependentActions
!RenderingCommand categoriesFor: #clientIndependentActions!accessing!public! !
!RenderingCommand categoriesFor: #initializeEvaluating:asConditionToRenderAll:!initialize/release!public! !
!RenderingCommand categoriesFor: #modelLoadingActions!accessing!public! !
!RenderingCommand categoriesFor: #priorityActions!accessing!public! !
!RenderingCommand categoriesFor: #requiresSerialization!public!testing! !
!RenderingCommand categoriesFor: #serverIndependentActions!accessing!public! !

!RenderingCommand class methodsFor!

assertInitializationOfAll: anIdentifiedViewCollection

evaluating: aCallback asConditionToRender: anIdentifiedView

evaluating: aCallback asConditionToRenderAll: anIdentifiedViewCollection

for: anIdentifiedView

forAll: anIdentifiedViewCollection
!RenderingCommand class categoriesFor: #assertInitializationOfAll:!Preconditions!public! !
!RenderingCommand class categoriesFor: #evaluating:asConditionToRender:!instance creation!public! !
!RenderingCommand class categoriesFor: #evaluating:asConditionToRenderAll:!instance creation!public! !
!RenderingCommand class categoriesFor: #for:!instance creation!public! !
!RenderingCommand class categoriesFor: #forAll:!instance creation!public! !
