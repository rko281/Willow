﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpinKitWave
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitWave guid: (GUID fromString: '{46b5b0ea-5a56-49c7-beaf-0edd6270ee70}')!
SpinKitWave comment: 'I''n an SpinKit animation'!
!SpinKitWave categoriesForClass!Willow-SpinKit! !
!SpinKitWave methodsFor!

renderContentOn: aCanvas	aCanvas div		with: [ 1 to: 5 do: [ :index | aCanvas div apply: [ :div | div addClass spinKit waveRectangle ] ] ]		applying: [ :div | div addClass spinKit wave ]! !
!SpinKitWave categoriesFor: #renderContentOn:!public!rendering! !

