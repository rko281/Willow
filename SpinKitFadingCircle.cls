"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpinKitFadingCircle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitFadingCircle guid: (GUID fromString: '{62850f08-cfd6-447a-ba0e-c1efcaf49fab}')!
SpinKitFadingCircle comment: 'I''m an SpinKit animation'!
!SpinKitFadingCircle categoriesForClass!Willow-SpinKit! !
!SpinKitFadingCircle methodsFor!

renderContentOn: aCanvas	aCanvas div		class: SpinKitCssStyles fadingCircle;		with: [ 1 to: 12 do: [ :index | 				aCanvas div					class: (SpinKitCssStyles circle: index);					class: SpinKitCssStyles circle ] ]! !
!SpinKitFadingCircle categoriesFor: #renderContentOn:!public!rendering! !

