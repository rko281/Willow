﻿"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssDeclarationBlock
	instanceVariableNames: 'declarations rulePrecedencePolicy'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssDeclarationBlock guid: (GUID fromString: '{6b7a6e33-0be5-462c-959a-cd21cc75ce5b}')!
CssDeclarationBlock comment: 'A declaration block starts with a left curly brace ({) and ends with the matching right curly brace (}). In between there must be a list of zero or more semicolon-separated (;) declarations.'!
!CssDeclarationBlock categoriesForClass!RenoirSt-Common! !
!CssDeclarationBlock methodsFor!

background: aCssValue 

backgroundAttachment: aCssValue 

backgroundClip: aCssValue

backgroundColor: aColor

backgroundImage: aCssValue 

backgroundOrigin: aCssValue

backgroundPosition: aCssValue 

backgroundRepeat: aCssValue 

backgroundSize: aCssValue 

beImportantDuring: aBlockClosure

border: aCssValue

borderBottom: aCssValue

borderBottomColor: aCssColor

borderBottomLeftRadius: aCssLength 

borderBottomRightRadius: aCssLength 

borderBottomStyle: aBorderWidth

borderBottomWidth: aBorderWidth

borderCollapse: aCssValue

borderColor: aCssColor

borderImage: aCssValue

borderImageOutset: aCssValue

borderImageRepeat: aCssValue

borderImageSlice: aCssValue

borderImageSource: aCssValue

borderImageWidth: aCssValue

borderLeft: aCssValue

borderLeftColor: aCssColor

borderLeftStyle: aBorderWidth

borderLeftWidth: aBorderWidth

borderRadius: aCssValue

borderRight: aCssValue

borderRightColor: aCssColor

borderRightStyle: aBorderWidth

borderRightWidth: aBorderWidth

borderSpacing: aCssValue

borderStyle: aBorderWidth

borderTop: aCssValue

borderTopColor: aCssColor

borderTopLeftRadius: aCssLength 

borderTopRightRadius: aCssLength 

borderTopStyle: aBorderWidth

borderTopWidth: aBorderWidth

borderWidth: aBorderWidth

bottom: aCssValue

boxShadow: aCssValue

captionSide: aCssValue

clear: aCssValue

clip: aCssValue

color: aCssColor

content: aCssValue

counterIncrement: aCssValue

counterReset: aCssValue

cssContentOn: aStream

cursor: aCssValue

direction: aCssValue

display: aCssValue

emptyCells: aCssValue

float: aCssValue

font: aCssValue

fontFamily: aCssValue

fontKerning: aCssValue

fontSize: aCssValue

fontSizeAdjust: aNumber 

fontStretch: aCssValue

fontStyle: aCssValue

fontSynthesis: aCssValue

fontVariant: aCssValue

fontVariantCaps: aCssValue

fontVariantLigatures: aCssValue

fontVariantNumeric: aCssValue

fontVariantPosition: aCssValue

fontWeight: aCssValue

height: aWidth

initialize

left: aCssValue

letterSpacing: aCssValue

lineHeight: aCssValue

listStyle: aCssValue

listStyleImage: aCssValue

listStylePosition: aCssValue

listStyleType: aCssValue

margin: aMarginSpec

marginBottom: aMarginWidth

marginLeft: aMarginWidth

marginRight: aMarginWidth

marginTop: aMarginWidth

maxHeight: aWidth

maxWidth: aWidth

minHeight: aWidth

minWidth: aWidth

opacity: alphaValue

outline: aCssValue

outlineColor: aCssValue

outlineStyle: aCssValue

outlineWidth: aCssValue

overflow: aCssValue

overflowX: aCssValue

overflowY: aCssValue

padding: aPaddingSpec

paddingBottom: aPaddingWidth

paddingLeft: aPaddingWidth

paddingRight: aPaddingWidth

paddingTop: aPaddingWidth

position: aCssValue

printInlinedOn: aStream

propertyAt: aPropertyName put: aNamedConstantOrValue

quotes: aCssValue

resize:  aCssValue

right: aCssValue

src: aCssValue

tableLayout: aCssValue

textAlign: aCssValue

textDecoration: aCssValue

textDecorationColor:  aCssValue

textDecorationLine: aCssValue

textDecorationStyle: aCssValue

textEmphasis: aCssValue

textEmphasisColor:  aCssValue

textEmphasisPosition: aCssValue

textEmphasisStyle: aCssValue

textIndent: aCssValue

textOverflow: aCssValue

textShadow: aCssValue

textTransform: aCssValue

textUnderlinePosition: aCssValue

top: aCssValue

unicodeBidi: aCssValue

verticalAlign: aCssValue

visibility: aCssValue

whiteSpace: aCssValue

width: aWidth

wordSpacing: aCssValue

wordWrap: aCssValue 

zIndex: aCssValue
!CssDeclarationBlock categoriesFor: #background:!background properties!public! !
!CssDeclarationBlock categoriesFor: #backgroundAttachment:!background properties!public! !
!CssDeclarationBlock categoriesFor: #backgroundClip:!background properties!public! !
!CssDeclarationBlock categoriesFor: #backgroundColor:!background properties!public! !
!CssDeclarationBlock categoriesFor: #backgroundImage:!background properties!public! !
!CssDeclarationBlock categoriesFor: #backgroundOrigin:!background properties!public! !
!CssDeclarationBlock categoriesFor: #backgroundPosition:!background properties!public! !
!CssDeclarationBlock categoriesFor: #backgroundRepeat:!background properties!public! !
!CssDeclarationBlock categoriesFor: #backgroundSize:!background properties!public! !
!CssDeclarationBlock categoriesFor: #beImportantDuring:!Configuring!public! !
!CssDeclarationBlock categoriesFor: #border:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderBottom:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderBottomColor:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderBottomLeftRadius:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderBottomRightRadius:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderBottomStyle:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderBottomWidth:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderCollapse:!public!table properties! !
!CssDeclarationBlock categoriesFor: #borderColor:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderImage:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderImageOutset:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderImageRepeat:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderImageSlice:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderImageSource:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderImageWidth:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderLeft:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderLeftColor:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderLeftStyle:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderLeftWidth:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderRadius:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderRight:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderRightColor:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderRightStyle:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderRightWidth:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderSpacing:!public!table properties! !
!CssDeclarationBlock categoriesFor: #borderStyle:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderTop:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderTopColor:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderTopLeftRadius:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderTopRightRadius:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderTopStyle:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderTopWidth:!border properties!public! !
!CssDeclarationBlock categoriesFor: #borderWidth:!border properties!public! !
!CssDeclarationBlock categoriesFor: #bottom:!public!visual formatting properties! !
!CssDeclarationBlock categoriesFor: #boxShadow:!box properties!public! !
!CssDeclarationBlock categoriesFor: #captionSide:!public!table properties! !
!CssDeclarationBlock categoriesFor: #clear:!public!visual formatting properties! !
!CssDeclarationBlock categoriesFor: #clip:!public!visual effects properties! !
!CssDeclarationBlock categoriesFor: #color:!color properties!public! !
!CssDeclarationBlock categoriesFor: #content:!generated content properties!public! !
!CssDeclarationBlock categoriesFor: #counterIncrement:!generated content properties!public! !
!CssDeclarationBlock categoriesFor: #counterReset:!generated content properties!public! !
!CssDeclarationBlock categoriesFor: #cssContentOn:!Printing!public! !
!CssDeclarationBlock categoriesFor: #cursor:!public!ui properties! !
!CssDeclarationBlock categoriesFor: #direction:!public!visual formatting properties! !
!CssDeclarationBlock categoriesFor: #display:!public!visual formatting properties! !
!CssDeclarationBlock categoriesFor: #emptyCells:!public!table properties! !
!CssDeclarationBlock categoriesFor: #float:!public!visual formatting properties! !
!CssDeclarationBlock categoriesFor: #font:!font properties!public! !
!CssDeclarationBlock categoriesFor: #fontFamily:!font properties!public! !
!CssDeclarationBlock categoriesFor: #fontKerning:!font properties!public! !
!CssDeclarationBlock categoriesFor: #fontSize:!font properties!public! !
!CssDeclarationBlock categoriesFor: #fontSizeAdjust:!font properties!public! !
!CssDeclarationBlock categoriesFor: #fontStretch:!font properties!public! !
!CssDeclarationBlock categoriesFor: #fontStyle:!font properties!public! !
!CssDeclarationBlock categoriesFor: #fontSynthesis:!font properties!public! !
!CssDeclarationBlock categoriesFor: #fontVariant:!font properties!public! !
!CssDeclarationBlock categoriesFor: #fontVariantCaps:!font properties!public! !
!CssDeclarationBlock categoriesFor: #fontVariantLigatures:!font properties!public! !
!CssDeclarationBlock categoriesFor: #fontVariantNumeric:!font properties!public! !
!CssDeclarationBlock categoriesFor: #fontVariantPosition:!font properties!public! !
!CssDeclarationBlock categoriesFor: #fontWeight:!font properties!public! !
!CssDeclarationBlock categoriesFor: #height:!box properties!public! !
!CssDeclarationBlock categoriesFor: #initialize!initialize/release!public! !
!CssDeclarationBlock categoriesFor: #left:!public!visual formatting properties! !
!CssDeclarationBlock categoriesFor: #letterSpacing:!public!text properties! !
!CssDeclarationBlock categoriesFor: #lineHeight:!box properties!public! !
!CssDeclarationBlock categoriesFor: #listStyle:!generated content properties!public! !
!CssDeclarationBlock categoriesFor: #listStyleImage:!generated content properties!public! !
!CssDeclarationBlock categoriesFor: #listStylePosition:!generated content properties!public! !
!CssDeclarationBlock categoriesFor: #listStyleType:!generated content properties!public! !
!CssDeclarationBlock categoriesFor: #margin:!box properties!public! !
!CssDeclarationBlock categoriesFor: #marginBottom:!box properties!public! !
!CssDeclarationBlock categoriesFor: #marginLeft:!box properties!public! !
!CssDeclarationBlock categoriesFor: #marginRight:!box properties!public! !
!CssDeclarationBlock categoriesFor: #marginTop:!box properties!public! !
!CssDeclarationBlock categoriesFor: #maxHeight:!box properties!public! !
!CssDeclarationBlock categoriesFor: #maxWidth:!box properties!public! !
!CssDeclarationBlock categoriesFor: #minHeight:!box properties!public! !
!CssDeclarationBlock categoriesFor: #minWidth:!box properties!public! !
!CssDeclarationBlock categoriesFor: #opacity:!color properties!public! !
!CssDeclarationBlock categoriesFor: #outline:!public!ui properties! !
!CssDeclarationBlock categoriesFor: #outlineColor:!public!ui properties! !
!CssDeclarationBlock categoriesFor: #outlineStyle:!public!ui properties! !
!CssDeclarationBlock categoriesFor: #outlineWidth:!public!ui properties! !
!CssDeclarationBlock categoriesFor: #overflow:!public!visual effects properties! !
!CssDeclarationBlock categoriesFor: #overflowX:!public!visual effects properties! !
!CssDeclarationBlock categoriesFor: #overflowY:!public!visual effects properties! !
!CssDeclarationBlock categoriesFor: #padding:!box properties!public! !
!CssDeclarationBlock categoriesFor: #paddingBottom:!box properties!public! !
!CssDeclarationBlock categoriesFor: #paddingLeft:!box properties!public! !
!CssDeclarationBlock categoriesFor: #paddingRight:!box properties!public! !
!CssDeclarationBlock categoriesFor: #paddingTop:!box properties!public! !
!CssDeclarationBlock categoriesFor: #position:!public!visual formatting properties! !
!CssDeclarationBlock categoriesFor: #printInlinedOn:!Printing!public! !
!CssDeclarationBlock categoriesFor: #propertyAt:put:!private! !
!CssDeclarationBlock categoriesFor: #quotes:!generated content properties!public! !
!CssDeclarationBlock categoriesFor: #resize:!box properties!public! !
!CssDeclarationBlock categoriesFor: #right:!public!visual formatting properties! !
!CssDeclarationBlock categoriesFor: #src:!font properties!public! !
!CssDeclarationBlock categoriesFor: #tableLayout:!public!table properties! !
!CssDeclarationBlock categoriesFor: #textAlign:!public!text properties! !
!CssDeclarationBlock categoriesFor: #textDecoration:!public!text properties! !
!CssDeclarationBlock categoriesFor: #textDecorationColor:!public!text properties! !
!CssDeclarationBlock categoriesFor: #textDecorationLine:!public!text properties! !
!CssDeclarationBlock categoriesFor: #textDecorationStyle:!public!text properties! !
!CssDeclarationBlock categoriesFor: #textEmphasis:!public!text properties! !
!CssDeclarationBlock categoriesFor: #textEmphasisColor:!public!text properties! !
!CssDeclarationBlock categoriesFor: #textEmphasisPosition:!public!text properties! !
!CssDeclarationBlock categoriesFor: #textEmphasisStyle:!public!text properties! !
!CssDeclarationBlock categoriesFor: #textIndent:!public!text properties! !
!CssDeclarationBlock categoriesFor: #textOverflow:!public!text properties! !
!CssDeclarationBlock categoriesFor: #textShadow:!public!text properties! !
!CssDeclarationBlock categoriesFor: #textTransform:!public!text properties! !
!CssDeclarationBlock categoriesFor: #textUnderlinePosition:!public!text properties! !
!CssDeclarationBlock categoriesFor: #top:!public!visual formatting properties! !
!CssDeclarationBlock categoriesFor: #unicodeBidi:!public!visual formatting properties! !
!CssDeclarationBlock categoriesFor: #verticalAlign:!box properties!public! !
!CssDeclarationBlock categoriesFor: #visibility:!public!visual effects properties! !
!CssDeclarationBlock categoriesFor: #whiteSpace:!public!text properties! !
!CssDeclarationBlock categoriesFor: #width:!box properties!public! !
!CssDeclarationBlock categoriesFor: #wordSpacing:!public!text properties! !
!CssDeclarationBlock categoriesFor: #wordWrap:!public!text properties! !
!CssDeclarationBlock categoriesFor: #zIndex:!public!visual formatting properties! !
