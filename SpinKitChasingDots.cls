"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpinKitChasingDots
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitChasingDots guid: (GUID fromString: '{ba1a8298-d54d-47e8-ae34-1cd0bbd8faae}')!
SpinKitChasingDots comment: 'SpinKit animation'!
!SpinKitChasingDots categoriesForClass!Willow-SpinKit! !
!SpinKitChasingDots methodsFor!

renderContentOn: aCanvas	aCanvas div		class: SpinKitCssStyles chasingDots;		with: [ 1 to: 2 do: [ :index | 				aCanvas div					class: SpinKitCssStyles child;					class: (SpinKitCssStyles dot: index) ] ]! !
!SpinKitChasingDots categoriesFor: #renderContentOn:!public!rendering! !

