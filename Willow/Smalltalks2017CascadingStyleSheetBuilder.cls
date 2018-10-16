"Filed out from Dolphin Smalltalk 7"!

ReflectiveCascadingStyleSheetBuilder subclass: #Smalltalks2017CascadingStyleSheetBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'Willow'
	classInstanceVariableNames: ''!
Smalltalks2017CascadingStyleSheetBuilder guid: (GUID fromString: '{2fd5fdf4-c1d8-4d35-add0-c9451ed816ed}')!
Smalltalks2017CascadingStyleSheetBuilder comment: 'I generate the necessary CSS'!
!Smalltalks2017CascadingStyleSheetBuilder categoriesForClass!Willow-Playground-Smalltalks2017-Libraries! !
!Smalltalks2017CascadingStyleSheetBuilder methodsFor!

declareBrowseStepButtonStyleIn: aBuilder	aBuilder		declareRuleSetFor: [ :selector | selector class: self smalltalks2017 >> #browseStep ]			with: [ :style | 			style				zIndex: 1;				position: #absolute;				marginTop: 5 px;				right: 9 vh;				fontFamily: '"Helvetica Neue", Helvetica, Arial, sans-serif' ];		declareRuleSetFor: [ :selector | (selector div class: 'carousel-inner') button class: self smalltalks2017 >> #browseStep ] with: [ :style | style right: 2 vh ]!

declareDisabledButtonStyleIn: aBuilder	aBuilder		declareRuleSetFor: [ :selector | selector button disabled ]		with: [ :style | 			style				color: #grey;				background: #lightGrey;				cursor: #notAllowed ]!

declarePresentationAreaStyleIn: aBuilder	aBuilder		declareRuleSetFor: [ :selector | selector class: self smalltalks2017 >> #presentationArea ]		with: [ :style | 			style				width: 90 vw;				marginLeft: #auto;				marginRight: #auto ]!

declareScreenshotStyleIn: aBuilder	aBuilder		declareRuleSetFor: [ :selector | selector image class: self smalltalks2017 >> #screenshot ]		with: [ :style | 			style				maxHeight: 70 vh;				margin: #auto;				paddingBottom: 40 px ]!

declareSourceCodeStyleIn: aBuilder	aBuilder declareRuleSetFor: [ :selector | selector preformatted ] with: [ :style | style fontSize: 1.1 em ]!

declareStepButtonsStyleIn: aBuilder	aBuilder		declareRuleSetFor: [ :selector | selector div class: self smalltalks2017 >> #stepButtonContainer ]		with: [ :style | 			style				position: #fixed;				width: 90 vw;				bottom: 3 vh ]!

declareStepContentStyleIn: aBuilder	aBuilder		declareRuleSetFor: [ :selector | selector div class: self smalltalks2017 >> #stepContent ]		with: [ :style | 			style				maxHeight: 80 vh;				fontSize: #larger ]!

declareUnorderedListStyleIn: aBuilder	aBuilder		declareRuleSetFor: [ :selector | (selector div class: self smalltalks2017 >> #stepContent) * selector unorderedList ]			with: [ :style | 			style				display: #block;				fontSize: #larger ];		declareRuleSetFor: [ :selector | (selector div class: self smalltalks2017 >> #stepContent) * selector unorderedList listItem ]			with: [ :style | 			style				display: #inlineBlock;				width: 25 vw ]!

smalltalks2017	^ self classification >> #smalltalks2017! !
!Smalltalks2017CascadingStyleSheetBuilder categoriesFor: #declareBrowseStepButtonStyleIn:!public!style declaration! !
!Smalltalks2017CascadingStyleSheetBuilder categoriesFor: #declareDisabledButtonStyleIn:!public!style declaration! !
!Smalltalks2017CascadingStyleSheetBuilder categoriesFor: #declarePresentationAreaStyleIn:!public!style declaration! !
!Smalltalks2017CascadingStyleSheetBuilder categoriesFor: #declareScreenshotStyleIn:!public!style declaration! !
!Smalltalks2017CascadingStyleSheetBuilder categoriesFor: #declareSourceCodeStyleIn:!public!style declaration! !
!Smalltalks2017CascadingStyleSheetBuilder categoriesFor: #declareStepButtonsStyleIn:!public!style declaration! !
!Smalltalks2017CascadingStyleSheetBuilder categoriesFor: #declareStepContentStyleIn:!public!style declaration! !
!Smalltalks2017CascadingStyleSheetBuilder categoriesFor: #declareUnorderedListStyleIn:!public!style declaration! !
!Smalltalks2017CascadingStyleSheetBuilder categoriesFor: #smalltalks2017!accessing!public! !

!Smalltalks2017CascadingStyleSheetBuilder class methodsFor!

initialize	##(Pragma ignoreForCoverage).	Classification bind: #smalltalks2017 to: Namespace new.	(Classification >> #smalltalks2017)		bind: #stepContent to: 'stepContent';		bind: #screenshot to: 'screenshot';		bind: #previousStep to: 'previousStep';		bind: #stepButtonContainer to: 'stepButtonContainer';		bind: #browseStep to: 'browseStep';		bind: #nextStep to: 'nextStep';		bind: #presentationArea to: 'presentationArea'! !
!Smalltalks2017CascadingStyleSheetBuilder class categoriesFor: #initialize!class initialization!public! !

