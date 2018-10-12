"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #BootstrapDatepickerFormatTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDatepickerFormatTest guid: (GUID fromString: '{78c143af-292f-4e07-8676-47946676d730}')!
BootstrapDatepickerFormatTest comment: 'A BootstrapDatepickerFormatTest is a test class for testing the behavior of BootstrapDatepickerFormat'!
!BootstrapDatepickerFormatTest categoriesForClass!Willow-Bootstrap-Tests-Datepicker! !
!BootstrapDatepickerFormatTest methodsFor!

testAsJavascript	| toDisplayFunction toValueFunction |	toDisplayFunction := 'var d = new Date(date);            d.setDate(d.getDate() - 7);            return d.toISOString();' asFunction: #(date format language).	toValueFunction := 'var d = new Date(date);            d.setDate(d.getDate() + 7);            return new Date(d);' asFunction: #(date format language).	self		assert: (BootstrapDatepickerFormat formattingWith: toDisplayFunction parsingWith: toValueFunction) asJavascript		equals:			'{"toDisplay":function(date,format,language){var d = new Date(date);            d.setDate(d.getDate() - 7);            return d.toISOString();},"toValue":function(date,format,language){var d = new Date(date);            d.setDate(d.getDate() + 7);            return new Date(d);}}'! !
!BootstrapDatepickerFormatTest categoriesFor: #testAsJavascript!public!tests! !

