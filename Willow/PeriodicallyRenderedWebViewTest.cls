"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #PeriodicallyRenderedWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PeriodicallyRenderedWebViewTest guid: (GUID fromString: '{fd1a5c18-b38f-48fa-9f78-2d058c5632a6}')!
PeriodicallyRenderedWebViewTest comment: 'A PeriodicallyRenderedWebViewTest is a test class for testing the behavior of PeriodicallyRenderedWebView'!
!PeriodicallyRenderedWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!PeriodicallyRenderedWebViewTest methodsFor!

testRenderContentOn	| periodicallyRenderedView html counter |	counter := 0.	periodicallyRenderedView := PeriodicallyRenderedWebView		evaluating: [ counter := counter + 1 ]		every: 500		millisecondsThenRendering: [ :canvas | 			canvas				render: 'Count:  ';				render: counter;				break ].	html := self render: periodicallyRenderedView.	self		assert: html		equals:			'<div id="periodically-refreshed-id1">Count:  1<br/></div><script type="text/javascript">setTimeout(function(){$.ajax({"dataType":"script","url":"/","data":"2"})},500)</script>'.	"I have to simulate the AJAX call"	html := self renderUsing: [ :canvas | periodicallyRenderedView refreshAndRenderContentOn: canvas ].	self assert: html equals: 'Count:  2<br/><script type="text/javascript">$.ajax({"url":"/","data":"1"});</script>'.	html := self renderUsing: [ :canvas | periodicallyRenderedView refreshAndRenderContentOn: canvas ].	self assert: html equals: 'Count:  3<br/><script type="text/javascript">$.ajax({"url":"/","data":"1"});</script>'!

testRenderingStopsWhenStopConditionIsReached	| periodicallyRenderedView html counter blockWasEvaluated scripts |	counter := 0.	blockWasEvaluated := false.	periodicallyRenderedView := PeriodicallyRenderedWebView		evaluating: [ counter := counter + 1 ]		every: 500		millisecondsThenRendering: [ :canvas | 			canvas				render: 'Count: ';				render: counter;				break ]		until: [ blockWasEvaluated := true.			false ].	scripts := OrderedCollection new.	html := self render: periodicallyRenderedView.	self		assert: html		equals: '<div id="periodically-refreshed-id1">Count: 1<br/></div><script type="text/javascript">setTimeout(function(){$.ajax({"dataType":"script","url":"/","data":"2"})},500)</script>'.	self deny: blockWasEvaluated.	"I have to simulate the AJAX call"	html := self		renderUsing: [ :canvas | 			periodicallyRenderedView refreshAndRenderContentOn: canvas.			scripts addAll: canvas document loadScripts ].	self assert: html equals: 'Count: 2<br/><script type="text/javascript">$.ajax({"url":"/","data":"1"});</script>'.	scripts any processCallback.	self assert: blockWasEvaluated.	html := self renderUsing: [ :canvas | periodicallyRenderedView refreshAndRenderContentOn: canvas ].	self assert: html equals: 'Count: 3<br/><script type="text/javascript">$.ajax({"url":"/","data":"1"});</script>'!

testScriptToRefreshAndRenderContentOn	| periodicallyRenderedView html counter |	counter := 0.	periodicallyRenderedView := PeriodicallyRenderedWebView		evaluating: [ counter := counter + 1 ]		every: 500		millisecondsThenRendering: [ :canvas | 			canvas				render: 'Count:  ';				render: counter;				break ].	self render: periodicallyRenderedView.	"This is kind of hacky but there's no other way to test it without a proper AJAX call"	html := self renderUsing: [ :canvas | canvas div script: (periodicallyRenderedView scriptToRefreshAndRenderContentOn: canvas) ].	self		assert: html		equals:			'<div id="id2"></div><script type="text/javascript">$("#id2").html("Count:  2<br/><script type=\"text/javascript\">$.ajax({\"url\":\"/\",\"data\":\"1\"});</script>");</script>'! !
!PeriodicallyRenderedWebViewTest categoriesFor: #testRenderContentOn!public!tests/rendering! !
!PeriodicallyRenderedWebViewTest categoriesFor: #testRenderingStopsWhenStopConditionIsReached!public!tests/rendering! !
!PeriodicallyRenderedWebViewTest categoriesFor: #testScriptToRefreshAndRenderContentOn!public!tests/rendering! !

