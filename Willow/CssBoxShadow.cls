﻿"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssBoxShadow
	instanceVariableNames: 'components'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssBoxShadow guid: (GUID fromString: '{861171a8-16ed-46fd-a794-a70834bbf450}')!
CssBoxShadow comment: 'I represent a box shadow propery value. See http://www.w3.org/TR/css3-background/#box-shadow.'!
!CssBoxShadow categoriesForClass!RenoirSt-Common! !
!CssBoxShadow methodsFor!

, aCssBoxShadow

beInset

cssContentOn: aStream

initializeWithAll: anArray
!CssBoxShadow categoriesFor: #,!Concatenating!public! !
!CssBoxShadow categoriesFor: #beInset!Configuring!public! !
!CssBoxShadow categoriesFor: #cssContentOn:!Printing!public! !
!CssBoxShadow categoriesFor: #initializeWithAll:!initialize/release!public! !

!CssBoxShadow class methodsFor!

horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength

horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength blurRadius: blurRadiusLength

horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength blurRadius: blurRadiusLength color: colorOrNamedConstant

horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength blurRadius: blurRadiusLength spreadDistance: spreadDistanceLength

horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength blurRadius: blurRadiusLength spreadDistance: spreadDistanceLength color: colorOrNamedConstant

horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength color: colorOrNamedConstant

withAll: anArray
!CssBoxShadow class categoriesFor: #horizontalOffset:verticalOffset:!Instance Creation!public! !
!CssBoxShadow class categoriesFor: #horizontalOffset:verticalOffset:blurRadius:!Instance Creation!public! !
!CssBoxShadow class categoriesFor: #horizontalOffset:verticalOffset:blurRadius:color:!Instance Creation!public! !
!CssBoxShadow class categoriesFor: #horizontalOffset:verticalOffset:blurRadius:spreadDistance:!Instance Creation!public! !
!CssBoxShadow class categoriesFor: #horizontalOffset:verticalOffset:blurRadius:spreadDistance:color:!Instance Creation!public! !
!CssBoxShadow class categoriesFor: #horizontalOffset:verticalOffset:color:!Instance Creation!public! !
!CssBoxShadow class categoriesFor: #withAll:!private! !
