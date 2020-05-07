"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #DelayedViewRenderer
	instanceVariableNames: 'identifiedDelayedView currentView interpreter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DelayedViewRenderer guid: (GUID fromString: '{feb6c2df-ceec-4edc-a4ce-fe57a7f036d6}')!
DelayedViewRenderer comment: 'I''m a web view showing a throbber while evaluating an action block and then rendering another view'!
!DelayedViewRenderer categoriesForClass!Willow-Core-WebViews! !
!DelayedViewRenderer methodsFor!

initializeInterpreterToEvaluate: aBlock thenRender: aView	interpreter := WebInteractionInterpreter forInstantEvaluation.	interpreter		determineBehaviorByEvaluating: [ :response | 			aBlock value.			self setCurrentViewTo: aView			];		render: identifiedDelayedView!

initializeShowing: aThrobber whileEvaluating: aBlock thenRendering: aView	self setCurrentViewTo: aThrobber.	identifiedDelayedView := IdentifiedWebView		forDivNamed: 'Delayed'		containing: [ :canvas | canvas render: currentView ].	self initializeInterpreterToEvaluate: aBlock thenRender: aView!

renderContentOn: aCanvas	aCanvas render: identifiedDelayedView.	interpreter applyTo: self on: aCanvas!

setCurrentViewTo: aView	currentView := aView! !
!DelayedViewRenderer categoriesFor: #initializeInterpreterToEvaluate:thenRender:!initialization!public! !
!DelayedViewRenderer categoriesFor: #initializeShowing:whileEvaluating:thenRendering:!initialization!public! !
!DelayedViewRenderer categoriesFor: #renderContentOn:!public!rendering! !
!DelayedViewRenderer categoriesFor: #setCurrentViewTo:!initialization!public! !

!DelayedViewRenderer class methodsFor!

showing: aThrobber whileEvaluating: aBlock thenRendering: aView	^ self new initializeShowing: aThrobber whileEvaluating: aBlock thenRendering: aView! !
!DelayedViewRenderer class categoriesFor: #showing:whileEvaluating:thenRendering:!instance creation!public! !

