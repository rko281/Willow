"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #FieldSetWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FieldSetWebViewTest guid: (GUID fromString: '{10e64603-a905-4f9b-8c2b-592711f912e6}')!
FieldSetWebViewTest comment: ''!
!FieldSetWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!FieldSetWebViewTest methodsFor!

testRenderContentOn	| container html |	container := FieldSetWebView		containing: [ :canvas | canvas div ]		applying: [ :fieldSet | fieldSet addClass willow ]		withLegend: 'Fields'		applying: [ :legend | legend addClass loading ].	html := self render: container.	self assert: html equals: '<fieldset class="willow"><legend class="willow-loading">Fields</legend><div></div></fieldset>'! !
!FieldSetWebViewTest categoriesFor: #testRenderContentOn!public!tests! !

