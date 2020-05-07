"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #BootstrapDatepickerOnlineLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDatepickerOnlineLibraryTest guid: (GUID fromString: '{d55445d4-a5d9-40d3-9a58-7815e5db6e78}')!
BootstrapDatepickerOnlineLibraryTest comment: 'A BootstrapDatepickerOnlineLibraryTest is a test class for testing the behavior of BootstrapDatepickerOnlineLibrary'!
!BootstrapDatepickerOnlineLibraryTest categoriesForClass!Willow-Bootstrap-Tests-Datepicker! !
!BootstrapDatepickerOnlineLibraryTest methodsFor!

testUpdateRoot	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | BootstrapDatepickerOnlineLibrary default updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css" integrity="sha256-FAOaXTpl90/K8cXmSdsskbQN3nKYulhCpPbcFzGTWKI=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js" integrity="sha256-bqVeqGdJ7h/lYPq6xrPv/YGzMEb6dNxlfiTUHSgRCp8=" crossorigin="anonymous"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'!

testUpdateRootWithLocale	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock:				[ :root | ( BootstrapDatepickerOnlineLibrary using: ( WALocale fromString: 'en-NZ' ) ) updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css" integrity="sha256-FAOaXTpl90/K8cXmSdsskbQN3nKYulhCpPbcFzGTWKI=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js" integrity="sha256-bqVeqGdJ7h/lYPq6xrPv/YGzMEb6dNxlfiTUHSgRCp8=" crossorigin="anonymous"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.en-NZ.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'!

testUpdateRootWithUnsupportedLocale	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock:				[ :root | ( BootstrapDatepickerOnlineLibrary using: ( WALocale fromString: 'vi-XX' ) ) updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css" integrity="sha256-FAOaXTpl90/K8cXmSdsskbQN3nKYulhCpPbcFzGTWKI=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js" integrity="sha256-bqVeqGdJ7h/lYPq6xrPv/YGzMEb6dNxlfiTUHSgRCp8=" crossorigin="anonymous"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'! !
!BootstrapDatepickerOnlineLibraryTest categoriesFor: #testUpdateRoot!public!tests/Updating! !
!BootstrapDatepickerOnlineLibraryTest categoriesFor: #testUpdateRootWithLocale!public!tests/Updating! !
!BootstrapDatepickerOnlineLibraryTest categoriesFor: #testUpdateRootWithUnsupportedLocale!public!tests/Updating! !

