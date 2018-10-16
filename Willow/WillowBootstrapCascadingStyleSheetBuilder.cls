"Filed out from Dolphin Smalltalk 7"!

ReflectiveCascadingStyleSheetBuilder subclass: #WillowBootstrapCascadingStyleSheetBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowBootstrapCascadingStyleSheetBuilder guid: (GUID fromString: '{d9952a42-c495-42be-a5e2-dc1fb1cc38ad}')!
WillowBootstrapCascadingStyleSheetBuilder comment: 'I provides some CSS required for the integration to work correctly.'!
!WillowBootstrapCascadingStyleSheetBuilder categoriesForClass!Willow-Bootstrap-Libraries! !
!WillowBootstrapCascadingStyleSheetBuilder methodsFor!

declareNumberInputStyleIn: builder	"The Bootstrap style for input fields doesn't work correctly with the spinners the browsers add to this kind of elements. 	So here we're hiding it."	builder		declareRuleSetFor:				[ :selector | (CssPseudoElementSelector named: '-webkit-outer-spin-button' of: (self numberInputFor: selector)) , (CssPseudoElementSelector named: '-webkit-inner-spin-button' of: (self numberInputFor: selector)) ]			with: [ :style | style propertyAt: '-webkit-appearance' put: #none ];		declareRuleSetFor: [ :selector | self numberInputFor: selector ] with: [ :style | style propertyAt: '-moz-appearance' put: 'textfield' ]!

numberInputFor: aCssSelector	^aCssSelector input withAttribute: 'type' equalTo: 'number'! !
!WillowBootstrapCascadingStyleSheetBuilder categoriesFor: #declareNumberInputStyleIn:!public!Styling! !
!WillowBootstrapCascadingStyleSheetBuilder categoriesFor: #numberInputFor:!private! !

