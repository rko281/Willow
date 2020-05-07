"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapDatepickerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDatepickerTest guid: (GUID fromString: '{0dc4ac68-5b26-404a-b86b-3eaa49bd8299}')!
BootstrapDatepickerTest comment: 'A BootstrapDatepickerTest is a test class for testing the behavior of BootstrapDatepicker'!
!BootstrapDatepickerTest categoriesForClass!Willow-Bootstrap-Tests-Datepicker! !
!BootstrapDatepickerTest methodsFor!

januaryFirst2017	^ Date newDay: 1 month: 1 year: 2017!

renderTextFieldApplying: aBlock	^ self		renderUsing: [ :canvas | 			| select datepicker |			select := canvas textInput.			datepicker := canvas jQuery new bootstrapDatepicker.			aBlock value: datepicker.			select script: datepicker ]!

testAssumeNearbyYear	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker assumeNearbyYear: true ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"assumeNearbyYear":true});</script>'.	html := self renderTextFieldApplying: [ :datepicker | datepicker assumeNearbyYear: 20 ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"assumeNearbyYear":20});</script>'!

testAutoclose	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker autoclose: true ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"autoclose":true});</script>'!

testBeforeShowCentury	| html |	html := self		renderTextFieldApplying: [ :datepicker | datepicker beforeShowCentury: (JSFunction new arguments: #(date)) ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"beforeShowCentury":function(date){}});</script>'!

testBeforeShowDay	| html |	html := self		renderTextFieldApplying: [ :datepicker | datepicker beforeShowDay: (JSFunction new arguments: #(date)) ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"beforeShowDay":function(date){}});</script>'!

testBeforeShowDecade	| html |	html := self		renderTextFieldApplying: [ :datepicker | datepicker beforeShowDecade: (JSFunction new arguments: #(date)) ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"beforeShowDecade":function(date){}});</script>'!

testBeforeShowMonth	| html |	html := self		renderTextFieldApplying: [ :datepicker | datepicker beforeShowMonth: (JSFunction new arguments: #(date)) ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"beforeShowMonth":function(date){}});</script>'!

testBeforeShowYear	| html |	html := self		renderTextFieldApplying: [ :datepicker | datepicker beforeShowYear: (JSFunction new arguments: #(date)) ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"beforeShowYear":function(date){}});</script>'!

testCalendarWeeks	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker calendarWeeks: true ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"calendarWeeks":true});</script>'!

testClearButton	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker clearButton:  true ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"clearBtn":true});</script>'!

testClearDates	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker clearDates ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("clearDates");</script>'!

testContainer	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker container: '#picker-id' ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"container":"#picker-id"});</script>'!

testCustomFormatting	| html format |	format := BootstrapDatepickerFormat		formattingWith: ('return new Date(date).toISOString();' asFunction: #(date format language))		parsingWith: ('return new Date(d)' asFunction: #(date format language)).	html := self renderTextFieldApplying: [ :datepicker | datepicker format: format ].	self		assert: html		equals:			'<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"format":{"toDisplay":function(date,format,language){return new Date(date).toISOString();},"toValue":function(date,format,language){return new Date(d)}}});</script>'!

testDatesDisabled	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker datesDisabled: '2017-12-11' ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"datesDisabled":"2017-12-11"});</script>'.	html := self renderTextFieldApplying: [ :datepicker | datepicker datesDisabled: #('2017-12-11' '2017-12-10') ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"datesDisabled":["2017-12-11","2017-12-10"]});</script>'!

testDaysOfWeekDisabled	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker daysOfWeekDisabled: #sunday ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"daysOfWeekDisabled":0});</script>'.	html := self renderTextFieldApplying: [ :datepicker | datepicker daysOfWeekDisabled: #(#saturday #sunday) ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"daysOfWeekDisabled":[6,0]});</script>'!

testDaysOfWeekHighlighted	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker daysOfWeekHighlighted: #sunday ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"daysOfWeekHighlighted":0});</script>'.	html := self renderTextFieldApplying: [ :datepicker | datepicker daysOfWeekHighlighted: #(#saturday #sunday) ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"daysOfWeekHighlighted":[6,0]});</script>'!

testDestroy	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker destroy ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("destroy");</script>'!

testDisableTouchKeyboard	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker disableTouchKeyboard: true ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"disableTouchKeyboard":true});</script>'!

testEnableOnReadonly	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker enableOnReadonly: true ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"enableOnReadonly":true});</script>'!

testEndDate	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker endDate: self januaryFirst2017 ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"endDate":new Date(2017,0,1)});</script>'!

testForceParse	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker forceParse: true ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"forceParse":true});</script>'!

testFormat	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker format: 'd/m/yy' ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"format":"d/m/yy"});</script>'!

testGetDate	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker getDate ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("getDate");</script>'!

testGetDates	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker getDates ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("getDates");</script>'!

testGetEndDate	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker getEndDate ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("getEndDate");</script>'!

testGetStartDate	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker getStartDate ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("getStartDate");</script>'!

testGetUTCDate	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker getUTCDate ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("getUTCDate");</script>'!

testGetUTCDates	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker getUTCDates ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("getUTCDates");</script>'!

testHide	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker hide ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("hide");</script>'!

testImmediateUpdates	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker immediateUpdates: true ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"immediateUpdates":true});</script>'!

testInputs	| html |	html := self		renderUsing: [ :canvas | 			| select datepicker |			select := canvas textInput.			datepicker := canvas jQuery new bootstrapDatepicker.			datepicker inputs: (canvas jQuery class: 'actual_range').			select script: datepicker ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"inputs":$(".actual_range")});</script>'!

testKeepEmptyValues	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker keepEmptyValues: true ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"keepEmptyValues":true});</script>'!

testKeyboardNavigation	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker keyboardNavigation: true ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"keyboardNavigation":true});</script>'!

testLanguage	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker language: 'de-DE' ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"language":"de-DE"});</script>'!

testMaxViewMode	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker maxViewMode: #years ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"maxViewMode":"years"});</script>'!

testMinViewMode	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker minViewMode: #months ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"minViewMode":"months"});</script>'!

testMultidate	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker multidate: true ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"multidate":true});</script>'!

testMultidateSeparator	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker multidateSeparator: ';' ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"multidateSeparator":";"});</script>'!

testOnCenturyChanged	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker onCenturyChanged: JSFunction new ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("changeCentury",function(){});</script>'!

testOnDateChanged	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker onDateChanged: JSFunction new ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("changeDate",function(){});</script>'!

testOnDateCleared	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker onDateCleared:  JSFunction new ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("clearDate",function(){});</script>'!

testOnDecadeChanged	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker onDecadeChanged: JSFunction new ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("changeDecade",function(){});</script>'!

testOnHide	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker onHide: JSFunction new ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("hide",function(){});</script>'!

testOnMonthChanged	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker onMonthChanged: JSFunction new ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("changeMonth",function(){});</script>'!

testOnShow	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker onShow: JSFunction new ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("show",function(){});</script>'!

testOnViewModeChanged	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker onViewModeChanged: JSFunction new ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("changeViewMode",function(){});</script>'!

testOnYearChanged	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker onYearChanged: JSFunction new ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("changeYear",function(){});</script>'!

testOrientation	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker orientation: #bottom ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"orientation":"bottom"});</script>'!

testSetDate	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker setDate: self januaryFirst2017 ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setDate",new Date(2017,0,1));</script>'.!

testSetDates	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker setDates: {self januaryFirst2017} ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setDates",[new Date(2017,0,1)]);</script>'!

testSetDatesDisabled	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker setDatesDisabled: #() ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setDatesDisabled",[]);</script>'.!

testSetDaysOfWeekDisabled	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker setDaysOfWeekDisabled: #() ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setDaysOfWeekDisabled",[]);</script>'.!

testSetDaysOfWeekHighlighted	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker setDaysOfWeekHighlighted: #() ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setDaysOfWeekHighlighted",[]);</script>'!

testSetEndDate	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker setEndDate: self januaryFirst2017 ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setEndDate",new Date(2017,0,1));</script>'.!

testSetStartDate	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker setStartDate: self januaryFirst2017 ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setStartDate",new Date(2017,0,1));</script>'.!

testSetUTCDate	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker setUTCDate: self januaryFirst2017 ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setUTCDate",new Date(2017,0,1));</script>'!

testSetUTCDates	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker setUTCDates: {self januaryFirst2017} ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setUTCDates",[new Date(2017,0,1)]);</script>'!

testShow	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker show ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("show");</script>'!

testShowOnFocus	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker showOnFocus: true ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"showOnFocus":true});</script>'!

testShowWeekDays	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker showWeekDays: true ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"showWeekDays":true});</script>'!

testStartDate	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker startDate: self januaryFirst2017 ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"startDate":new Date(2017,0,1)});</script>'!

testStartView	| html |	html := self		renderTextFieldApplying: [ :datepicker | datepicker startView: #millennium ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"startView":"millennium"});</script>'!

testTemplates	| html |	html := self		renderUsing: [ :canvas | 			| select datepicker |			select := canvas textInput.			datepicker := canvas jQuery new bootstrapDatepicker.			datepicker				templates: ( canvas jQuery new bootstrapDatepickerTemplate leftArrow: '<<-' rightArrow: '->>' ).			select script: datepicker			].	self		assert: html		equals:			'<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"templates":{"leftArrow":"&lt;&lt;-","rightArrow":"-&gt;&gt;"}});</script>'!

testTitle	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker title: 'Pick a date!!' ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"title":"Pick a date!!"});</script>'!

testTodayButton	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker todayButton: true ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"todayBtn":true});</script>'!

testTodayHighlight	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker todayHighlight: true ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"todayHighlight":true});</script>'!

testToggleActive	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker toggleActive: true ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"toggleActive":true});</script>'!

testUpdate	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker update ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("update");</script>'!

testUpdateViewDate	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker updateViewDate: true ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"updateViewDate":true});</script>'!

testUpdateWithArguments	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker update: '2001-03-05' ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("update","2001-03-05");</script>'.	html := self renderTextFieldApplying: [ :datepicker | datepicker update: self januaryFirst2017 ].	self		assert: html		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("update",new Date(2017,0,1));</script>'.	html := self renderTextFieldApplying: [ :datepicker | datepicker update: '' ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("update","");</script>'!

testWeekStart	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker weekStart: #wednesday ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"weekStart":3});</script>'!

testZIndexOffset	| html |	html := self renderTextFieldApplying: [ :datepicker | datepicker zIndexOffset:15].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"zIndexOffset":15});</script>'! !
!BootstrapDatepickerTest categoriesFor: #januaryFirst2017!public!rendering! !
!BootstrapDatepickerTest categoriesFor: #renderTextFieldApplying:!public!rendering! !
!BootstrapDatepickerTest categoriesFor: #testAssumeNearbyYear!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testAutoclose!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testBeforeShowCentury!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testBeforeShowDay!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testBeforeShowDecade!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testBeforeShowMonth!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testBeforeShowYear!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testCalendarWeeks!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testClearButton!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testClearDates!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testContainer!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testCustomFormatting!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testDatesDisabled!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testDaysOfWeekDisabled!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testDaysOfWeekHighlighted!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testDestroy!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testDisableTouchKeyboard!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testEnableOnReadonly!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testEndDate!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testForceParse!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testFormat!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testGetDate!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testGetDates!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testGetEndDate!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testGetStartDate!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testGetUTCDate!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testGetUTCDates!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testHide!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testImmediateUpdates!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testInputs!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testKeepEmptyValues!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testKeyboardNavigation!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testLanguage!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testMaxViewMode!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testMinViewMode!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testMultidate!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testMultidateSeparator!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testOnCenturyChanged!public!tests/Events! !
!BootstrapDatepickerTest categoriesFor: #testOnDateChanged!public!tests/Events! !
!BootstrapDatepickerTest categoriesFor: #testOnDateCleared!public!tests/Events! !
!BootstrapDatepickerTest categoriesFor: #testOnDecadeChanged!public!tests/Events! !
!BootstrapDatepickerTest categoriesFor: #testOnHide!public!tests/Events! !
!BootstrapDatepickerTest categoriesFor: #testOnMonthChanged!public!tests/Events! !
!BootstrapDatepickerTest categoriesFor: #testOnShow!public!tests/Events! !
!BootstrapDatepickerTest categoriesFor: #testOnViewModeChanged!public!tests/Events! !
!BootstrapDatepickerTest categoriesFor: #testOnYearChanged!public!tests/Events! !
!BootstrapDatepickerTest categoriesFor: #testOrientation!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testSetDate!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testSetDates!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testSetDatesDisabled!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testSetDaysOfWeekDisabled!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testSetDaysOfWeekHighlighted!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testSetEndDate!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testSetStartDate!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testSetUTCDate!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testSetUTCDates!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testShow!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testShowOnFocus!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testShowWeekDays!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testStartDate!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testStartView!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testTemplates!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testTitle!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testTodayButton!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testTodayHighlight!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testToggleActive!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testUpdate!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testUpdateViewDate!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testUpdateWithArguments!public!tests/Methods! !
!BootstrapDatepickerTest categoriesFor: #testWeekStart!public!tests/Options! !
!BootstrapDatepickerTest categoriesFor: #testZIndexOffset!public!tests/Options! !

