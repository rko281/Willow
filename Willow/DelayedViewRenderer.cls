"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #DelayedViewRenderer
	instanceVariableNames: 'identifiedDelayedView currentView interaction'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DelayedViewRenderer guid: (GUID fromString: '{feb6c2df-ceec-4edc-a4ce-fe57a7f036d6}')!
DelayedViewRenderer comment: 'I''m a web view showing a throbber while evaluating an action block and then rendering another view'!
!DelayedViewRenderer categoriesForClass!Willow-WebViews! !
!DelayedViewRenderer methodsFor!

initializeInteractionToEvaluate: aBlock thenRender: aView	interaction := WebComponentInteraction triggeredOnClick.	interaction		onTriggerExecute:			(DelayedCommand				withBehaviorDeterminedBy: [ :response | 					aBlock value.					self setCurrentViewTo: aView ]);		onTriggerExecute: (RenderingCommand for: identifiedDelayedView)!

initializeShowing: aThrobber whileEvaluating: aBlock thenRendering: aView	self setCurrentViewTo: aThrobber.	identifiedDelayedView := IdentifiedWebView forDivNamed: 'Delayed' containing: [ :canvas | canvas render: currentView ].	self initializeInteractionToEvaluate: aBlock thenRender: aView!

renderContentOn: aCanvas	aCanvas render: identifiedDelayedView.	"This is way too hacky, but for now is the way to go"	interaction prepareActions.	aCanvas document addLoadScript: (interaction commandToExecuteOn: aCanvas)!

setCurrentViewTo: aView	currentView := aView! !
!DelayedViewRenderer categoriesFor: #initializeInteractionToEvaluate:thenRender:!initialization!public! !
!DelayedViewRenderer categoriesFor: #initializeShowing:whileEvaluating:thenRendering:!initialization!public! !
!DelayedViewRenderer categoriesFor: #renderContentOn:!public!rendering! !
!DelayedViewRenderer categoriesFor: #setCurrentViewTo:!initialization!public! !

!DelayedViewRenderer class methodsFor!

showing: aThrobber whileEvaluating: aBlock thenRendering: aView	^ self new initializeShowing: aThrobber whileEvaluating: aBlock thenRendering: aView! !
!DelayedViewRenderer class categoriesFor: #showing:whileEvaluating:thenRendering:!instance creation!public! !

