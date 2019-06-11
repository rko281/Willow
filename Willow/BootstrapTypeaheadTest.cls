"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapTypeaheadTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapTypeaheadTest guid: (GUID fromString: '{91dc767f-bef9-451d-8d69-32a4ca0d5985}')!
BootstrapTypeaheadTest comment: 'A BootstrapTypeaheadTest is a test class for testing the behavior of BootstrapTypeahead'!
!BootstrapTypeaheadTest categoriesForClass!Willow-Bootstrap-Tests-Typeahead! !
!BootstrapTypeaheadTest methodsFor!

renderTextInputApplying: aBlock	^ self		renderUsing: [ :canvas | 			| input bootstrapTypeAhead |			input := canvas textInput.			bootstrapTypeAhead := canvas jQuery new bootstrapTypeahead.			aBlock value: bootstrapTypeAhead.			input script: bootstrapTypeAhead ]!

testAddItem	| html |	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead addItem: false ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"addItem":false});</script>'!

testAfterSelect	| html |	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead afterSelect: JSFunction new ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"afterSelect":function(){}});</script>'!

testAppendTo	| html |	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead appendTo: JSStream this ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"appendTo":this});</script>'!

testAutoSelect	| html |	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead autoSelect: true ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"autoSelect":true});</script>'!

testDelay	| html |	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead delay: 1 ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"delay":1});</script>'!

testDestroy	| html |	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead destroy ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead("destroy");</script>'!

testDisplayText	| html |	html := self		renderTextInputApplying: [ :bootstrapTypeahead | 			bootstrapTypeahead				displayText:					(((JSStream this alias: 'item')						access: 'name';						asFunction: #('item'))						return: true;						yourself) ].	self		assert: html		equals:			'<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"displayText":function(item){return item.name}});</script>'!

testFitToElement	| html |	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead fitToElement: true ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"fitToElement":true});</script>'!

testGetActive	| html |	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead getActive ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead("getActive");</script>'!

testHighlighter	| html |	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead highlighter: (JSFunction new arguments: #(item)) ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"highlighter":function(item){}});</script>'!

testItems	| html |	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead items: 12 ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"items":12});</script>'!

testLookup	| html |	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead lookup ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead("lookup");</script>'!

testMatcher	| html |	html := self		renderTextInputApplying: [ :bootstrapTypeahead | 			bootstrapTypeahead				matcher:					(JSFunction new						arguments: #('item');						add: true;						return: true;						yourself) ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"matcher":function(item){return true}});</script>'!

testMinLength	| html |	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead minLength: 12 ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"minLength":12});</script>'!

testScrollHeight	| html |	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead scrollHeight: 12 ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"scrollHeight":12});</script>'!

testShowHintOnFocus	| html |	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead showHintOnFocus: true ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"showHintOnFocus":true});</script>'!

testSorter	| html |	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead sorter: (JSFunction new arguments: #('item')) ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"sorter":function(item){}});</script>'!

testSource	| html |	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead source: #('a' 'b') ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"source":["a","b"]});</script>'!

testUpdater	| html |	html := self		renderTextInputApplying: [ :bootstrapTypeahead | 			bootstrapTypeahead				updater:					(JSFunction new						arguments: #('item');						add: ((JSStream this alias: 'item') access: 'value');						return: true;						yourself) ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"updater":function(item){return item.value}});</script>'! !
!BootstrapTypeaheadTest categoriesFor: #renderTextInputApplying:!public!rendering! !
!BootstrapTypeaheadTest categoriesFor: #testAddItem!public!tests/Options! !
!BootstrapTypeaheadTest categoriesFor: #testAfterSelect!public!tests/Options! !
!BootstrapTypeaheadTest categoriesFor: #testAppendTo!public!tests/Options! !
!BootstrapTypeaheadTest categoriesFor: #testAutoSelect!public!tests/Options! !
!BootstrapTypeaheadTest categoriesFor: #testDelay!public!tests/Options! !
!BootstrapTypeaheadTest categoriesFor: #testDestroy!public!tests/Methods! !
!BootstrapTypeaheadTest categoriesFor: #testDisplayText!public!tests/Options! !
!BootstrapTypeaheadTest categoriesFor: #testFitToElement!public!tests/Options! !
!BootstrapTypeaheadTest categoriesFor: #testGetActive!public!tests/Methods! !
!BootstrapTypeaheadTest categoriesFor: #testHighlighter!public!tests/Options! !
!BootstrapTypeaheadTest categoriesFor: #testItems!public!tests/Options! !
!BootstrapTypeaheadTest categoriesFor: #testLookup!public!tests/Methods! !
!BootstrapTypeaheadTest categoriesFor: #testMatcher!public!tests/Options! !
!BootstrapTypeaheadTest categoriesFor: #testMinLength!public!tests/Options! !
!BootstrapTypeaheadTest categoriesFor: #testScrollHeight!public!tests/Options! !
!BootstrapTypeaheadTest categoriesFor: #testShowHintOnFocus!public!tests/Options! !
!BootstrapTypeaheadTest categoriesFor: #testSorter!public!tests/Options! !
!BootstrapTypeaheadTest categoriesFor: #testSource!public!tests/Options! !
!BootstrapTypeaheadTest categoriesFor: #testUpdater!public!tests/Options! !

