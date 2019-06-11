"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapSelectTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSelectTest guid: (GUID fromString: '{068dd014-3565-4802-9187-a4d9565739eb}')!
BootstrapSelectTest comment: 'A BootstrapSelectTest is a test class for testing the behavior of BootstrapSelect'!
!BootstrapSelectTest categoriesForClass!Willow-Bootstrap-Tests-Select! !
!BootstrapSelectTest methodsFor!

renderMultiSelectApplying: aBlock	^ self		renderUsing: [ :canvas | 			| select bootstrapSelect |			select := canvas multiSelect.			select list: #(1 2 3).			bootstrapSelect := canvas jQuery new bootstrapSelect.			aBlock value: bootstrapSelect.			select script: bootstrapSelect ]!

renderSelectApplying: aBlock	^ self		renderUsing: [ :canvas | 			| select bootstrapSelect |			select := canvas select.			select list: #(1 2 3).			bootstrapSelect := canvas jQuery new bootstrapSelect.			aBlock value: bootstrapSelect.			select script: bootstrapSelect ]!

testActionsBox	| html |	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect actionsBox: true ].	self		assert: html		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"actionsBox":true});</script>'!

testContainer	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect container: 'body' ].	self assert: html equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"container":"body"});</script>'!

testCountSelectedText	| html |	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect countSelectedText: 'Selected {0} of {1}' ].	self		assert: html		equals:			'<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"countSelectedText":"Selected {0} of {1}"});</script>'!

testCountSelectedTextWithFunction	| html |	html := self		renderMultiSelectApplying: [ :bootstrapSelect | 			bootstrapSelect				countSelectedText:					(JSFunction new						arguments: #('selectedCount' 'totalCount');						return: true;						add: 'Something selected';						yourself) ].	self		assert: html		equals:			'<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"countSelectedText":function(selectedCount,totalCount){return "Something selected"}});</script>'!

testDeselectAll	| html |	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect deselectAll ].	self		assert: html		equals:			'<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("deselectAll");</script>'!

testDeselectAllText	| html |	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect deselectAllText: 'Remove Selection' ].	self		assert: html		equals:			'<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"deselectAllText":"Remove Selection"});</script>'!

testDestroy	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect destroy ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("destroy");</script>'!

testDropdownAlignRight	| html |	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect dropdownAlignRight: #auto ].	self		assert: html		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"dropdownAlignRight":"auto"});</script>'.	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect dropdownAlignRight: true ].	self		assert: html		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"dropdownAlignRight":true});</script>'!

testDropupAuto	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect dropupAuto: true ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"dropupAuto":true});</script>'!

testHeader	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect header: 'Header' ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"header":"Header"});</script>'!

testHide	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect hide ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("hide");</script>'!

testHideDisabled	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect hideDisabled: true ].	self assert: html equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"hideDisabled":true});</script>'!

testIconBase	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect iconBase: 'fa' ].	self assert: html equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"iconBase":"fa"});</script>'!

testLiveSearchOptions	| html |	html := self		renderSelectApplying: [ :bootstrapSelect | 			bootstrapSelect				liveSearch: true;				liveSearchNormalize: true;				liveSearchPlaceholder: 'Search...';				liveSearchStyle: #startsWith ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"liveSearch":true,"liveSearchNormalize":true,"liveSearchPlaceholder":"Search...","liveSearchStyle":"startsWith"});</script>'!

testLiveSearchStyle	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect liveSearchStyle: #contains ].	self assert: html equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"liveSearchStyle":"contains"});</script>'!

testMaxOptions	| html |	html := self		renderMultiSelectApplying: [ :bootstrapSelect | 			bootstrapSelect				maxOptions: 5;				maxOptionsText: 'Select no more than five items' ].	self		assert: html		equals:			'<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"maxOptions":5,"maxOptionsText":"Select no more than five items"});</script>'!

testMaxOptionsWithArray	| html |	html := self		renderMultiSelectApplying: [ :bootstrapSelect | 			bootstrapSelect				maxOptions: 5;				maxOptionsText: #('Total max' 'Group max') ].	self		assert: html		equals:			'<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"maxOptions":5,"maxOptionsText":["Total max","Group max"]});</script>'!

testMobile	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect mobile: true ].	self assert: html equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"mobile":true});</script>'!

testMobileMethod	| html |	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect mobile ].	self		assert: html		equals:			'<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("mobile");</script>'!

testMultipleSeparator	| html |	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect multipleSeparator: '/ ' ].	self		assert: html		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"multipleSeparator":"/ "});</script>'!

testNoneSelectedText	| html |	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect noneSelectedText: 'Nothing' ].	self		assert: html		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"noneSelectedText":"Nothing"});</script>'!

testOnChanged	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect onChanged: JSFunction new ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker().on("changed.bs.select",function(){});</script>'!

testOnHidden	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect onHidden: JSFunction new ].	self		assert: html		equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker().on("hidden.bs.select",function(){});</script>'!

testOnHide	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect onHide: JSFunction new ].	self		assert: html		equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker().on("hide.bs.select",function(){});</script>'!

testOnLoaded	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect onLoaded: JSFunction new ].	self		assert: html		equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker().on("loaded.bs.select",function(){});</script>'!

testOnRefreshed	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect onRefreshed: JSFunction new ].	self		assert: html		equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker().on("refreshed.bs.select",function(){});</script>'!

testOnRendered	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect onRendered: JSFunction new ].	self		assert: html		equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker().on("rendered.bs.select",function(){});</script>'!

testOnShow	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect onShow: JSFunction new ].	self		assert: html		equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker().on("show.bs.select",function(){});</script>'!

testOnShown	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect onShown: JSFunction new ].	self		assert: html		equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker().on("shown.bs.select",function(){});</script>'!

testRefresh	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect refresh ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("refresh");</script>'!

testRender	| html |	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect render ].	self		assert: html		equals:			'<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("render");</script>'!

testSelectAll	| html |	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect selectAll ].	self		assert: html		equals:			'<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("selectAll");</script>'!

testSelectAllText	| html |	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect selectAllText: 'Select All' ].	self		assert: html		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"selectAllText":"Select All"});</script>'!

testSelectedTextFormat	| html |	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect selectedTextFormat: #values ].	self		assert: html		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"selectedTextFormat":"values"});</script>'.	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect selectedTextFormat: #static ].	self		assert: html		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"selectedTextFormat":"static"});</script>'.	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect selectedTextFormat: #count ].	self		assert: html		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"selectedTextFormat":"count"});</script>'.	html := self renderMultiSelectApplying: [ :bootstrapSelect | bootstrapSelect selectedTextFormatCountAfter: 3 ].	self		assert: html		equals: '<select id="id1" multiple><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"selectedTextFormat":"count > 3"});</script>'!

testSelectOnTab	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect selectOnTab: true ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"selectOnTab":true});</script>'!

testSetStyle	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect setStyle ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("setStyle");</script>'!

testShow	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect show ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("show");</script>'!

testShowContent	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect showContent: true ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"showContent":true});</script>'!

testShowIcon	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect showIcon: true ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"showIcon":true});</script>'!

testShowSubtext	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect showSubtext: true ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"showSubtext":true});</script>'!

testShowTick	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect showTick: true ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"showTick":true});</script>'!

testSize	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect size: 15 ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"size":15});</script>'!

testStyle	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect style: nil ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"style":null});</script>'!

testTickIcon	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect tickIcon: 'ok'  ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"tickIcon":"ok"});</script>'!

testTitle	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect title: 'Please select:'  ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"title":"Please select:"});</script>'!

testToggle	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect toggle ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker("toggle");</script>'!

testWidth	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect width: #fit ].	self assert: html equals: '<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"width":"fit"});</script>'!

testWidthInCssUnits	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect width: 10 px  ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"width":"10px"});</script>'!

testWindowPadding	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect windowPadding: 2 ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"windowPadding":2});</script>'!

testWindowPaddingWithArray	| html |	html := self renderSelectApplying: [ :bootstrapSelect | bootstrapSelect windowPadding: #(1 2 3 4) ].	self		assert: html		equals:			'<select id="id1"><option>1</option><option>2</option><option>3</option></select><script type="text/javascript">$("#id1").selectpicker({"windowPadding":[1,2,3,4]});</script>'! !
!BootstrapSelectTest categoriesFor: #renderMultiSelectApplying:!private! !
!BootstrapSelectTest categoriesFor: #renderSelectApplying:!private! !
!BootstrapSelectTest categoriesFor: #testActionsBox!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testContainer!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testCountSelectedText!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testCountSelectedTextWithFunction!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testDeselectAll!public!tests/Methods! !
!BootstrapSelectTest categoriesFor: #testDeselectAllText!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testDestroy!public!tests/Methods! !
!BootstrapSelectTest categoriesFor: #testDropdownAlignRight!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testDropupAuto!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testHeader!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testHide!public!tests/Methods! !
!BootstrapSelectTest categoriesFor: #testHideDisabled!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testIconBase!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testLiveSearchOptions!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testLiveSearchStyle!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testMaxOptions!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testMaxOptionsWithArray!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testMobile!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testMobileMethod!public!tests/Methods! !
!BootstrapSelectTest categoriesFor: #testMultipleSeparator!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testNoneSelectedText!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testOnChanged!public!tests/Events! !
!BootstrapSelectTest categoriesFor: #testOnHidden!public!tests/Events! !
!BootstrapSelectTest categoriesFor: #testOnHide!public!tests/Events! !
!BootstrapSelectTest categoriesFor: #testOnLoaded!public!tests/Events! !
!BootstrapSelectTest categoriesFor: #testOnRefreshed!public!tests/Events! !
!BootstrapSelectTest categoriesFor: #testOnRendered!public!tests/Events! !
!BootstrapSelectTest categoriesFor: #testOnShow!public!tests/Events! !
!BootstrapSelectTest categoriesFor: #testOnShown!public!tests/Events! !
!BootstrapSelectTest categoriesFor: #testRefresh!public!tests/Methods! !
!BootstrapSelectTest categoriesFor: #testRender!public!tests/Methods! !
!BootstrapSelectTest categoriesFor: #testSelectAll!public!tests/Methods! !
!BootstrapSelectTest categoriesFor: #testSelectAllText!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testSelectedTextFormat!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testSelectOnTab!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testSetStyle!public!tests/Methods! !
!BootstrapSelectTest categoriesFor: #testShow!public!tests/Methods! !
!BootstrapSelectTest categoriesFor: #testShowContent!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testShowIcon!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testShowSubtext!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testShowTick!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testSize!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testStyle!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testTickIcon!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testTitle!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testToggle!public!tests/Methods! !
!BootstrapSelectTest categoriesFor: #testWidth!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testWidthInCssUnits!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testWindowPadding!public!tests/Options! !
!BootstrapSelectTest categoriesFor: #testWindowPaddingWithArray!public!tests/Options! !

