"Filed out from Dolphin Smalltalk 7"!

MessageSendingCollector subclass: #KeywordMessageSendingCollector
	instanceVariableNames: 'receiver filterBlock arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
KeywordMessageSendingCollector guid: (GUID fromString: '{0f813b97-16bf-454f-8f81-276bc38eeb83}')!
KeywordMessageSendingCollector comment: ''!
!KeywordMessageSendingCollector categoriesForClass!Buoy-Metaprogramming! !
!KeywordMessageSendingCollector methodsFor!

filterBlock	^ filterBlock!

initializeSendingAllMessagesMatching: aFilterBlock to: aReceiver withAll: anArgumentCollection	filterBlock := aFilterBlock.	receiver := aReceiver.	arguments := anArgumentCollection!

receiver	^ receiver!

value	^ self matchingSelectorsCollect: [ :selector | receiver perform: selector withArguments: arguments ]! !
!KeywordMessageSendingCollector categoriesFor: #filterBlock!private! !
!KeywordMessageSendingCollector categoriesFor: #initializeSendingAllMessagesMatching:to:withAll:!initialization!public! !
!KeywordMessageSendingCollector categoriesFor: #receiver!private! !
!KeywordMessageSendingCollector categoriesFor: #value!evaluating!public! !

!KeywordMessageSendingCollector class methodsFor!

sendingAllMessagesBeginningWith: aPrefix andEndingWith: aSuffix to: aReceiver with: anArgument	^ self		sendingAllMessagesMatching: [ :selector | (selector beginsWith: aPrefix) and: [ selector endsWith: aSuffix ] ]		to: aReceiver		withAll: {anArgument}!

sendingAllMessagesMatching: aFilterBlock to: aReceiver withAll: anArgumentCollection	^ self new		initializeSendingAllMessagesMatching: [ :selector | selector argumentCount = anArgumentCollection size and: [ aFilterBlock value: selector ] ]		to: aReceiver		withAll: anArgumentCollection asArray! !
!KeywordMessageSendingCollector class categoriesFor: #sendingAllMessagesBeginningWith:andEndingWith:to:with:!Instance Creation!public! !
!KeywordMessageSendingCollector class categoriesFor: #sendingAllMessagesMatching:to:withAll:!Instance Creation!public! !

