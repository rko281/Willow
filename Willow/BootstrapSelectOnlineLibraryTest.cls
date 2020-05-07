"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #BootstrapSelectOnlineLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSelectOnlineLibraryTest guid: (GUID fromString: '{585c312d-b1fa-4041-ab3f-2aca4624ce63}')!
BootstrapSelectOnlineLibraryTest comment: 'A BootstrapSelectOnlineLibraryTest is a test class for testing the behavior of BootstrapSelectOnlineLibrary'!
!BootstrapSelectOnlineLibraryTest categoriesForClass!Willow-Bootstrap-Tests-Select! !
!BootstrapSelectOnlineLibraryTest methodsFor!

testUpdateRoot	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | BootstrapSelectOnlineLibrary inUSEnglish updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.16/css/bootstrap-select.min.css" integrity="sha256-g19F2KOr/H58l6XdI/rhCdEK3NmB8OILHwP/QYBQ8M4=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.16/js/bootstrap-select.min.js" integrity="sha256-COIM4OdXvo3jkE0/jD/QIEDe3x0jRuqHhOdGTkno3uM=" crossorigin="anonymous"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.16/js/i18n/defaults-en_US.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'!

testUpdateRootInSpanish	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | BootstrapSelectOnlineLibrary inSpanish updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.16/css/bootstrap-select.min.css" integrity="sha256-g19F2KOr/H58l6XdI/rhCdEK3NmB8OILHwP/QYBQ8M4=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.16/js/bootstrap-select.min.js" integrity="sha256-COIM4OdXvo3jkE0/jD/QIEDe3x0jRuqHhOdGTkno3uM=" crossorigin="anonymous"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.16/js/i18n/defaults-es_ES.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'! !
!BootstrapSelectOnlineLibraryTest categoriesFor: #testUpdateRoot!public!tests/updating! !
!BootstrapSelectOnlineLibraryTest categoriesFor: #testUpdateRootInSpanish!public!tests/updating! !

