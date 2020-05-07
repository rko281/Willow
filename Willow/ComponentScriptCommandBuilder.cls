"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #ComponentScriptCommandBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentScriptCommandBuilder guid: (GUID fromString: '{a18164b4-5b95-4eec-9cf4-dc393840daf4}')!
ComponentScriptCommandBuilder comment: 'I''m an scripting command builder'!
!ComponentScriptCommandBuilder categoriesForClass!Willow-Core-Frontend! !
!ComponentScriptCommandBuilder methodsFor!

js: aBlockClosure	^ ComponentScriptCommand toExecute: aBlockClosure! !
!ComponentScriptCommandBuilder categoriesFor: #js:!Building!public! !

