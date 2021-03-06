﻿"Filed out from Dolphin Smalltalk 7"!

MessageSendingCollector subclass: #UnaryMessageSendingCollector
	instanceVariableNames: 'receiver filterBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UnaryMessageSendingCollector guid: (GUID fromString: '{a8abbc79-b0d0-48ff-a648-f8f90afda76d}')!
UnaryMessageSendingCollector comment: ''!
!UnaryMessageSendingCollector categoriesForClass!Buoy-Metaprogramming! !
!UnaryMessageSendingCollector methodsFor!

filterBlock	^ filterBlock!

initializeSendingAllMessagesMatching: aFilterBlock to: aReceiver	filterBlock := aFilterBlock.	receiver := aReceiver!

receiver	^ receiver!

value	^ self matchingSelectorsCollect: [ :selector | receiver perform: selector ]! !
!UnaryMessageSendingCollector categoriesFor: #filterBlock!private! !
!UnaryMessageSendingCollector categoriesFor: #initializeSendingAllMessagesMatching:to:!initialization!public! !
!UnaryMessageSendingCollector categoriesFor: #receiver!private! !
!UnaryMessageSendingCollector categoriesFor: #value!evaluating!public! !

!UnaryMessageSendingCollector class methodsFor!

sendingAllMessagesBeginningWith: aPrefix andEndingWith: aSuffix to: aReceiver	^ self sendingAllMessagesMatching: [ :selector | (selector beginsWith: aPrefix) and: [ selector endsWith: aSuffix ] ] to: aReceiver!

sendingAllMessagesBeginningWith: aPrefix to: aReceiver	^ self sendingAllMessagesMatching: [ :selector | selector beginsWith: aPrefix ] to: aReceiver!

sendingAllMessagesEndingWith: aSuffix to: aReceiver	^ self sendingAllMessagesMatching: [ :selector | selector endsWith: aSuffix ] to: aReceiver!

sendingAllMessagesMatching: aFilterBlock to: aReceiver	^ self new initializeSendingAllMessagesMatching: aFilterBlock to: aReceiver! !
!UnaryMessageSendingCollector class categoriesFor: #sendingAllMessagesBeginningWith:andEndingWith:to:!Instance Creation!public! !
!UnaryMessageSendingCollector class categoriesFor: #sendingAllMessagesBeginningWith:to:!Instance Creation!public! !
!UnaryMessageSendingCollector class categoriesFor: #sendingAllMessagesEndingWith:to:!Instance Creation!public! !
!UnaryMessageSendingCollector class categoriesFor: #sendingAllMessagesMatching:to:!Instance Creation!public! !

