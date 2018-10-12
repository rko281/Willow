"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #FieldSetWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FieldSetWebViewTest guid: (GUID fromString: '{db524a22-be7d-44c0-be7c-df4fa6f3221b}')!
FieldSetWebViewTest comment: ''!
!FieldSetWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!FieldSetWebViewTest methodsFor!

testRenderContentOn	| container html |	container := FieldSetWebView		containing: [ :canvas | canvas div ]		applying: [ :fieldSet | fieldSet addClass willow ]		withLegend: 'Fields'		applying: [ :legend | legend addClass loading ].	html := self render: container.	self assert: html equals: '<fieldset class="willow"><legend class="willow-loading">Fields</legend><div></div></fieldset>'! !
!FieldSetWebViewTest categoriesFor: #testRenderContentOn!public!tests! !

