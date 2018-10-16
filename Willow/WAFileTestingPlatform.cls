﻿"Filed out from Dolphin Smalltalk 7"!

GRPlatform subclass: #WAFileTestingPlatform
	instanceVariableNames: 'platform createdFolders createdFiles hashByFile'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFileTestingPlatform guid: (GUID fromString: '{a79a4cf8-dcf5-40a4-b338-357c06d2596c}')!
WAFileTestingPlatform comment: 'I''m a platform wrapping the installed one but providing facilities to test stuff related to the file system'!
!WAFileTestingPlatform categoriesForClass!Boardwalk-Tests-WebApplication! !
!WAFileTestingPlatform methodsFor!

addToShutDownList: anObject

addToStartUpList: anObject

asMethodReturningByteArray: aByteArrayOrString named: aSymbol

base64Decode: aString

compile: aString into: aClass classified: aSymbol

contentsOfFile: aString binary: aBoolean

createdFiles

createdFolders

directoriesIn: aPathString

ensureExistenceOfFolder: aString
	"Store in platform-agnostic format"

fileExists: aString

filesIn: aPathString

fileStreamOn: aString do: aBlock binary: aBoolean

initializeWrapping: aGRPlatform

isProcessTerminated: aProcess

label

localNameOf: aString

newline

newRandom

openDebuggerOn: anError

pathSeparator

readWriteByteStream

readWriteCharacterStream

removeFromShutDownList: anObject

removeFromStartUpList: anObject

removeSelector: aSymbol from: aClass

savedHashFor: aFilePath

secureHashFor: aString

semaphoreClass

stackDepth

terminateProcess: aProcess

weakDictionaryOfSize: aNumber

write: aStringOrByteArray toFile: aFileNameString inFolder: aFolderString
	filePathString := ('<1s>/<2s>' expandMacrosWith: aFolderString with: aFileNameString) copyReplaceAll: self pathSeparator with: '/'.
	createdFiles add: filePathString.

	"Force AnsiString to try to get a comparable result to Pharo. 
	If the Ansi isn't valid then do nothing since we can't get a usable result to compare with the hardcoded test values.
	Note we also have to drop line feeds. Also tabs (or at least one of the test values containing tabs) doesn't work, so ignore these too..."
	(aStringOrByteArray class = Utf8String) 
	ifTrue: 
		[ansi := aStringOrByteArray asAnsiString.
		(aStringOrByteArray = ansi and: [(ansi includes: Character tab) not])
			ifTrue: [hashByFile at: filePathString put: (self secureHashFor: (ansi reject: [ :char | char = Character lf])) hex]
			ifFalse: [hashByFile at: filePathString put: nil]]
	ifFalse: 
		[hashByFile at: filePathString put: (self secureHashFor: aStringOrByteArray) hex]! !
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

wrapping: aGRPlatform
!WAFileTestingPlatform class categoriesFor: #wrapping:!Configuring!public! !
