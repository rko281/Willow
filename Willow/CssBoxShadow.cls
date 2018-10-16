"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssBoxShadow
	instanceVariableNames: 'components'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssBoxShadow guid: (GUID fromString: '{861171a8-16ed-46fd-a794-a70834bbf450}')!
CssBoxShadow comment: 'I represent a box shadow propery value. See http://www.w3.org/TR/css3-background/#box-shadow.'!
!CssBoxShadow categoriesForClass!RenoirSt-Common! !
!CssBoxShadow methodsFor!

, aCssBoxShadow	^CssObjectList with: self with: aCssBoxShadow !

beInset	components := components asOrderedCollection		addFirst: (self class lookupValue: #inset);		asArray!

cssContentOn: aStream	components cssContentOn: aStream!

initializeWithAll: anArray	components := anArray! !
!CssBoxShadow categoriesFor: #,!Concatenating!public! !
!CssBoxShadow categoriesFor: #beInset!Configuring!public! !
!CssBoxShadow categoriesFor: #cssContentOn:!Printing!public! !
!CssBoxShadow categoriesFor: #initializeWithAll:!initialize/release!public! !

!CssBoxShadow class methodsFor!

horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength	^ self		withAll:			{horizontalOffsetLength.			verticalOffsetLength}!

horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength blurRadius: blurRadiusLength	^ self		withAll:			{horizontalOffsetLength.			verticalOffsetLength.			blurRadiusLength}!

horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength blurRadius: blurRadiusLength color: colorOrNamedConstant	^ self		withAll:			{horizontalOffsetLength.			verticalOffsetLength.			blurRadiusLength.			(self lookupColor: colorOrNamedConstant)}!

horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength blurRadius: blurRadiusLength spreadDistance: spreadDistanceLength	^ self		withAll:			{horizontalOffsetLength.			verticalOffsetLength.			blurRadiusLength.			spreadDistanceLength}!

horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength blurRadius: blurRadiusLength spreadDistance: spreadDistanceLength color: colorOrNamedConstant	^ self		withAll:			{horizontalOffsetLength.			verticalOffsetLength.			blurRadiusLength.			spreadDistanceLength.			(self lookupColor: colorOrNamedConstant)}!

horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength color: colorOrNamedConstant	^ self		withAll:			{horizontalOffsetLength.			verticalOffsetLength.			(self lookupColor: colorOrNamedConstant)}!

withAll: anArray	^self new initializeWithAll: anArray ! !
!CssBoxShadow class categoriesFor: #horizontalOffset:verticalOffset:!Instance Creation!public! !
!CssBoxShadow class categoriesFor: #horizontalOffset:verticalOffset:blurRadius:!Instance Creation!public! !
!CssBoxShadow class categoriesFor: #horizontalOffset:verticalOffset:blurRadius:color:!Instance Creation!public! !
!CssBoxShadow class categoriesFor: #horizontalOffset:verticalOffset:blurRadius:spreadDistance:!Instance Creation!public! !
!CssBoxShadow class categoriesFor: #horizontalOffset:verticalOffset:blurRadius:spreadDistance:color:!Instance Creation!public! !
!CssBoxShadow class categoriesFor: #horizontalOffset:verticalOffset:color:!Instance Creation!public! !
!CssBoxShadow class categoriesFor: #withAll:!private! !

