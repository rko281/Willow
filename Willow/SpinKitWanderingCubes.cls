"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpinKitWanderingCubes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitWanderingCubes guid: (GUID fromString: '{9c4cb59d-2052-409c-b58d-92475da3d87a}')!
SpinKitWanderingCubes comment: 'SpinKit animation'!
!SpinKitWanderingCubes categoriesForClass!Willow-SpinKit! !
!SpinKitWanderingCubes methodsFor!

renderContentOn: aCanvas	aCanvas div		class: SpinKitCssStyles wanderingCubes;		with: [ 1 to: 2 do: [ :index | 				aCanvas div					class: SpinKitCssStyles cube;					class: (SpinKitCssStyles cube: index) ] ]! !
!SpinKitWanderingCubes categoriesFor: #renderContentOn:!public!rendering! !

