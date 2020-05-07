"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WebInteractionInterpreterBehavior
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebInteractionInterpreterBehavior guid: (GUID fromString: '{84028301-e8dc-4acf-a6a9-38b31040602b}')!
WebInteractionInterpreterBehavior comment: ''!
!WebInteractionInterpreterBehavior categoriesForClass!Willow-Core-WebInteraction! !
!WebInteractionInterpreterBehavior methodsFor!

addCssClass: aCssStyle	self addCssClass: aCssStyle toComponentsMatching: [ :canvas | canvas jQuery this ]!

addCssClass: aCssStyle toComponentsMatching: aComponentProvider	self subclassResponsibility!

changeCssClass: anExistingStyle to: aNewStyle	self subclassResponsibility!

closeAllDialogs	self subclassResponsibility!

closeLastDialog	self subclassResponsibility!

confirmAsking: aQuestion	self subclassResponsibility!

determineBehaviorByEvaluating: aCallbackBlock	self subclassResponsibility!

determineBehaviorByEvaluating: aCallbackBlock with: aParameter	self subclassResponsibility!

disable	self subclassResponsibility!

disable: aComponent	self subclassResponsibility!

enable: aComponent	self subclassResponsibility!

evaluate: aCallbackBlock	"Call the server evaluating the callback block server-side"	self determineBehaviorByEvaluating: [ :response | aCallbackBlock value ]!

evaluate: aCallbackBlock with: aParameter	self		determineBehaviorByEvaluating: [ :response :clientParameter | aCallbackBlock value: clientParameter ]		with: aParameter!

executeOnClient: aServerIndependentAction	self subclassResponsibility!

focus: anIdentifiedWebView	self subclassResponsibility!

focusUsing: aComponentProvider	self subclassResponsibility!

inform: aMessage	self subclassResponsibility!

informSelection	self subclassResponsibility!

onlyWhen: aStringCondition determineBehaviorByEvaluating: aCallbackBlock with: aParameter	self subclassResponsibility!

open: aView	self subclassResponsibility!

remove: anIdentifiedView	self subclassResponsibility!

removeCssClass: aCssStyle fromComponentsMatching: aComponentProvider	self subclassResponsibility!

removeCssClass: aCssStyle fromComponentsWithClass: aComponentByStyleName	self		removeCssClass: aCssStyle		fromComponentsMatching: [ :canvas | canvas jQuery class: aComponentByStyleName ]!

render: anIdentifiedView	self subclassResponsibility!

renderAll: anIdentifiedViewCollection	self subclassResponsibility!

scrollingIntoView: anIdentifier	self subclassResponsibility!

serializeChildForm	self subclassResponsibility!

serializeContainerForm	self subclassResponsibility!

serializeForm: anIdentifiedForm	self subclassResponsibility!

serializeIt	self subclassResponsibility!

serializeWithHiddenInputs	self subclassResponsibility!

setValueTo: aValueProvider thenTriggerChangeOf: anIdentifiedView	self subclassResponsibility!

setValueTo: aValueProviders withoutTriggeringChangeOnComponentWithId: identifier 	self subclassResponsibility!

show: aRenderable whileCallingServerToRender: anIdentifiedWebView	"This will replace anIdentifiedWebView contents with aRenderable in the DOM before doing the server call, 	and replace it again with the rendering obtained from the server call response."	self		transform: anIdentifiedWebView into: aRenderable;		render: anIdentifiedWebView!

showLoadingNotificationStyledAsAll: classes	self subclassResponsibility!

submitForm: anIdentifiedForm	self subclassResponsibility!

submitFormStyledAs: aCssStyle	self subclassResponsibility!

temporarilyDisableAndTransform: anIdentifiedView into: aView	self subclassResponsibility!

temporarilyDisableAndTransformInto: aView	self subclassResponsibility!

toggleCssClass: aCssStyle	self toggleCssClass: aCssStyle onComponentsMatching: [ :canvas | canvas jQuery this ]!

toggleCssClass: aCssStyle on: anIdentifiedWebView	self		toggleCssClass: aCssStyle		onComponentsMatching: [ :javascript | 			anIdentifiedWebView identifyIn: javascript.			javascript jQuery id: anIdentifiedWebView identifier ]!

toggleCssClass: aCssStyle onComponentsMatching: aComponentProvider	self subclassResponsibility!

transform: anIdentifiedWebView into: aRenderable	"This will replace anIdentifiedWebView content with aRenderable on the browser side"	self		executeOnClient: [ :canvas | 			anIdentifiedWebView identifyIn: canvas.			(canvas jQuery id: anIdentifiedWebView identifier) html: aRenderable ]! !
!WebInteractionInterpreterBehavior categoriesFor: #addCssClass:!Configuring / CSS!public! !
!WebInteractionInterpreterBehavior categoriesFor: #addCssClass:toComponentsMatching:!Configuring / CSS!public! !
!WebInteractionInterpreterBehavior categoriesFor: #changeCssClass:to:!Configuring / CSS!public! !
!WebInteractionInterpreterBehavior categoriesFor: #closeAllDialogs!Configuring / Dialogs!public! !
!WebInteractionInterpreterBehavior categoriesFor: #closeLastDialog!Configuring / Dialogs!public! !
!WebInteractionInterpreterBehavior categoriesFor: #confirmAsking:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #determineBehaviorByEvaluating:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #determineBehaviorByEvaluating:with:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #disable!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #disable:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #enable:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #evaluate:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #evaluate:with:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #executeOnClient:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #focus:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #focusUsing:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #inform:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #informSelection!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #onlyWhen:determineBehaviorByEvaluating:with:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #open:!Configuring / Dialogs!public! !
!WebInteractionInterpreterBehavior categoriesFor: #remove:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #removeCssClass:fromComponentsMatching:!Configuring / CSS!public! !
!WebInteractionInterpreterBehavior categoriesFor: #removeCssClass:fromComponentsWithClass:!Configuring / CSS!public! !
!WebInteractionInterpreterBehavior categoriesFor: #render:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #renderAll:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #scrollingIntoView:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #serializeChildForm!Configuring / Serialization!public! !
!WebInteractionInterpreterBehavior categoriesFor: #serializeContainerForm!Configuring / Serialization!public! !
!WebInteractionInterpreterBehavior categoriesFor: #serializeForm:!Configuring / Serialization!public! !
!WebInteractionInterpreterBehavior categoriesFor: #serializeIt!Configuring / Serialization!public! !
!WebInteractionInterpreterBehavior categoriesFor: #serializeWithHiddenInputs!Configuring / Serialization!public! !
!WebInteractionInterpreterBehavior categoriesFor: #setValueTo:thenTriggerChangeOf:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #setValueTo:withoutTriggeringChangeOnComponentWithId:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #show:whileCallingServerToRender:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #showLoadingNotificationStyledAsAll:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #submitForm:!Configuring / Serialization!public! !
!WebInteractionInterpreterBehavior categoriesFor: #submitFormStyledAs:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #temporarilyDisableAndTransform:into:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #temporarilyDisableAndTransformInto:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #toggleCssClass:!Configuring / CSS!public! !
!WebInteractionInterpreterBehavior categoriesFor: #toggleCssClass:on:!Configuring / CSS!public! !
!WebInteractionInterpreterBehavior categoriesFor: #toggleCssClass:onComponentsMatching:!Configuring / CSS!public! !
!WebInteractionInterpreterBehavior categoriesFor: #transform:into:!Configuring / DOM!public! !

