"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssMediaQueryRule
	instanceVariableNames: 'mediaType expressions styleSheet'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssMediaQueryRule guid: (GUID fromString: '{93b8a280-9fa4-4bfd-ab97-716cad2f5e76}')!
CssMediaQueryRule comment: 'A media query is a logical expression that is either true or false. A media query is true if the media type of the media query matches the media type of the device where the user agent is running (as defined in the "Applies to" line), and all expressions in the media query are true.'!
!CssMediaQueryRule categoriesForClass!RenoirSt-MediaQueries! !
!CssMediaQueryRule methodsFor!

cssContentOn: aStream	aStream		nextPutAll: '@media';		space.	mediaType cssContentOn: aStream.	self cssExpressionsContentOn: aStream.	aStream		newLine;		nextPut: ${.	self cssStatementsContentOn: aStream.	aStream newLine.	aStream nextPut: $}!

cssExpressionsContentOn: aStream	expressions		do: [ :expression | 			aStream				space;				nextPutAll: 'and';				space.			expression cssContentOn: aStream ]!

cssStatementsContentOn: aStream	| tabStream |	tabStream := IndentOnNewLineWriteStream on: aStream.	tabStream newLine.	styleSheet cssContentOn: tabStream!

initializeOfType: aMediaType conforming: anExpressionCollection enabling: aCascadingStyleSheet	mediaType := aMediaType.	expressions := anExpressionCollection.	styleSheet := aCascadingStyleSheet! !
!CssMediaQueryRule categoriesFor: #cssContentOn:!Printing!public! !
!CssMediaQueryRule categoriesFor: #cssExpressionsContentOn:!private! !
!CssMediaQueryRule categoriesFor: #cssStatementsContentOn:!private! !
!CssMediaQueryRule categoriesFor: #initializeOfType:conforming:enabling:!initialize/release!public! !

!CssMediaQueryRule class methodsFor!

ofType: aMediaType conforming: anExpressionCollection enabling: aCascadingStyleSheet 		^self new initializeOfType: aMediaType conforming: anExpressionCollection enabling: aCascadingStyleSheet !

ofType: aMediaType enabling: aCascadingStyleSheet 		^self ofType: aMediaType conforming: #() enabling: aCascadingStyleSheet ! !
!CssMediaQueryRule class categoriesFor: #ofType:conforming:enabling:!Instance Creation!public! !
!CssMediaQueryRule class categoriesFor: #ofType:enabling:!Instance Creation!public! !

