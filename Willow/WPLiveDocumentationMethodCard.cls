"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPLiveDocumentationMethodCard
	instanceVariableNames: 'method methodPanel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPLiveDocumentationMethodCard guid: (GUID fromString: '{8fb8c213-0994-4e7a-b353-cf24893985ff}')!
WPLiveDocumentationMethodCard comment: 'I''m a panel showing an specific method '!
!WPLiveDocumentationMethodCard categoriesForClass!Willow-Playground-LiveDocs-WebViews! !
!WPLiveDocumentationMethodCard methodsFor!

initializeFor: aMethod	method := aMethod.	methodPanel := self componentSupplier panelBuilder		headingDisplaying: [ :canvas | 			canvas strong: aMethod selector.			canvas span with: aMethod protocol applying: [ :badge | badge addClass bootstrap3 badge + badge addClass bootstrap3 pullRight ] ];		wrapping: (self panelContentFor: aMethod);		buildApplying: [ :panel | panel addClass bootstrap3 panelDefault ]!

panelContentFor: aMethod	| tabsBuilder |	tabsBuilder := self componentSupplier tabsBuilder.	tabsBuilder addTabHeadedBy: 'Source' containing: (self sourceCodeFor: aMethod).	aMethod comment		ifNotNil: [ :comment | 			tabsBuilder				addTabHeadedBy: 'Comment'				containing: [ :canvas | 					canvas						break;						blockquote: comment ] ].	^ tabsBuilder		addTabHeadedBy: 'Bytecode' containing: (self symbolicBytecodesFor: aMethod);		build!

renderContentOn: html	html render: methodPanel!

sourceCodeFor: aMethod	^ [ :canvas | 	canvas		break;		preformatted: [ canvas				code:					('<1s><n><n><2s>'						expandMacrosWith: aMethod ast selectorAndArgumentNames						with: aMethod ast body formattedCode) ] ]!

symbolicBytecodesFor: aMethod	^ [ :canvas | 	canvas		break;		preformatted: [ canvas				code:					(String						streamContents: [ :stream | 							aMethod symbolicBytecodes								do: [ :bytecode | stream nextPutAll: bytecode greaseString ]								separatedBy: [ stream cr ] ]) ] ]! !
!WPLiveDocumentationMethodCard categoriesFor: #initializeFor:!initialization!public! !
!WPLiveDocumentationMethodCard categoriesFor: #panelContentFor:!initialization!public! !
!WPLiveDocumentationMethodCard categoriesFor: #renderContentOn:!initialization!public! !
!WPLiveDocumentationMethodCard categoriesFor: #sourceCodeFor:!initialization!public! !
!WPLiveDocumentationMethodCard categoriesFor: #symbolicBytecodesFor:!initialization!public! !

!WPLiveDocumentationMethodCard class methodsFor!

for: aMethod	^self new initializeFor: aMethod ! !
!WPLiveDocumentationMethodCard class categoriesFor: #for:!instance creation!public! !

