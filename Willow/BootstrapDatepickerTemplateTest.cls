"Filed out from Dolphin Smalltalk 7"!

JSObjectTest subclass: #BootstrapDatepickerTemplateTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDatepickerTemplateTest guid: (GUID fromString: '{7768ae06-bfd6-4452-8ba9-c24c1b759528}')!
BootstrapDatepickerTemplateTest comment: 'A BootstrapDatepickerTemplateTest is a test class for testing the behavior of BootstrapDatepickerTemplate'!
!BootstrapDatepickerTemplateTest categoriesForClass!Willow-Bootstrap-Tests-Datepicker! !
!BootstrapDatepickerTemplateTest methodsFor!

testAsJavascript	self		assert: ((BootstrapDatepickerTemplate context: self renderContext) leftArrow: [ :canvas | canvas span: '<' ] rightArrow: '>')		equals: '{"leftArrow":"<span>&lt;</span>","rightArrow":"&gt;"}'! !
!BootstrapDatepickerTemplateTest categoriesFor: #testAsJavascript!public!tests! !

