"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ReflectiveCascadingStyleSheetBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ReflectiveCascadingStyleSheetBuilder guid: (GUID fromString: '{17d66171-9399-402f-8c50-5d2492664032}')!
ReflectiveCascadingStyleSheetBuilder comment: 'I''m here helping to create stylesheets but without having to manually add every method to include.'!
!ReflectiveCascadingStyleSheetBuilder categoriesForClass!RenoirSt-Common! !
!ReflectiveCascadingStyleSheetBuilder methodsFor!

build	| builder |	builder := CascadingStyleSheetBuilder new.	(KeywordMessageSendingCollector		sendingAllMessagesBeginningWith: 'declare'		andEndingWith: 'StyleIn:'		to: self		with: builder) value.	^ builder build! !
!ReflectiveCascadingStyleSheetBuilder categoriesFor: #build!building!public! !

