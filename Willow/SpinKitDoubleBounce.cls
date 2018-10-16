"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpinKitDoubleBounce
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitDoubleBounce guid: (GUID fromString: '{e3c648fb-b15c-4fa6-9fdd-279abdd8d423}')!
SpinKitDoubleBounce comment: 'I''m an SpinKit animation'!
!SpinKitDoubleBounce categoriesForClass!Willow-SpinKit! !
!SpinKitDoubleBounce methodsFor!

renderContentOn: aCanvas	aCanvas div		class: SpinKitCssStyles doubleBounce;		with: [ 1 to: 2 do: [ :index | 				aCanvas div					class: SpinKitCssStyles child;					class: (SpinKitCssStyles doubleBounce: index) ] ]! !
!SpinKitDoubleBounce categoriesFor: #renderContentOn:!public!rendering! !

