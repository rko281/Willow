"Filed out from Dolphin Smalltalk 7"!

BootstrapCheckboxWebView subclass: #Bootstrap3CheckboxWebView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3CheckboxWebView guid: (GUID fromString: '{a4b2bad7-ec21-4532-ab3e-37c75af1370e}')!
Bootstrap3CheckboxWebView comment: ''!
!Bootstrap3CheckboxWebView categoriesForClass!Willow-Bootstrap-3-WebViews! !
!Bootstrap3CheckboxWebView methodsFor!

renderContentOn: aCanvas	aCanvas div		with: [ self renderLabelOn: aCanvas ]		applying: [ :div | div addClass bootstrap3 checkbox + commandToComponent ]!

renderLabelOn: aCanvas	aCanvas		label: [ self renderCheckboxOn: aCanvas.			labelOptional withContentDo: [ :label | aCanvas render: label ] ]! !
!Bootstrap3CheckboxWebView categoriesFor: #renderContentOn:!public!rendering! !
!Bootstrap3CheckboxWebView categoriesFor: #renderLabelOn:!public!rendering / private! !

