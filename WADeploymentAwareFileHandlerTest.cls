"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WADeploymentAwareFileHandlerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADeploymentAwareFileHandlerTest guid: (GUID fromString: '{716dd567-2717-4c7c-b77a-4cbffc1335e2}')!
WADeploymentAwareFileHandlerTest comment: 'A WillowFileHandlerTest is a test class for testing the behavior of WillowFileHandler'!
!WADeploymentAwareFileHandlerTest categoriesForClass!Boardwalk-Tests-WebApplication! !
!WADeploymentAwareFileHandlerTest methodsFor!

changeRegisteredFileHandlerDuring: aBlock	| installedHandler |	installedHandler := WAFileHandler default.	installedHandler unregister.	aBlock		ensure: [ WAFileHandler default: installedHandler.			WAAdmin defaultDispatcher register: installedHandler at: 'files' ]!

testInstallAsFileHandlerAccordingTo	self		changeRegisteredFileHandlerDuring: [ | handler |			handler := WADeploymentAwareFileHandler installAsFileHandlerAccordingTo: WAApplicationInDevelopment new.			self				assert: (handler libraries includes: WATestingFileMetadataDevelopmentLibrary);				assert: WAFileHandler default equals: handler;				assert: (WATestingFileMetadataDevelopmentLibrary default urlOf: #'' using: handler) greaseString equals: '/files/testing-0.0.0' ]!

testInstallAsFileHandlerAccordingToServedAt	self		changeRegisteredFileHandlerDuring: [ | handler |			handler := WADeploymentAwareFileHandler installAsFileHandlerAccordingTo: WAApplicationInDevelopment new servedAt: 'https://cdn.example.com' seasideUrl.			self				assert: (handler libraries includes: WATestingFileMetadataDevelopmentLibrary);				assert: WAFileHandler default equals: handler;				assert: (WATestingFileMetadataDevelopmentLibrary default urlOf: #'' using: handler) greaseString equals: 'https://cdn.example.com/testing-0.0.0' ]!

testLibraries	| libraries handler |	libraries := Array with: WATestingFileMetadataDeploymentLibrary.	handler := WADeploymentAwareFileHandler providing: libraries.	self assert: handler libraries equals: libraries! !
!WADeploymentAwareFileHandlerTest categoriesFor: #changeRegisteredFileHandlerDuring:!private! !
!WADeploymentAwareFileHandlerTest categoriesFor: #testInstallAsFileHandlerAccordingTo!public!tests/accessing! !
!WADeploymentAwareFileHandlerTest categoriesFor: #testInstallAsFileHandlerAccordingToServedAt!public!tests/accessing! !
!WADeploymentAwareFileHandlerTest categoriesFor: #testLibraries!public!tests/accessing! !

