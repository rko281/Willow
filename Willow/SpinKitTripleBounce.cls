"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpinKitTripleBounce
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitTripleBounce guid: (GUID fromString: '{c88e8cdd-de5f-40a4-9a9e-b0d6e626217b}')!
SpinKitTripleBounce comment: 'SpinKit animation'!
!SpinKitTripleBounce categoriesForClass!Willow-SpinKit! !
!SpinKitTripleBounce methodsFor!

renderContentOn: aCanvas	aCanvas div		class: SpinKitCssStyles threeBounce;		with: [ 1 to: 3 do: [ :index | 				aCanvas div					class: SpinKitCssStyles child;					class: (SpinKitCssStyles bounce: index) ] ]! !
!SpinKitTripleBounce categoriesFor: #renderContentOn:!public!rendering! !

