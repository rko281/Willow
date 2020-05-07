"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssDeclarationBlock
	instanceVariableNames: 'declarations rulePrecedencePolicy'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssDeclarationBlock guid: (GUID fromString: '{6b7a6e33-0be5-462c-959a-cd21cc75ce5b}')!
CssDeclarationBlock comment: 'A declaration block starts with a left curly brace ({) and ends with the matching right curly brace (}). In between there must be a list of zero or more semicolon-separated (;) declarations.'!
!CssDeclarationBlock categoriesForClass!RenoirSt-Core-Common! !
!CssDeclarationBlock methodsFor!

animation: aCssValue	"Values must follow the guidelines specified in https://drafts.csswg.org/css-animations/#animation 	being like:		animation: name duration timing-function delay iteration-count direction fill-mode play-state		Always specify the animation-duration property, otherwise the duration is 0, and will never be played."	self propertyAt: 'animation' put: aCssValue !

animationDelay: aCssValue	self propertyAt: 'animation-delay' put: aCssValue !

animationDirection: aCssValue	self propertyAt: 'animation-direction' put: aCssValue !

animationDuration: aCssValue	self propertyAt: 'animation-duration' put: aCssValue !

animationFillMode: aCssValue	self propertyAt: 'animation-fill-mode' put: aCssValue !

animationIterationCount: aCssValue	self propertyAt: 'animation-iteration-count' put: aCssValue !

animationName: aCssValue	self propertyAt: 'animation-name' put: aCssValue !

animationPlayState: aCssValue	self propertyAt: 'animation-play-state' put: aCssValue !

animationTimingFunction: aCssValue	self propertyAt: 'animation-timing-function' put: aCssValue !

background: aCssValue 	self propertyAt: 'background' put: aCssValue!

backgroundAttachment: aCssValue 	self propertyAt: 'background-attachment' put: aCssValue!

backgroundClip: aCssValue	self propertyAt: 'background-clip' put: aCssValue !

backgroundColor: aColor	self propertyAt: 'background-color' put: aColor!

backgroundImage: aCssValue 	self propertyAt: 'background-image' put: aCssValue!

backgroundOrigin: aCssValue	self propertyAt: 'background-origin' put: aCssValue !

backgroundPosition: aCssValue 	self propertyAt: 'background-position' put: aCssValue!

backgroundRepeat: aCssValue 	self propertyAt: 'background-repeat' put: aCssValue!

backgroundSize: aCssValue 	self propertyAt: 'background-size' put: aCssValue!

beImportantDuring: aBlockClosure		| previousPolicy |	previousPolicy := rulePrecedencePolicy.	rulePrecedencePolicy := CssImportantRulePrecedencePoliciy new.	[ aBlockClosure value: self ]		ensure: [ rulePrecedencePolicy := previousPolicy ]!

border: aCssValue	self propertyAt: 'border' put: aCssValue  !

borderBottom: aCssValue	self propertyAt: 'border-bottom' put: aCssValue  !

borderBottomColor: aCssColor		self propertyAt: 'border-bottom-color' put: aCssColor !

borderBottomLeftRadius: aCssLength 		self propertyAt: 'border-bottom-left-radius' put: aCssLength !

borderBottomRightRadius: aCssLength 		self propertyAt: 'border-bottom-right-radius' put: aCssLength !

borderBottomStyle: aBorderWidth		self propertyAt: 'border-bottom-style' put: aBorderWidth !

borderBottomWidth: aBorderWidth		self propertyAt: 'border-bottom-width' put: aBorderWidth !

borderCollapse: aCssValue	self propertyAt: 'border-collapse' put: aCssValue !

borderColor: aCssColor		self propertyAt: 'border-color' put: aCssColor !

borderImage: aCssValue	self propertyAt: 'border-image' put: aCssValue !

borderImageOutset: aCssValue	self propertyAt: 'border-image-outset' put: aCssValue !

borderImageRepeat: aCssValue	self propertyAt: 'border-image-repeat' put: aCssValue !

borderImageSlice: aCssValue	self propertyAt: 'border-image-slice' put: aCssValue !

borderImageSource: aCssValue	self propertyAt: 'border-image-source' put: aCssValue !

borderImageWidth: aCssValue	self propertyAt: 'border-image-width' put: aCssValue !

borderLeft: aCssValue	self propertyAt: 'border-left' put: aCssValue  !

borderLeftColor: aCssColor		self propertyAt: 'border-left-color' put: aCssColor !

borderLeftStyle: aBorderWidth		self propertyAt: 'border-left-style' put: aBorderWidth !

borderLeftWidth: aBorderWidth		self propertyAt: 'border-left-width' put: aBorderWidth !

borderRadius: aCssValue	self propertyAt: 'border-radius' put: aCssValue  !

borderRight: aCssValue	self propertyAt: 'border-right' put: aCssValue  !

borderRightColor: aCssColor		self propertyAt: 'border-right-color' put: aCssColor !

borderRightStyle: aBorderWidth		self propertyAt: 'border-right-style' put: aBorderWidth !

borderRightWidth: aBorderWidth		self propertyAt: 'border-right-width' put: aBorderWidth !

borderSpacing: aCssValue	self propertyAt: 'border-spacing' put: aCssValue !

borderStyle: aBorderWidth		self propertyAt: 'border-style' put: aBorderWidth !

borderTop: aCssValue	self propertyAt: 'border-top' put: aCssValue  !

borderTopColor: aCssColor		self propertyAt: 'border-top-color' put: aCssColor !

borderTopLeftRadius: aCssLength 		self propertyAt: 'border-top-left-radius' put: aCssLength !

borderTopRightRadius: aCssLength 		self propertyAt: 'border-top-right-radius' put: aCssLength !

borderTopStyle: aBorderWidth		self propertyAt: 'border-top-style' put: aBorderWidth !

borderTopWidth: aBorderWidth		self propertyAt: 'border-top-width' put: aBorderWidth !

borderWidth: aBorderWidth		self propertyAt: 'border-width' put: aBorderWidth !

bottom: aCssValue	self propertyAt: 'bottom' put: aCssValue !

boxShadow: aCssValue	self propertyAt: 'box-shadow' put: aCssValue !

captionSide: aCssValue	self propertyAt: 'caption-side' put: aCssValue !

clear: aCssValue	self propertyAt: 'clear' put: aCssValue !

clip: aCssValue	self propertyAt: 'clip' put: aCssValue !

color: aCssColor	"Sets the color of text. CSS1"	self propertyAt: 'color' put: aCssColor!

content: aCssValue	self propertyAt: 'content' put: aCssValue !

counterIncrement: aCssValue	self propertyAt: 'counter-increment' put: aCssValue !

counterReset: aCssValue	self propertyAt: 'counter-reset' put: aCssValue !

cssContentOn: aStream	aStream nextPut: ${.	aStream newLine.	declarations		do: [ :declaration | 			aStream tab.			declaration cssContentOn: aStream.			aStream newLine ].	aStream nextPut: $}!

cursor: aCssValue	self propertyAt: 'cursor' put:  aCssValue !

direction: aCssValue	self propertyAt: 'direction' put: aCssValue !

display: aCssValue	self propertyAt: 'display' put: aCssValue !

emptyCells: aCssValue	self propertyAt: 'empty-cells' put: aCssValue !

float: aCssValue	self propertyAt: 'float' put: aCssValue !

font: aCssValue	self propertyAt: 'font' put: aCssValue !

fontFamily: aCssValue	self propertyAt: 'font-family' put: aCssValue !

fontKerning: aCssValue	self propertyAt: 'font-kerning' put: aCssValue !

fontSize: aCssValue	self propertyAt: 'font-size' put: aCssValue !

fontSizeAdjust: aNumber 		^self propertyAt: 'font-size-adjust' put: aNumber  !

fontStretch: aCssValue	self propertyAt: 'font-stretch' put: aCssValue !

fontStyle: aCssValue	self propertyAt: 'font-style' put: aCssValue !

fontSynthesis: aCssValue		self propertyAt: 'font-synthesis' put: aCssValue !

fontVariant: aCssValue	self propertyAt: 'font-variant' put: aCssValue !

fontVariantCaps: aCssValue	self propertyAt: 'font-variant-caps' put: aCssValue !

fontVariantLigatures: aCssValue	self propertyAt: 'font-variant-ligatures' put: aCssValue !

fontVariantNumeric: aCssValue	self propertyAt: 'font-variant-numeric' put: aCssValue !

fontVariantPosition: aCssValue	self propertyAt: 'font-variant-position' put: aCssValue !

fontWeight: aCssValue	self propertyAt: 'font-weight' put: aCssValue !

height: aWidth	self propertyAt: 'height' put: aWidth !

initialize	super initialize.	declarations := OrderedCollection new.	rulePrecedencePolicy := CssNormalRulePrecedencePolicy new!

left: aCssValue	self propertyAt: 'left' put: aCssValue !

letterSpacing: aCssValue	self propertyAt: 'letter-spacing' put: aCssValue !

lineHeight: aCssValue	self propertyAt: 'line-height' put: aCssValue !

listStyle: aCssValue	self propertyAt: 'list-style' put: aCssValue !

listStyleImage: aCssValue	self propertyAt: 'list-style-image' put: aCssValue !

listStylePosition: aCssValue	self propertyAt: 'list-style-position' put: aCssValue !

listStyleType: aCssValue	self propertyAt: 'list-style-type' put: aCssValue !

margin: aMarginSpec	"The margin shorthand property sets all the margin properties in one declaration. 	This property can have from one to four values. CSS1"		self propertyAt: 'margin' put: aMarginSpec !

marginBottom: aMarginWidth	self propertyAt: 'margin-bottom' put: aMarginWidth !

marginLeft: aMarginWidth	self propertyAt: 'margin-left' put: aMarginWidth !

marginRight: aMarginWidth	self propertyAt: 'margin-right' put: aMarginWidth !

marginTop: aMarginWidth	self propertyAt: 'margin-top' put: aMarginWidth !

maxHeight: aWidth	self propertyAt: 'max-height' put: aWidth !

maxWidth: aWidth	self propertyAt: 'max-width' put: aWidth !

minHeight: aWidth	self propertyAt: 'min-height' put: aWidth !

minWidth: aWidth	self propertyAt: 'min-width' put: aWidth !

opacity: alphaValue	"Opacity can be tought of as a postprocessing operation.	Conceptually, after the element (including its descendants) is rendered into an RGBA offscren image, the opacity	setting specifies how to blend the offscreen rendering into the current composite rendering. CSS3"	self propertyAt: 'opacity' put: alphaValue !

outline: aCssValue	self propertyAt: 'outline' put:  aCssValue !

outlineColor: aCssValue	self propertyAt: 'outline-color' put:  aCssValue !

outlineStyle: aCssValue	self propertyAt: 'outline-style' put:  aCssValue !

outlineWidth: aCssValue	self propertyAt: 'outline-width' put:  aCssValue !

overflow: aCssValue	self propertyAt: 'overflow' put: aCssValue !

overflowX: aCssValue	self propertyAt: 'overflow-x' put: aCssValue !

overflowY: aCssValue	self propertyAt: 'overflow-y' put: aCssValue !

padding: aPaddingSpec		self propertyAt: 'padding' put: aPaddingSpec !

paddingBottom: aPaddingWidth	self propertyAt: 'padding-bottom' put: aPaddingWidth !

paddingLeft: aPaddingWidth	self propertyAt: 'padding-left' put: aPaddingWidth !

paddingRight: aPaddingWidth	self propertyAt: 'padding-right' put: aPaddingWidth  !

paddingTop: aPaddingWidth	self propertyAt: 'padding-top' put: aPaddingWidth !

position: aCssValue	self propertyAt: 'position' put: aCssValue !

printInlinedOn: aStream	declarations do: [ :declaration | declaration printOn: aStream ]!

propertyAt: aPropertyName put: aNamedConstantOrValue	declarations add: (rulePrecedencePolicy applyTo: (CssDeclaration property: aPropertyName value: (self class lookupValue: aNamedConstantOrValue)))!

quotes: aCssValue	self propertyAt: 'quotes' put: aCssValue !

resize:  aCssValue	self propertyAt: 'resize' put: aCssValue !

right: aCssValue	self propertyAt: 'right' put: aCssValue !

src: aCssValue	self propertyAt: 'src' put: aCssValue !

tableLayout: aCssValue	self propertyAt: 'table-layout' put: aCssValue !

textAlign: aCssValue	self propertyAt: 'text-align' put: aCssValue !

textDecoration: aCssValue	self propertyAt: 'text-decoration' put: aCssValue !

textDecorationColor:  aCssValue	self propertyAt: 'text-decoration-color' put: aCssValue !

textDecorationLine: aCssValue	self propertyAt: 'text-decoration-line' put: aCssValue !

textDecorationStyle: aCssValue	self propertyAt: 'text-decoration-style' put: aCssValue !

textEmphasis: aCssValue	self propertyAt: 'text-emphasis' put: aCssValue !

textEmphasisColor:  aCssValue	self propertyAt: 'text-emphasis-color' put: aCssValue !

textEmphasisPosition: aCssValue	self propertyAt: 'text-emphasis-position' put: aCssValue !

textEmphasisStyle: aCssValue	self propertyAt: 'text-emphasis-style' put: aCssValue !

textIndent: aCssValue	self propertyAt: 'text-indent' put: aCssValue !

textOverflow: aCssValue	self propertyAt: 'text-overflow' put: aCssValue !

textShadow: aCssValue	self propertyAt: 'text-shadow' put: aCssValue !

textTransform: aCssValue	self propertyAt: 'text-transform' put: aCssValue !

textUnderlinePosition: aCssValue	self propertyAt: 'text-underline-position' put: aCssValue !

top: aCssValue	self propertyAt: 'top' put: aCssValue !

transform: aCssValue 	self propertyAt: 'transform' put: aCssValue !

unicodeBidi: aCssValue	self propertyAt: 'unicode-bidi' put: aCssValue !

verticalAlign: aCssValue	self propertyAt: 'vertical-align' put: aCssValue !

visibility: aCssValue	self propertyAt: 'visibility' put: aCssValue !

whiteSpace: aCssValue	self propertyAt: 'white-space' put: aCssValue !

width: aWidth	self propertyAt: 'width' put: aWidth !

wordSpacing: aCssValue	self propertyAt: 'word-spacing' put: aCssValue !

wordWrap: aCssValue 	self propertyAt: 'word-wrap' put: aCssValue !

zIndex: aCssValue	self propertyAt: 'z-index' put: aCssValue ! !
!CssDeclarationBlock categoriesFor: #animation:!keyframes properties!public! !
!CssDeclarationBlock categoriesFor: #animationDelay:!keyframes properties!public! !
!CssDeclarationBlock categoriesFor: #animationDirection:!keyframes properties!public! !
!CssDeclarationBlock categoriesFor: #animationDuration:!keyframes properties!public! !
!CssDeclarationBlock categoriesFor: #animationFillMode:!keyframes properties!public! !
!CssDeclarationBlock categoriesFor: #animationIterationCount:!keyframes properties!public! !
!CssDeclarationBlock categoriesFor: #animationName:!keyframes properties!public! !
!CssDeclarationBlock categoriesFor: #animationPlayState:!keyframes properties!public! !
!CssDeclarationBlock categoriesFor: #animationTimingFunction:!keyframes properties!public! !
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
!CssDeclarationBlock categoriesFor: #transform:!public!visual formatting properties! !
!CssDeclarationBlock categoriesFor: #unicodeBidi:!public!visual formatting properties! !
!CssDeclarationBlock categoriesFor: #verticalAlign:!box properties!public! !
!CssDeclarationBlock categoriesFor: #visibility:!public!visual effects properties! !
!CssDeclarationBlock categoriesFor: #whiteSpace:!public!text properties! !
!CssDeclarationBlock categoriesFor: #width:!box properties!public! !
!CssDeclarationBlock categoriesFor: #wordSpacing:!public!text properties! !
!CssDeclarationBlock categoriesFor: #wordWrap:!public!text properties! !
!CssDeclarationBlock categoriesFor: #zIndex:!public!visual formatting properties! !

