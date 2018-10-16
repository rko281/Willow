﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Optional
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Optional guid: (GUID fromString: '{b0e744eb-7df3-46cc-b12a-602596f8fa6c}')!
Optional comment: 'I''m an abstract  class representing the fact that some object can be optional.  I provide protocol to be combined with other optionals.'!
!Optional categoriesForClass!Buoy-Dynamic-Binding! !
!Optional methodsFor!

= anObject

equalsTo: anObject

hash

return: aMonadycBlock

whenAllUsedIn: optionals injectInto: aDyadicBlock

whenAllUsedIn: optionals return: aMonadycBlock

with: anOptional whenAnyUsedReturn: aDyadicBlock

with: anOptional whenBothUsedReturn: aDyadicBlock

withContentDo: aMonadycBlock

withContentDo: aMonadycBlock ifUnused: aNothingBlock

withUsedOnlyIn: optionals injectInto: aDyadicBlock

withUsedOnlyIn: optionals return: aMonadycBlock
!Optional categoriesFor: #=!comparing!public! !
!Optional categoriesFor: #equalsTo:!private! !
!Optional categoriesFor: #hash!comparing!public! !
!Optional categoriesFor: #return:!combining!public! !
!Optional categoriesFor: #whenAllUsedIn:injectInto:!combining!public! !
!Optional categoriesFor: #whenAllUsedIn:return:!combining!public! !
!Optional categoriesFor: #with:whenAnyUsedReturn:!combining!public! !
!Optional categoriesFor: #with:whenBothUsedReturn:!combining!public! !
!Optional categoriesFor: #withContentDo:!accessing!public! !
!Optional categoriesFor: #withContentDo:ifUnused:!accessing!public! !
!Optional categoriesFor: #withUsedOnlyIn:injectInto:!combining!public! !
!Optional categoriesFor: #withUsedOnlyIn:return:!combining!public! !

!Optional class methodsFor!

containing: anObject

unused

unusedBecause: anExplanation

unusedBecauseAll: anExplanationCollection 

whenAllUsedIn: optionals injectInto: aDyadicBlock

whenAllUsedIn: optionals return: aMonadycBlock

withUsedOnlyIn: optionals injectInto: aDyadicBlock

withUsedOnlyIn: optionals return: aMonadycBlock
!Optional class categoriesFor: #containing:!instance creation!public! !
!Optional class categoriesFor: #unused!instance creation!public! !
!Optional class categoriesFor: #unusedBecause:!instance creation!public! !
!Optional class categoriesFor: #unusedBecauseAll:!instance creation!public! !
!Optional class categoriesFor: #whenAllUsedIn:injectInto:!instance creation!public! !
!Optional class categoriesFor: #whenAllUsedIn:return:!instance creation!public! !
!Optional class categoriesFor: #withUsedOnlyIn:injectInto:!instance creation!public! !
!Optional class categoriesFor: #withUsedOnlyIn:return:!instance creation!public! !
