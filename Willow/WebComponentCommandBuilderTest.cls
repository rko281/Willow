"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #WebComponentCommandBuilderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebComponentCommandBuilderTest guid: (GUID fromString: '{497fe7ea-2a4e-4513-be75-683888c0a989}')!
WebComponentCommandBuilderTest comment: 'A WebComponentCommandBuilderTest is a test class for testing the behavior of WebComponentCommandBuilder'!
!WebComponentCommandBuilderTest categoriesForClass!Willow-Tests-Frontend! !
!WebComponentCommandBuilderTest methodsFor!

commandBuilder	^ WebComponentCommandBuilder new!

testAccessibilityEnrichmentCommands	| html |	html := self apply: (self commandBuilder setARIAAttribute: 'describedBy' to: 'helpBlock') toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input aria-describedBy="helpBlock" type="text"/>'!

testARIARoleCommand	| html |	html := self apply: (self commandBuilder setARIARoleTo: #presentation) toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div role="presentation"></div>'!

testAttributeCommands	| html |	html := self apply: (self commandBuilder setAttribute: 'rows' to: 5) toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div rows="5"></div>'!

testAutofocusCommand	| html |	html := self apply: self commandBuilder beAutofocused toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div autofocus="autofocus"></div>'!

testBlockExtension	| html |	html := self		apply: [ :command | (command addScript js: [ :canvas | canvas jQuery this clone ]) + command bePasswordInput ] asWebComponentCommand		toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input id="id1" type="password"/><script type="text/javascript">$("#id1").clone();</script>'!

testBoundaryCommands	| html |	html := self apply: self commandBuilder boundNotNegative toComponentDefinedBy: [ :canvas | canvas numberInput ].	self assert: html equals: '<input min="0" type="number"/>'.	html := self		apply: (self commandBuilder boundBetween: 15 and: 20)		toComponentDefinedBy: [ :canvas | canvas numberInput ].	self assert: html equals: '<input min="15" max="20" type="number"/>'!

testCallbackSettingCommand	| html |	html := self		apply: (self commandBuilder setCallbackTo: [ "Do something in real life." ])		toComponentDefinedBy: [ :canvas | canvas anchor ].	self assert: html equals: '<a href="/?1"></a>'!

testClassificationCommands	| html |	html := self apply: self commandBuilder addClass loading toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div class="willow-loading"></div>'.		html := self apply: self commandBuilder addClass willow toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div class="willow"></div>'.		html := self apply: self commandBuilder addClass dialogContainer toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div class="willow-dialog-container"></div>'.		html := self apply: self commandBuilder addClass disabledComponent toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div class="willow-disabled-component"></div>'.		html := self apply: self commandBuilder addClass fadingNotification toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div class="willow-fading-notification"></div>'!

testCompositeCommand	| html |	html := self		apply: [ :field | (field addScript js: [ :canvas | canvas jQuery this clone ]) + field bePasswordInput ] asWebComponentCommand		toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input id="id1" type="password"/><script type="text/javascript">$("#id1").clone();</script>'!

testConditionalCommand	| html |	html := self apply: [ :field | field when: [ true ] apply: field beReadOnly ] asWebComponentCommand toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input readonly="readonly" type="text"/>'.	html := self apply: [ :field | field when: [ false ] apply: field beReadOnly ] asWebComponentCommand toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input type="text"/>'!

testDeselectAllOptionsCommands	| html |	html := self apply: self commandBuilder deselectAllOptions toComponentDefinedBy: [ :canvas | canvas select ].	self		assert: html		equals: '<select id="id1"></select><script type="text/javascript">$("#id1").prop("selectedIndex",-1);</script>'!

testDisableCommand	| html |	html := self apply: self commandBuilder beDisabled toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div disabled="disabled"></div>'!

testDisableTabCycleCommand	| html |	html := self apply: self commandBuilder disableTabCycle toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div tabindex="-1"></div>'!

testInputModeCommands	| html |	html := self apply: self commandBuilder beDateInput toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: (self renderUsing: [ :canvas | canvas dateInput5 ]).	html := self apply: self commandBuilder beNumberInput toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: (self renderUsing: [ :canvas | canvas numberInput ]).	html := self apply: self commandBuilder bePasswordInput toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input type="password"/>'.	html := self apply: self commandBuilder beEmailInput toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input type="email"/>'.	html := self apply: self commandBuilder beTextInput toComponentDefinedBy: [ :canvas | canvas textInput type: 'date' ].	self assert: html equals: '<input type="text"/>'!

testListLabelingCommand	| html |	html := self		apply: (self commandBuilder labelItemsWith: [ :string | string asUppercase ])		toComponentDefinedBy: [ :canvas | canvas select list: #('one' 'two') ].	self assert: html equals: '<select><option>ONE</option><option>TWO</option></select>'!

testMaxLengthCommand	| html |	html := self apply: (self commandBuilder setMaximumLengthTo: 25) toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input maxlength="25" type="text"/>'!

testMetadataCommands	| html |	html := self apply: (self commandBuilder setData: 'content' to: 15) toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div data-content="15"></div>'!

testNamingCommand	| html |	html := self apply: (self commandBuilder setNameTo: 'name') toComponentDefinedBy: [ :canvas | canvas anchor ].	self assert: html equals: '<a name="name"></a>'!

testPlaceholderCommands	| html |	html := self apply: (self commandBuilder setPlaceholderTo: 'user') toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input placeholder="user" type="text"/>'!

testReadOnlyCommand	| html |	html := self apply: self commandBuilder beReadOnly toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input readonly="readonly" type="text"/>'!

testRequiredCommand	| html |	html := self apply: self commandBuilder beRequired toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input required="required" type="text"/>'!

testScriptCommands	| html |	html := self		apply: (self commandBuilder addScript js: [ :canvas | canvas jQuery this clone ])		toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").clone();</script>'!

testSetComponentStyleCommands	| html |	html := self apply: (self commandBuilder setStyleTo: [ :style :constants | style background: constants >> #colors >> #blue ]) toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div style="background: blue;"></div>'!

testTabIndexCommand	| html |	html := self apply: (self commandBuilder setTabIndexTo: 3) toComponentDefinedBy: [ :canvas | canvas select ].	self assert: html equals: '<select tabindex="3"></select>'!

testTitleCommand	| html |	html := self apply: (self commandBuilder setTitleTo: 'image') toComponentDefinedBy: [ :canvas | canvas image ].	self assert: html equals: '<img alt="" title="image"/>'! !
!WebComponentCommandBuilderTest categoriesFor: #commandBuilder!private! !
!WebComponentCommandBuilderTest categoriesFor: #testAccessibilityEnrichmentCommands!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testARIARoleCommand!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testAttributeCommands!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testAutofocusCommand!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testBlockExtension!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testBoundaryCommands!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testCallbackSettingCommand!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testClassificationCommands!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testCompositeCommand!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testConditionalCommand!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testDeselectAllOptionsCommands!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testDisableCommand!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testDisableTabCycleCommand!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testInputModeCommands!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testListLabelingCommand!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testMaxLengthCommand!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testMetadataCommands!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testNamingCommand!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testPlaceholderCommands!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testReadOnlyCommand!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testRequiredCommand!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testScriptCommands!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testSetComponentStyleCommands!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testTabIndexCommand!public!tests! !
!WebComponentCommandBuilderTest categoriesFor: #testTitleCommand!public!tests! !

