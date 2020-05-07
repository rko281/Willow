"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpinKitFold
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitFold guid: (GUID fromString: '{22c769b9-01bf-42df-9408-da49f1aa887e}')!
SpinKitFold comment: 'I represent an SpinKit animation'!
!SpinKitFold categoriesForClass!Willow-SpinKit! !
!SpinKitFold methodsFor!

renderContentOn: aCanvas	aCanvas div		with: [ 1 to: 4 do: [ :index | aCanvas div apply: [ :div | div addClass spinKit foldCube ] ] ]		applying: [ :div | div addClass spinKit fold ]! !
!SpinKitFold categoriesFor: #renderContentOn:!public!rendering! !

