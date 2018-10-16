﻿"Filed out from Dolphin Smalltalk 7"!

MessageSendingCollector subclass: #UnaryMessageSendingCollector
	instanceVariableNames: 'receiver filterBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UnaryMessageSendingCollector guid: (GUID fromString: '{234e3c00-6ed3-4935-b0d4-c883ebf65523}')!
UnaryMessageSendingCollector comment: ''!
!UnaryMessageSendingCollector categoriesForClass!Buoy-Metaprogramming! !
!UnaryMessageSendingCollector methodsFor!

filterBlock

intializeSendingAllMessagesMatching: aFilterBlock to: aReceiver

receiver

value
!UnaryMessageSendingCollector categoriesFor: #filterBlock!private! !
!UnaryMessageSendingCollector categoriesFor: #intializeSendingAllMessagesMatching:to:!initialization!public! !
!UnaryMessageSendingCollector categoriesFor: #receiver!private! !
!UnaryMessageSendingCollector categoriesFor: #value!evaluating!public! !

!UnaryMessageSendingCollector class methodsFor!

sendingAllMessagesBeginningWith: aPrefix andEndingWith: aSuffix to: aReceiver

sendingAllMessagesBeginningWith: aPrefix to: aReceiver

sendingAllMessagesEndingWith: aSuffix to: aReceiver

sendingAllMessagesMatching: aFilterBlock to: aReceiver
!UnaryMessageSendingCollector class categoriesFor: #sendingAllMessagesBeginningWith:andEndingWith:to:!Instance Creation!public! !
!UnaryMessageSendingCollector class categoriesFor: #sendingAllMessagesBeginningWith:to:!Instance Creation!public! !
!UnaryMessageSendingCollector class categoriesFor: #sendingAllMessagesEndingWith:to:!Instance Creation!public! !
!UnaryMessageSendingCollector class categoriesFor: #sendingAllMessagesMatching:to:!Instance Creation!public! !
