"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpinKitChase
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitChase guid: (GUID fromString: '{4dd3246b-6cee-42f2-82ea-29c3b1b955b1}')!
SpinKitChase comment: 'SpinKit animation'!
!SpinKitChase categoriesForClass!Willow-SpinKit! !
!SpinKitChase methodsFor!

renderContentOn: aCanvas	aCanvas div		with: [ 1 to: 6 do: [ :index | aCanvas div apply: [ :div | div addClass spinKit chaseDot ] ] ]		applying: [ :div | div addClass spinKit chase ]! !
!SpinKitChase categoriesFor: #renderContentOn:!public!rendering! !

