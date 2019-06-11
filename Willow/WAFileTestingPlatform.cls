"Filed out from Dolphin Smalltalk 7"!

GRPlatform subclass: #WAFileTestingPlatform
	instanceVariableNames: 'platform createdFolders createdFiles hashByFile'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFileTestingPlatform guid: (GUID fromString: '{d60ccb91-78bf-41a7-b4a4-e5c3ff3cbc04}')!
WAFileTestingPlatform comment: 'I''m a platform wrapping the installed one but providing facilities to test stuff related to the file system'!
!WAFileTestingPlatform categoriesForClass!Boardwalk-SUnit! !
!WAFileTestingPlatform methodsFor!

addToShutDownList: anObject	##(Pragma ignoreForCoverage).	^ platform addToShutDownList: anObject!

addToStartUpList: anObject	##(Pragma ignoreForCoverage).	^ platform addToStartUpList: anObject!

asMethodReturningByteArray: aByteArrayOrString named: aSymbol	##(Pragma ignoreForCoverage).	^ platform asMethodReturningByteArray: aByteArrayOrString named: aSymbol!

base64Decode: aString	##(Pragma ignoreForCoverage).	^ platform base64Decode: aString!

compile: aString into: aClass classified: aSymbol	##(Pragma ignoreForCoverage).	^ platform compile: aString into: aClass classified: aSymbol!

contentsOfFile: aString binary: aBoolean	##(Pragma ignoreForCoverage).	^ platform contentsOfFile: aString binary: aBoolean!

createdFiles	^ createdFiles asArray!

createdFolders	^ (SortedCollection withAll: createdFolders) asArray!

directoriesIn: aPathString	##(Pragma ignoreForCoverage).	^ platform directoriesIn: aPathString!

ensureExistenceOfFolder: aString	createdFolders add: aString.	^ true!

fileExists: aString	##(Pragma ignoreForCoverage).	^ platform fileExists: aString!

filesIn: aPathString	##(Pragma ignoreForCoverage).	^ platform filesIn: aPathString!

fileStreamOn: aString do: aBlock binary: aBoolean	##(Pragma ignoreForCoverage).	^ platform fileStreamOn: aString do: aBlock binary: aBoolean!

initializeWrapping: aGRPlatform	platform := aGRPlatform.	createdFolders := GRSmallOrderedSet new.	createdFiles := SortedCollection new.	hashByFile := GRSmallDictionary new.!

isProcessTerminated: aProcess	##(Pragma ignoreForCoverage).	^ platform isProcessTerminated: aProcess!

label	^ 'File Testing Wrapper'!

localNameOf: aString	##(Pragma ignoreForCoverage).	^ platform localNameOf: aString!

newline	##(Pragma ignoreForCoverage).	^ platform newline!

newRandom	##(Pragma ignoreForCoverage).	^ platform newRandom!

openDebuggerOn: anError	##(Pragma ignoreForCoverage).	^ platform openDebuggerOn: anError!

pathSeparator	##(Pragma ignoreForCoverage).	^ platform pathSeparator!

readWriteByteStream	##(Pragma ignoreForCoverage).	^ platform readWriteByteStream!

readWriteCharacterStream	##(Pragma ignoreForCoverage).	^ platform readWriteCharacterStream!

removeFromShutDownList: anObject	##(Pragma ignoreForCoverage).	^ platform removeFromShutDownList: anObject!

removeFromStartUpList: anObject	##(Pragma ignoreForCoverage).	^ platform removeFromStartUpList: anObject!

removeSelector: aSymbol from: aClass	##(Pragma ignoreForCoverage).	^ platform removeSelector: aSymbol from: aClass!

savedHashFor: aFilePath	^ hashByFile at: aFilePath ifAbsent: [ TestResult resumableFailure signal: ('Hash not found for <1s>. Please review the changes in the metadata library under test' expandMacrosWith: aFilePath) ]!

secureHashFor: aString	##(Pragma ignoreForCoverage).	^ platform secureHashFor: aString!

semaphoreClass	##(Pragma ignoreForCoverage).	^ platform semaphoreClass!

stackDepth	##(Pragma ignoreForCoverage).	^ platform stackDepth!

terminateProcess: aProcess	##(Pragma ignoreForCoverage).	^ platform terminateProcess: aProcess!

weakDictionaryOfSize: aNumber	##(Pragma ignoreForCoverage).	^ platform weakDictionaryOfSize: aNumber!

write: aStringOrByteArray toFile: aFileNameString inFolder: aFolderString	| filePathString |	filePathString := '<1s>/<2s>' expandMacrosWith: aFolderString with: aFileNameString.	createdFiles add: filePathString.	hashByFile at: filePathString put: (self secureHashFor: aStringOrByteArray) hex! !
!WAFileTestingPlatform categoriesFor: #addToShutDownList:!public!startup! !
!WAFileTestingPlatform categoriesFor: #addToStartUpList:!public!startup! !
!WAFileTestingPlatform categoriesFor: #asMethodReturningByteArray:named:!file library!public! !
!WAFileTestingPlatform categoriesFor: #base64Decode:!encoding!public! !
!WAFileTestingPlatform categoriesFor: #compile:into:classified:!file library!public! !
!WAFileTestingPlatform categoriesFor: #contentsOfFile:binary:!file library!public! !
!WAFileTestingPlatform categoriesFor: #createdFiles!accessing!public! !
!WAFileTestingPlatform categoriesFor: #createdFolders!accessing!public! !
!WAFileTestingPlatform categoriesFor: #directoriesIn:!file library!public! !
!WAFileTestingPlatform categoriesFor: #ensureExistenceOfFolder:!file library!public! !
!WAFileTestingPlatform categoriesFor: #fileExists:!file library!public! !
!WAFileTestingPlatform categoriesFor: #filesIn:!file library!public! !
!WAFileTestingPlatform categoriesFor: #fileStreamOn:do:binary:!file library!public! !
!WAFileTestingPlatform categoriesFor: #initializeWrapping:!initialization!public! !
!WAFileTestingPlatform categoriesFor: #isProcessTerminated:!processes!public! !
!WAFileTestingPlatform categoriesFor: #label!public!version info! !
!WAFileTestingPlatform categoriesFor: #localNameOf:!file library!public! !
!WAFileTestingPlatform categoriesFor: #newline!file library!public! !
!WAFileTestingPlatform categoriesFor: #newRandom!factory!public! !
!WAFileTestingPlatform categoriesFor: #openDebuggerOn:!exceptions!public! !
!WAFileTestingPlatform categoriesFor: #pathSeparator!file library!public! !
!WAFileTestingPlatform categoriesFor: #readWriteByteStream!factory!public! !
!WAFileTestingPlatform categoriesFor: #readWriteCharacterStream!factory!public! !
!WAFileTestingPlatform categoriesFor: #removeFromShutDownList:!public!startup! !
!WAFileTestingPlatform categoriesFor: #removeFromStartUpList:!public!startup! !
!WAFileTestingPlatform categoriesFor: #removeSelector:from:!file library!public! !
!WAFileTestingPlatform categoriesFor: #savedHashFor:!accessing!public! !
!WAFileTestingPlatform categoriesFor: #secureHashFor:!cryptography!public! !
!WAFileTestingPlatform categoriesFor: #semaphoreClass!factory!public! !
!WAFileTestingPlatform categoriesFor: #stackDepth!exceptions!public! !
!WAFileTestingPlatform categoriesFor: #terminateProcess:!processes!public! !
!WAFileTestingPlatform categoriesFor: #weakDictionaryOfSize:!factory!public! !
!WAFileTestingPlatform categoriesFor: #write:toFile:inFolder:!file library!public! !

!WAFileTestingPlatform class methodsFor!

wrapping: aGRPlatform	^ self new initializeWrapping: aGRPlatform! !
!WAFileTestingPlatform class categoriesFor: #wrapping:!Configuring!public! !

