"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpinKitCircle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitCircle guid: (GUID fromString: '{f8c470ce-4bd7-43d2-a1a9-e6de445bdddf}')!
SpinKitCircle comment: 'SpinKit animation'!
!SpinKitCircle categoriesForClass!Willow-SpinKit! !
!SpinKitCircle methodsFor!

renderContentOn: aCanvas	aCanvas div		with: [ 1 to: 12 do: [ :index | aCanvas div apply: [ :div | div addClass spinKit circleDot ] ] ]		applying: [ :div | div addClass spinKit circle ]! !
!SpinKitCircle categoriesFor: #renderContentOn:!public!rendering! !

