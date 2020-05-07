"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpinKitCircleFade
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitCircleFade guid: (GUID fromString: '{26b8bbe7-8d55-4fcf-8fa7-247039981763}')!
SpinKitCircleFade comment: 'I''m an SpinKit animation'!
!SpinKitCircleFade categoriesForClass!Willow-SpinKit! !
!SpinKitCircleFade methodsFor!

renderContentOn: aCanvas	aCanvas div		with: [ 1 to: 12 do: [ :index | aCanvas div apply: [ :div | div addClass spinKit circleFadeDot ] ] ]		applying: [ :div | div addClass spinKit circleFade ]! !
!SpinKitCircleFade categoriesFor: #renderContentOn:!public!rendering! !

