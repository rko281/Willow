"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #WebInteractionInterpreterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'Willow'
	classInstanceVariableNames: ''!
WebInteractionInterpreterTest guid: (GUID fromString: '{1fcda78c-4eaa-493b-8be1-1667d43d7097}')!
WebInteractionInterpreterTest comment: ''!
!WebInteractionInterpreterTest categoriesForClass!Willow-Tests-WebInteraction! !
!WebInteractionInterpreterTest methodsFor!

configureScriptWith: interpreter	^ self apply: interpreter toComponentDefinedBy: [ :canvas | canvas javascript ] afterApplyingDo: [ :canvas :javascript | canvas div script: javascript ]!

configureTextInputWith: interpreter	^ self apply: interpreter toComponentDefinedBy: [ :canvas | canvas textInput ]!

testAddCssClass	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter addCssClass: Classification >> #willow.	html := self configureTextInputWith: interpreter.	self		assert: html		equals: '<input id="input-id1" type="text"/><script type="text/javascript">$("#input-id1").click(function(event){$(this).addClass("willow")});</script>'!

testAddCssClassToComponentsMatching	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter addCssClass: Classification >> #willow toComponentsMatching: [ :canvas | canvas jQuery class: 'aComponentByStyleName' ].	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input id="input-id1" type="text"/><script type="text/javascript">$("#input-id1").click(function(event){$(".aComponentByStyleName").addClass("willow")});</script>'!

testChangeCssClassTo	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter changeCssClass: Classification >> #loading to: Classification >> #willow.	html := self apply: interpreter toComponentDefinedBy: [ :canvas | canvas textInput apply: [ :input | input addClass loading ] ].	self		assert: html		equals:			'<input class="willow-loading" id="input-id1" type="text"/><script type="text/javascript">$("#input-id1").click(function(event){$(".willow-loading").removeClass("willow-loading").addClass("willow")});</script>'!

testCloseAllDialogs	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter closeAllDialogs.	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").click(function(event){Willow.callServer({"url":"/","data":"1"})});</script>'!

testCloseLastDialog	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter closeLastDialog.	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").click(function(event){Willow.callServer({"url":"/","data":"1"})});</script>'!

testConfirmAsking	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter confirmAsking: 'Continue?'.	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").click(function(event){if(confirm("Continue?")){Willow.callServer({"url":"/","data":"1"})}});</script>'!

testDetermineBehaviorByEvaluating	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter determineBehaviorByEvaluating: [ :response | response onReturn alert: 'Test is complete' ].	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").click(function(event){Willow.callServer({"url":"/","data":"1"})});</script>'!

testDetermineBehaviorByEvaluatingWith	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter determineBehaviorByEvaluating: [ :response | response onReturn alert: 'Test is complete' ] with: 'theClientParameter'.	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input id="input-id3" type="text"/><script type="text/javascript">$("#input-id3").click(function(event){Willow.callServer({"type":"POST","url":"/","data":["1","2="+encodeURIComponent(JSON.stringify("theClientParameter"))].join("&")})});</script>'!

testDisable	| interpreter html id |	interpreter := WebInteractionInterpreter forChangeInComponentValue.	id := '15'.	html := self		renderUsing: [ :canvas | 			| textInput |			textInput := canvas textInput.			textInput id: id.			interpreter disable.			interpreter applyTo: textInput on: canvas ].	self		assert: html		equals: '<input id="15" type="text"/><script type="text/javascript">$("#15").change(function(event){$(this).prop("disabled",true)});</script>'!

testEnable	| interpreter html id |	interpreter := WebInteractionInterpreter forChangeInComponentValue.	id := '15'.	html := self		renderUsing: [ :canvas | 			| textInput |			textInput := canvas textInput.			textInput id: id.			interpreter enable: textInput.			interpreter applyTo: textInput on: canvas ].	self		assert: html		equals: '<input id="15" type="text"/><script type="text/javascript">$("#15").change(function(event){$("#15").prop("disabled",false)});</script>'!

testEvaluate	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter evaluate: [  ].	html := self configureTextInputWith: interpreter.	self		assert: html		equals: '<input id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").click(function(event){Willow.callServer({"url":"/","data":"1"})});</script>'!

testEvaluateWith	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter evaluate: [ :arguments | arguments ] with: #(firstThing secondStuff).	html := self configureTextInputWith: interpreter.	self		assert: html		equals: '<input id="input-id3" type="text"/><script type="text/javascript">$("#input-id3").click(function(event){Willow.callServer({"type":"POST","url":"/","data":["1","2="+encodeURIComponent(JSON.stringify(["firstThing","secondStuff"]))].join("&")})});</script>'!

testExecuteOnClient	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter executeOnClient: [ :canvas | (JSStream on: 'window') call: 'print' ].	html := self configureTextInputWith: interpreter.	self assert: html equals: '<input id="input-id1" type="text"/><script type="text/javascript">$("#input-id1").click(function(event){window.print()});</script>'!

testFocus	| interpreter html id |	interpreter := WebInteractionInterpreter forChangeInComponentValue.	id := '15'.	html := self		renderUsing: [ :canvas | 			| textInput |			textInput := canvas textInput.			textInput id: id.			interpreter focus: textInput.			interpreter applyTo: textInput on: canvas ].	self		assert: html		equals:			'<input id="15" type="text"/><script type="text/javascript">$("#15").change(function(event){Willow.callServer({"url":"/","data":"1"})});</script>'!

testFocusUsing	| interpreter html |	interpreter := WebInteractionInterpreter forChangeInComponentValue.	interpreter focusUsing: [ :canvas | canvas jQuery this ].	html := self apply: interpreter toComponentDefinedBy: [ :canvas | canvas textInput ].	self		assert: html		equals:			'<input id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").change(function(event){Willow.callServer({"url":"/","data":"1"})});</script>'!

testForChangeInComponentValue	| interpreter html |	interpreter := WebInteractionInterpreter forChangeInComponentValue.	interpreter evaluate: [  ].	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").change(function(event){Willow.callServer({"type":"POST","url":"/","data":["1",$(this).serialize()].join("&")})});</script>'!

testForChangeInHiddenInputDependentComponentValue	| interpreter html |	interpreter := WebInteractionInterpreter forChangeInHiddenInputDependentComponentValue.	interpreter evaluate: [  ].	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").change(function(event){Willow.callServer({"type":"POST","url":"/","data":["1",$(this).next("input:hidden").addBack().serialize()].join("&")})});</script>'!

testForClickOnComponent	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter evaluate: [  ].	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").click(function(event){Willow.callServer({"url":"/","data":"1"})});</script>'!

testForClickOnHiddenInputDependentComponent	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnHiddenInputDependentComponent.	interpreter evaluate: [  ].	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").click(function(event){Willow.callServer({"type":"POST","url":"/","data":["1",$(this).next("input:hidden").addBack().serialize()].join("&")})});</script>'!

testForDelayedModelLoading	| interpreter html |	"This interpreter should not be used directly. See references to the class."	interpreter := WebInteractionInterpreter forDelayedModelLoading.	interpreter submitFormStyledAs: 'the-specified-style'.	html := self configureScriptWith: interpreter.	self		assert: html		equals: '<div></div><script type="text/javascript">$("form.the-specified-style").submit();</script>'!

testForDoubleClickOnComponent	| interpreter html |	interpreter := WebInteractionInterpreter forDoubleClickOnComponent.	interpreter evaluate: [  ].	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").dblclick(function(event){Willow.callServer({"url":"/","data":"1"})});</script>'!

testForEvaluationOfWithAll	| interpreter html |	interpreter := WebInteractionInterpreter forEvaluationOf: #onBlur: withAll: #(firstThis thenThat).	interpreter inform: 'The message is the medium'.	html := self configureTextInputWith: interpreter.	self assert: html equals: '<input onblur="function(firstThis,thenThat){alert(&quot;The message is the medium&quot;)}" type="text"/>'!

testForInstantEvaluation	| interpreter html |	interpreter := WebInteractionInterpreter forInstantEvaluation.	interpreter evaluate: [  ].	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input type="text"/><script type="text/javascript">Willow.callServer({"url":"/","data":"1"});</script>'!

testForReleaseOfKeyInComponent	| interpreter html |	interpreter := WebInteractionInterpreter forReleaseOfKeyInComponent.	interpreter evaluate: [  ].	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").keyup(function(event){Willow.callServer({"type":"POST","url":"/","data":["1",$(this).serialize()].join("&")})});</script>'!

testInform	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter inform: 'A message'.	html := self configureTextInputWith: interpreter.	self		assert: html		equals: '<input id="input-id1" type="text"/><script type="text/javascript">$("#input-id1").click(function(event){alert("A message")});</script>'!

testInformSelection	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter informSelection.	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input id="input-id1" type="text"/><script type="text/javascript">$("#input-id1").click(function(event){alert($(this).children("option:selected").text())});</script>'!

testOnlyWhenDetermineBehaviorByEvaluating	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter		onlyWhen: '<1s> !!= null'		determineBehaviorByEvaluating: [ :response | response onReturn alert: 'Test is complete' ]		with: (JSStream on: 'theClientParameter').	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input id="input-id3" type="text"/><script type="text/javascript">$("#input-id3").click(function(event){if(theClientParameter !!= null){Willow.callServer({"type":"POST","url":"/","data":["1","2="+encodeURIComponent(JSON.stringify(theClientParameter))].join("&")})}});</script>'!

testOpen	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter open: [ :canvas | canvas dialog attributeAt: 'open' put: true ].	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").click(function(event){Willow.callServer({"url":"/","data":"1"})});</script>'!

testRemove	| interpreter html id |	interpreter := WebInteractionInterpreter forChangeInComponentValue.	id := '15'.	html := self		renderUsing: [ :canvas | 			| textInput |			textInput := canvas textInput.			textInput id: id.			interpreter remove: textInput.			interpreter applyTo: textInput on: canvas ].	self		assert: html		equals:			'<input id="15" type="text"/><script type="text/javascript">$("#15").change(function(event){Willow.callServer({"url":"/","data":"1"})});</script>'!

testRemoveCssClassFromComponentsMatching	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter removeCssClass: Classification >> #willow fromComponentsMatching: [ :canvas | canvas jQuery class: 'aComponentByStyleName' ].	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input id="input-id1" type="text"/><script type="text/javascript">$("#input-id1").click(function(event){$(".aComponentByStyleName").removeClass("willow")});</script>'!

testRemoveCssClassFromComponentsWithClass	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter removeCssClass: Classification >> #loading fromComponentsWithClass: Classification >> #willow.	html := self apply: interpreter toComponentDefinedBy: [ :canvas | canvas textInput apply: [ :input | input addClass loading + input addClass willow ] ].	self		assert: html		equals: '<input class="willow-loading willow" id="input-id1" type="text"/><script type="text/javascript">$("#input-id1").click(function(event){$(".willow").removeClass("willow-loading")});</script>'!

testRender	| interpreter html id |	interpreter := WebInteractionInterpreter forChangeInComponentValue.	id := '15'.	html := self		renderUsing: [ :canvas | 			| textInput |			textInput := canvas textInput.			textInput id: id.			interpreter render: textInput.			interpreter applyTo: textInput on: canvas ].	self		assert: html		equals:			'<input id="15" type="text"/><script type="text/javascript">$("#15").change(function(event){Willow.callServer({"type":"POST","url":"/","data":["1",$(this).serialize()].join("&")})});</script>'!

testRenderAll	| interpreter html id |	interpreter := WebInteractionInterpreter forChangeInComponentValue.	id := '15'.	html := self		renderUsing: [ :canvas | 			| textInput |			textInput := canvas textInput.			textInput id: id.			interpreter renderAll: {textInput}.			interpreter applyTo: textInput on: canvas ].	self		assert: html		equals:			'<input id="15" type="text"/><script type="text/javascript">$("#15").change(function(event){Willow.callServer({"type":"POST","url":"/","data":["1",$(this).serialize()].join("&")})});</script>'!

testScrollingIntoView	| interpreter html id |	interpreter := WebInteractionInterpreter forChangeInComponentValue.	id := '15'.	interpreter scrollingIntoView: id.	html := self		renderUsing: [ :canvas | 			| textInput |			textInput := canvas textInput.			textInput id: id.			interpreter applyTo: textInput on: canvas ].	self		assert: html		equals:			'<input id="15" type="text"/><script type="text/javascript">$("#15").change(function(event){Willow.callServer({"url":"/","data":"1"})});</script>'!

testSerializeChildForm	| interpreter html id |	interpreter := WebInteractionInterpreter forChangeInComponentValue.	id := '15'.	html := self		renderUsing: [ :canvas | 			| textInput |			textInput := canvas textInput.			textInput id: id.			interpreter serializeChildForm.			interpreter applyTo: textInput on: canvas ].	self		assert: html		equals:			'<input id="15" type="text"/><script type="text/javascript">$("#15").change(function(event){Willow.callServer({"type":"POST","url":"/","data":["1",$(this).children("form").serialize()].join("&")})});</script>'!

testSerializeContainerForm	| interpreter html id |	interpreter := WebInteractionInterpreter forChangeInComponentValue.	id := '15'.	html := self		renderUsing: [ :canvas | 			| textInput |			textInput := canvas textInput.			textInput id: id.			interpreter serializeContainerForm.			interpreter applyTo: textInput on: canvas ].	self		assert: html		equals:			'<input id="15" type="text"/><script type="text/javascript">$("#15").change(function(event){Willow.callServer({"type":"POST","url":"/","data":["1",$(this).closest("form").find(":input").serialize()].join("&")})});</script>'!

testSerializeForm	| interpreter html id |	interpreter := WebInteractionInterpreter forClickOnComponent.	id := '15'.	html := self		renderUsing: [ :canvas | 			| form anchor |			form := canvas form.			form id: id.			anchor := canvas anchor.			anchor id: '16'.			interpreter serializeForm: form.			interpreter applyTo: anchor on: canvas ].	self		assert: html		equals:			'<form accept-charset="utf-8" method="post" action="/" id="15"></form><a id="16"></a><script type="text/javascript">$("#16").click(function(event){Willow.callServer({"type":"POST","url":"/","data":["1",$("#15").serialize()].join("&")})});</script>'!

testSerializeIt	| interpreter html id |	interpreter := WebInteractionInterpreter forChangeInComponentValue.	id := '15'.	html := self		renderUsing: [ :canvas | 			| textInput |			textInput := canvas textInput.			textInput id: id.			interpreter serializeIt.			interpreter applyTo: textInput on: canvas ].	self		assert: html		equals:			'<input id="15" type="text"/><script type="text/javascript">$("#15").change(function(event){Willow.callServer({"type":"POST","url":"/","data":["1",$(this).serialize()].join("&")})});</script>'!

testSerializeWithHiddenInputs	| interpreter html id |	interpreter := WebInteractionInterpreter forChangeInComponentValue.	id := '15'.	html := self		renderUsing: [ :canvas | 			| textInput |			textInput := canvas textInput.			textInput id: id.			interpreter serializeWithHiddenInputs.			interpreter applyTo: textInput on: canvas ].	self		assert: html		equals:			'<input id="15" type="text"/><script type="text/javascript">$("#15").change(function(event){Willow.callServer({"type":"POST","url":"/","data":["1",$(this).next("input:hidden").addBack().serialize()].join("&")})});</script>'!

testSetValueToThenTriggerChangeOf	| interpreter html id |	interpreter := WebInteractionInterpreter forClickOnComponent.	id := '15'.	html := self		renderUsing: [ :canvas | 			| textInput |			textInput := canvas textInput				id: id;				yourself.			interpreter setValueTo: [ 'Ok' ] thenTriggerChangeOf: textInput.			interpreter applyTo: textInput on: canvas ].	self		assert: html		equals:			'<input id="15" type="text"/><script type="text/javascript">$("#15").click(function(event){Willow.callServer({"url":"/","data":"1"})});</script>'!

testSetValueToWithoutTriggeringChangeOnComponentWithId	| interpreter html id |	interpreter := WebInteractionInterpreter forClickOnComponent.	id := '15'.	interpreter setValueTo: [ 'Ok' ] withoutTriggeringChangeOnComponentWithId: id.	html := self		apply: interpreter		toComponentDefinedBy: [ :canvas | 			canvas textInput				id: id;				yourself ].	self		assert: html		equals:			'<input id="15" type="text"/><script type="text/javascript">$("#15").click(function(event){Willow.callServer({"url":"/","data":"1"})});</script>'!

testShowLoadingNotificationStyledAsAll	| interpreter html |	interpreter := WebInteractionInterpreter forChangeInComponentValue.	interpreter showLoadingNotificationStyledAsAll: #().	html := self apply: interpreter toComponentDefinedBy: [ :canvas | canvas textInput ].	self		assert: html		equals:			'<input id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").change(function(event){$("#willow-notification-section").html("<div>Loading...</div>");Willow.callServer({"url":"/","data":"1"})});</script>'!

testShowWhileCallingServerToRender	| html link container |	link := LinkWebView synchronicLabeled: 'Search!!' applying: [  ].	container := IdentifiedWebView forDivNamed: 'search-results' containing: ''.	link onTrigger show: 'Searching...' whileCallingServerToRender: container.	html := self		renderUsing: [ :canvas | 			canvas				render: link;				render: container ].	self		assert: html		equals:			'<a id="a-id3">Search!!</a><div id="search-results-id1"></div><script type="text/javascript">$("#a-id3").click(function(event){$("#search-results-id1").html("Searching...");Willow.callServer({"url":"/","data":"2"})});</script>'!

testSubmitForm	| interpreter html id |	interpreter := WebInteractionInterpreter forClickOnComponent.	id := '15'.	html := self		renderUsing: [ :canvas | 			| form anchor |			form := canvas form.			form id: id.			anchor := canvas anchor.			anchor id: '16'.			interpreter submitForm: form.			interpreter applyTo: anchor on: canvas ].	self		assert: html		equals:			'<form accept-charset="utf-8" method="post" action="/" id="15"></form><a id="16"></a><script type="text/javascript">$("#16").click(function(event){Willow.callServer({"url":"/","data":"1"})});</script>'!

testSubmitFormStyledAs	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	html := self		renderUsing: [ :canvas | 			| anchor |			canvas form apply: [ :form | form addClass willow ].			anchor := canvas anchor.			anchor id: '16'.			interpreter submitFormStyledAs: Classification >> #willow.			anchor interactUsing: interpreter ].	self		assert: html		equals: '<form accept-charset="utf-8" method="post" action="/" class="willow"></form><a id="16"></a><script type="text/javascript">$("#16").click(function(event){Willow.callServer({"url":"/","data":"1"})});</script>'!

testTemporarilyDisableAndTransformInto	| interpreter html id |	interpreter := WebInteractionInterpreter forChangeInComponentValue.	id := '15'.	html := self		renderUsing: [ :canvas | 			| textInput |			textInput := canvas textInput.			textInput id: id.			interpreter temporarilyDisableAndTransform: textInput into: 'Loading...'.			interpreter applyTo: textInput on: canvas			].	self		assert: html		equals:			'<input id="15" type="text"/><script type="text/javascript">$("#15").change(function(event){var componentToDisable=$("#15");if(componentToDisable.attr("data-willow-events-disabled")!!=="disabled"){componentToDisable.attr("data-willow-events-disabled","disabled").addClass("willow-disabled-component").attr("data-original-html",componentToDisable.html()).attr("disabled",true).html("Loading...");Willow.callServer({"complete":function(){componentToDisable.removeAttr("data-willow-events-disabled").attr("disabled",false).removeClass("willow-disabled-component").html(componentToDisable.attr("data-original-html"))},"url":"/","data":"1"})}});</script>'!

testTemporarilyDisableAndTransformSelfInto	| interpreter html id |	interpreter := WebInteractionInterpreter forChangeInComponentValue.	id := '15'.	html := self		renderUsing: [ :canvas | 			| textInput |			textInput := canvas textInput.			textInput id: id.			interpreter temporarilyDisableAndTransformInto: 'Loading...'.			interpreter applyTo: textInput on: canvas			].	self		assert: html		equals:			'<input id="15" type="text"/><script type="text/javascript">$("#15").change(function(event){var componentToDisable=$(this);if(componentToDisable.attr("data-willow-events-disabled")!!=="disabled"){componentToDisable.attr("data-willow-events-disabled","disabled").addClass("willow-disabled-component").attr("data-original-html",componentToDisable.html()).attr("disabled",true).html("Loading...");Willow.callServer({"complete":function(){componentToDisable.removeAttr("data-willow-events-disabled").attr("disabled",false).removeClass("willow-disabled-component").html(componentToDisable.attr("data-original-html"))},"url":"/","data":"1"})}});</script>'!

testToggleCssClass	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter toggleCssClass: Classification >> #loading.	html := self apply: interpreter toComponentDefinedBy: [ :canvas | canvas textInput apply: [ :input | input addClass loading ] ].	self assert: html equals: '<input class="willow-loading" id="input-id1" type="text"/><script type="text/javascript">$("#input-id1").click(function(event){$(this).toggleClass("willow-loading")});</script>'!

testToggleCssClassOn	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter toggleCssClass: Classification >> #willow on: (IdentifiedWebView forDivNamed: 'example' containing: [  ]).	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").click(function(event){$("#example-id1").toggleClass("willow")});</script>'!

testToggleCssClassOnComponentsMatching	| interpreter html |	interpreter := WebInteractionInterpreter forClickOnComponent.	interpreter toggleCssClass: Classification >> #willow onComponentsMatching: [ :canvas | canvas jQuery class: 'aComponentByStyleName' ].	html := self configureTextInputWith: interpreter.	self		assert: html		equals:			'<input id="input-id1" type="text"/><script type="text/javascript">$("#input-id1").click(function(event){$(".aComponentByStyleName").toggleClass("willow")});</script>'!

testTransformInto	| html link container |	link := LinkWebView synchronicLabeled: 'Search!!' applying: [  ].	container := IdentifiedWebView forDivNamed: 'search-results' containing: ''.	link onTrigger transform: container into: 'Searching...'.	html := self		renderUsing: [ :canvas | 			canvas				render: link;				render: container ].	self assert: html equals:  '<a id="a-id2">Search!!</a><div id="search-results-id1"></div><script type="text/javascript">$("#a-id2").click(function(event){$("#search-results-id1").html("Searching...")});</script>'! !
!WebInteractionInterpreterTest categoriesFor: #configureScriptWith:!public!test support! !
!WebInteractionInterpreterTest categoriesFor: #configureTextInputWith:!public!test support! !
!WebInteractionInterpreterTest categoriesFor: #testAddCssClass!public!tests / Configuring / CSS! !
!WebInteractionInterpreterTest categoriesFor: #testAddCssClassToComponentsMatching!public!tests / Configuring / CSS! !
!WebInteractionInterpreterTest categoriesFor: #testChangeCssClassTo!public!tests / Configuring / CSS! !
!WebInteractionInterpreterTest categoriesFor: #testCloseAllDialogs!public!tests / Configuring / Dialogs! !
!WebInteractionInterpreterTest categoriesFor: #testCloseLastDialog!public!tests / Configuring / Dialogs! !
!WebInteractionInterpreterTest categoriesFor: #testConfirmAsking!public!tests / Configuring / DOM! !
!WebInteractionInterpreterTest categoriesFor: #testDetermineBehaviorByEvaluating!public!tests / Configuring! !
!WebInteractionInterpreterTest categoriesFor: #testDetermineBehaviorByEvaluatingWith!public!tests / Configuring! !
!WebInteractionInterpreterTest categoriesFor: #testDisable!public!tests / Configuring / DOM! !
!WebInteractionInterpreterTest categoriesFor: #testEnable!public!tests / Configuring / DOM! !
!WebInteractionInterpreterTest categoriesFor: #testEvaluate!public!tests / Configuring! !
!WebInteractionInterpreterTest categoriesFor: #testEvaluateWith!public!tests / Configuring! !
!WebInteractionInterpreterTest categoriesFor: #testExecuteOnClient!public!tests / Configuring! !
!WebInteractionInterpreterTest categoriesFor: #testFocus!public!tests / Configuring / DOM! !
!WebInteractionInterpreterTest categoriesFor: #testFocusUsing!public!tests / Configuring / DOM! !
!WebInteractionInterpreterTest categoriesFor: #testForChangeInComponentValue!public!tests / Instance Creation! !
!WebInteractionInterpreterTest categoriesFor: #testForChangeInHiddenInputDependentComponentValue!public!tests / Instance Creation! !
!WebInteractionInterpreterTest categoriesFor: #testForClickOnComponent!public!tests / Instance Creation! !
!WebInteractionInterpreterTest categoriesFor: #testForClickOnHiddenInputDependentComponent!public!tests / Instance Creation! !
!WebInteractionInterpreterTest categoriesFor: #testForDelayedModelLoading!public!tests / Instance Creation! !
!WebInteractionInterpreterTest categoriesFor: #testForDoubleClickOnComponent!public!tests / Instance Creation! !
!WebInteractionInterpreterTest categoriesFor: #testForEvaluationOfWithAll!public!tests / Instance Creation! !
!WebInteractionInterpreterTest categoriesFor: #testForInstantEvaluation!public!tests / Instance Creation! !
!WebInteractionInterpreterTest categoriesFor: #testForReleaseOfKeyInComponent!public!tests / Instance Creation! !
!WebInteractionInterpreterTest categoriesFor: #testInform!public!tests / Configuring! !
!WebInteractionInterpreterTest categoriesFor: #testInformSelection!public!tests / Configuring! !
!WebInteractionInterpreterTest categoriesFor: #testOnlyWhenDetermineBehaviorByEvaluating!public!tests / Configuring! !
!WebInteractionInterpreterTest categoriesFor: #testOpen!public!tests / Configuring / Dialogs! !
!WebInteractionInterpreterTest categoriesFor: #testRemove!public!tests / Configuring / DOM! !
!WebInteractionInterpreterTest categoriesFor: #testRemoveCssClassFromComponentsMatching!public!tests / Configuring / CSS! !
!WebInteractionInterpreterTest categoriesFor: #testRemoveCssClassFromComponentsWithClass!public!tests / Configuring / CSS! !
!WebInteractionInterpreterTest categoriesFor: #testRender!public!tests / Configuring / DOM! !
!WebInteractionInterpreterTest categoriesFor: #testRenderAll!public!tests / Configuring / DOM! !
!WebInteractionInterpreterTest categoriesFor: #testScrollingIntoView!public!tests / Configuring / DOM! !
!WebInteractionInterpreterTest categoriesFor: #testSerializeChildForm!public!tests / Configuring / Serialization! !
!WebInteractionInterpreterTest categoriesFor: #testSerializeContainerForm!public!tests / Configuring / Serialization! !
!WebInteractionInterpreterTest categoriesFor: #testSerializeForm!public!tests / Configuring / Serialization! !
!WebInteractionInterpreterTest categoriesFor: #testSerializeIt!public!tests / Configuring / Serialization! !
!WebInteractionInterpreterTest categoriesFor: #testSerializeWithHiddenInputs!public!tests / Configuring / Serialization! !
!WebInteractionInterpreterTest categoriesFor: #testSetValueToThenTriggerChangeOf!public!tests / Configuring / DOM! !
!WebInteractionInterpreterTest categoriesFor: #testSetValueToWithoutTriggeringChangeOnComponentWithId!public!tests / Configuring / DOM! !
!WebInteractionInterpreterTest categoriesFor: #testShowLoadingNotificationStyledAsAll!public!tests / Configuring / DOM! !
!WebInteractionInterpreterTest categoriesFor: #testShowWhileCallingServerToRender!public!tests / Configuring / DOM! !
!WebInteractionInterpreterTest categoriesFor: #testSubmitForm!public!tests / Configuring / Serialization! !
!WebInteractionInterpreterTest categoriesFor: #testSubmitFormStyledAs!public!tests / Configuring / Serialization! !
!WebInteractionInterpreterTest categoriesFor: #testTemporarilyDisableAndTransformInto!public!tests / Configuring / DOM! !
!WebInteractionInterpreterTest categoriesFor: #testTemporarilyDisableAndTransformSelfInto!public!tests / Configuring / DOM! !
!WebInteractionInterpreterTest categoriesFor: #testToggleCssClass!public!tests / Configuring / CSS! !
!WebInteractionInterpreterTest categoriesFor: #testToggleCssClassOn!public!tests / Configuring / CSS! !
!WebInteractionInterpreterTest categoriesFor: #testToggleCssClassOnComponentsMatching!public!tests / Configuring / CSS! !
!WebInteractionInterpreterTest categoriesFor: #testTransformInto!public!tests / Configuring / DOM! !

