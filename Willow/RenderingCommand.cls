"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #RenderingCommand
	instanceVariableNames: 'shouldRender renderingCondition identifiedViews'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RenderingCommand guid: (GUID fromString: '{36562b1e-5fb2-4832-8e01-51282a447dcc}')!
RenderingCommand comment: 'I''m a Web Interaction Command used to render again the contents of an IdentifedWebView .'!
!RenderingCommand categoriesForClass!Willow-Core-WebInteraction! !
!RenderingCommand methodsFor!

clientIndependentActions	^Array with: [shouldRender := renderingCondition value]!

initializeEvaluating: aCallback asConditionToRenderAll: anIdentifiedViewCollection	shouldRender := true.	renderingCondition := aCallback.	identifiedViews  := anIdentifiedViewCollection!

modelLoadingActions	^ Array		with: [ :aScript :aCanvas | 			shouldRender				then: [ identifiedViews						do: [ :identifiedView | 							identifiedView identifyIn: aCanvas.							aScript << ( aCanvas jQuery id: identifiedView identifier ) html: identifiedView view							]					]			]!

priorityActions	^#()!

requiresSerialization	^true!

serverIndependentActions	^#()! !
!RenderingCommand categoriesFor: #clientIndependentActions!accessing!public! !
!RenderingCommand categoriesFor: #initializeEvaluating:asConditionToRenderAll:!initialize/release!public! !
!RenderingCommand categoriesFor: #modelLoadingActions!accessing!public! !
!RenderingCommand categoriesFor: #priorityActions!accessing!public! !
!RenderingCommand categoriesFor: #requiresSerialization!public!testing! !
!RenderingCommand categoriesFor: #serverIndependentActions!accessing!public! !

!RenderingCommand class methodsFor!

assertInitializationOfAll: anIdentifiedViewCollection	anIdentifiedViewCollection do: [ :anIdentifiedView | anIdentifiedView ifNil: [ self error: 'View initialization order is incorrect, please review' ] ]!

evaluating: aCallback asConditionToRender: anIdentifiedView	^self evaluating: aCallback asConditionToRenderAll: (Array with: anIdentifiedView)!

evaluating: aCallback asConditionToRenderAll: anIdentifiedViewCollection	self assertInitializationOfAll: anIdentifiedViewCollection.	^self new initializeEvaluating: aCallback asConditionToRenderAll: anIdentifiedViewCollection!

for: anIdentifiedView	^self forAll: (Array with: anIdentifiedView)!

forAll: anIdentifiedViewCollection	^self evaluating: [true] asConditionToRenderAll: anIdentifiedViewCollection! !
!RenderingCommand class categoriesFor: #assertInitializationOfAll:!Preconditions!public! !
!RenderingCommand class categoriesFor: #evaluating:asConditionToRender:!instance creation!public! !
!RenderingCommand class categoriesFor: #evaluating:asConditionToRenderAll:!instance creation!public! !
!RenderingCommand class categoriesFor: #for:!instance creation!public! !
!RenderingCommand class categoriesFor: #forAll:!instance creation!public! !

