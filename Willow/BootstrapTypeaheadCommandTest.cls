﻿"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapTypeaheadCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapTypeaheadCommandTest guid: (GUID fromString: '{dce03916-39d7-40ee-bec4-bb3954e33302}')!
BootstrapTypeaheadCommandTest comment: 'A BootstrapTypeaheadCommandTest is a test class for testing the behavior of BootstrapTypeaheadCommand'!
!BootstrapTypeaheadCommandTest categoriesForClass!Willow-Bootstrap-Tests-Frontend! !
!BootstrapTypeaheadCommandTest methodsFor!

testApplyToOn	| html |	html := self		apply: (BootstrapTypeaheadCommand searchingWith: [ :searchTerm | #(1 2 3 4) ] withSelectionDo: [ :selectedNumber |  ])		toComponentDefinedBy: [ :canvas | canvas textInput ].	self		assert: html		equals:			'<input id="id5" type="text"/><script type="text/javascript">$("#id5").typeahead({"source":function(searchTerm,response){$.getJSON("/",["1","2="+encodeURIComponent(searchTerm)].join("&"),function(data,status){response(data)})},"updater":function(item){return item},"afterSelect":function(activeItem){$.ajax({"url":"/","data":["3","4="+encodeURIComponent(activeItem.index)].join("&"),"dataType":"script"})}});</script>'!

testApplyToOnWithConfiguration	| html |	html := self		apply: (BootstrapTypeaheadCommand searchingWith: [ :searchTerm | #(1 2 3 4) ] withSelectionDo: [ :selectedNumber |  ] configuredBy: [ :typeahead | typeahead minLength: 5 ])		toComponentDefinedBy: [ :canvas | canvas textInput ].	self		assert: html		equals:			'<input id="id5" type="text"/><script type="text/javascript">$("#id5").typeahead({"source":function(searchTerm,response){$.getJSON("/",["1","2="+encodeURIComponent(searchTerm)].join("&"),function(data,status){response(data)})},"updater":function(item){return item},"afterSelect":function(activeItem){$.ajax({"url":"/","data":["3","4="+encodeURIComponent(activeItem.index)].join("&"),"dataType":"script"})},"minLength":5});</script>'!

testEvaluateWithUsing	| searchResult firstResult lastResult |	searchResult := (BootstrapTypeaheadCommand searchingWith: [ :searchTerm | self fail ] withSelectionDo: [ :selectedNumber | self fail ])		evaluate: [ :searchTerm | #('A' 'B' 'AB') select: [ :string | string beginsWith: searchTerm ] ]		with: 'A'		using: [ :string | string asLowercase ].	self assert: searchResult size equals: 2.	firstResult := searchResult first.	self		assert: (firstResult at: 'name') equals: 'a';		assert: (firstResult at: 'index') equals: 1.	lastResult := searchResult last.	self		assert: (lastResult at: 'name') equals: 'ab';		assert: (lastResult at: 'index') equals: 2!

testRefreshingAnotherView	| html identifiedView |	identifiedView := IdentifiedWebView forDivNamed: 'to-refresh' containing: 'Hi!!'.	html := self		apply:			( BootstrapTypeaheadCommand				searchingWith: [ :searchTerm | #(1 2 3 4) ]				withSelectionDo: [ :selectedNumber |  ]				thenRefresh: identifiedView				configuredBy: [ :typeahead | typeahead minLength: 5 ] )		toComponentDefinedBy: [ :canvas | canvas textInput ].	self		assert: html		equals:			'<input id="id7" type="text"/><script type="text/javascript">$("#id7").typeahead({"source":function(searchTerm,response){$.getJSON("/",["1","2="+encodeURIComponent(searchTerm)].join("&"),function(data,status){response(data)})},"updater":function(item){return item},"afterSelect":function(activeItem){$.ajax({"url":"/","data":["3","4="+encodeURIComponent(activeItem.index)].join("&"),"dataType":"script","complete":function(){$("#to-refresh-id5").load("/","6")}})},"minLength":5});</script>'! !
!BootstrapTypeaheadCommandTest categoriesFor: #testApplyToOn!public!tests! !
!BootstrapTypeaheadCommandTest categoriesFor: #testApplyToOnWithConfiguration!public!tests! !
!BootstrapTypeaheadCommandTest categoriesFor: #testEvaluateWithUsing!public!tests/private! !
!BootstrapTypeaheadCommandTest categoriesFor: #testRefreshingAnotherView!public!tests! !

