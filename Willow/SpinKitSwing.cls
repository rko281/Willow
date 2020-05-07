"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpinKitSwing
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitSwing guid: (GUID fromString: '{96b3cd8a-fb53-4d78-bd3d-0f81f9c63b80}')!
SpinKitSwing comment: 'SpinKit animation'!
!SpinKitSwing categoriesForClass!Willow-SpinKit! !
!SpinKitSwing methodsFor!

renderContentOn: aCanvas	aCanvas div		with: [ 1 to: 2 do: [ :index | aCanvas div apply: [ :div | div addClass spinKit swingDot ] ] ]		applying: [ :div | div addClass spinKit swing ]! !
!SpinKitSwing categoriesFor: #renderContentOn:!public!rendering! !

