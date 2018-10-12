"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #BootstrapTypeaheadCommand
	instanceVariableNames: 'scriptCommand searchResults'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapTypeaheadCommand guid: (GUID fromString: '{967d0756-2cef-49ee-a1c4-0c221b0d8893}')!
BootstrapTypeaheadCommand comment: 'I''m a component command enabling Bootstrap Typeahead using the programmatic-API'!
!BootstrapTypeaheadCommand categoriesForClass!Willow-Bootstrap-Frontend! !
!BootstrapTypeaheadCommand methodsFor!

afterSelectFunctionEvaluate: aSelectionCallback on: aCanvas	| selectedIndexHolder ajax |	selectedIndexHolder := WAValueHolder new.	ajax := aCanvas jQuery ajax.	ajax		callback: [ :activeItemIndex | selectedIndexHolder contents: activeItemIndex greaseInteger ] value: ((aCanvas jQuery alias: 'activeItem') access: self indexProperty);		script: [ :script | aSelectionCallback value: (searchResults at: selectedIndexHolder contents) ].	^ ajax asFunction: #('activeItem')!

applyTo: aComponent on: aCanvas	^ scriptCommand applyTo: aComponent on: aCanvas!

evaluate: aSearchAction with: searchTerm using: aLabelsBlock	| searchResultAsJSON |	searchResults := aSearchAction value: searchTerm.	searchResultAsJSON := OrderedCollection new.	searchResults		doWithIndex: [ :object :index | 			searchResultAsJSON				add:					(GRSmallDictionary new						at: 'name' put: (aLabelsBlock value: object);						at: self indexProperty put: index;						yourself) ].	^ searchResultAsJSON asArray!

indexProperty	^ 'index'!

initializeSearchingWith: aSearchAction labeledBy: aLabelsBlock withSelectionDo: aSelectionCallback configuredBy: aConfigurationBlock	searchResults := #().	scriptCommand := ComponentScriptCommand		toExecute: [ :canvas | 			| typeahead |			typeahead := canvas jQuery this bootstrapTypeahead.			typeahead				source: (self searchWith: aSearchAction labels: aLabelsBlock on: canvas);				updater: self updaterFunction;				afterSelect: (self afterSelectFunctionEvaluate: aSelectionCallback on: canvas).			aConfigurationBlock cull: typeahead cull: canvas.			typeahead ]!

responseFunctionName	^ 'response'!

searchTermVariable	^ 'searchTerm'!

searchWith: aSearchAction labels: aLabelsBlock on: aCanvas	| searchTermHolder |	searchTermHolder := WAValueHolder new.		^ (aCanvas jQuery getJson		text: [ :stream | stream json: (self evaluate: aSearchAction with: searchTermHolder contents using: aLabelsBlock) ];		callback: [ :searchTerm | searchTermHolder contents: searchTerm ] value: (aCanvas jQuery alias: self searchTermVariable);		onSuccess: ((aCanvas javascript call: self responseFunctionName with: (aCanvas jQuery alias: 'data')) asFunction: #('data' 'status'));		dataType: 'jsonp')		asFunction: {self searchTermVariable. self responseFunctionName}!

updaterFunction	^ JSFunction new		arguments: #('item');		add: (JSStream this alias: 'item');		return: true;		yourself! !
!BootstrapTypeaheadCommand categoriesFor: #afterSelectFunctionEvaluate:on:!private! !
!BootstrapTypeaheadCommand categoriesFor: #applyTo:on:!processing!public! !
!BootstrapTypeaheadCommand categoriesFor: #evaluate:with:using:!private! !
!BootstrapTypeaheadCommand categoriesFor: #indexProperty!private! !
!BootstrapTypeaheadCommand categoriesFor: #initializeSearchingWith:labeledBy:withSelectionDo:configuredBy:!initialization!public! !
!BootstrapTypeaheadCommand categoriesFor: #responseFunctionName!private! !
!BootstrapTypeaheadCommand categoriesFor: #searchTermVariable!private! !
!BootstrapTypeaheadCommand categoriesFor: #searchWith:labels:on:!private! !
!BootstrapTypeaheadCommand categoriesFor: #updaterFunction!private! !

!BootstrapTypeaheadCommand class methodsFor!

defaultConfigurationBlock	^ [ :typeahead |  ]!

defaultLabelBlock	^ [ :object | object greaseString ]!

searchingWith: aSearchAction labeledBy: aLabelsBlock withSelectionDo: aSelectionCallback	^ self		searchingWith: aSearchAction		labeledBy: aLabelsBlock		withSelectionDo: aSelectionCallback		configuredBy: self defaultConfigurationBlock!

searchingWith: aSearchAction labeledBy: aLabelsBlock withSelectionDo: aSelectionCallback configuredBy: aConfigurationBlock	^ self new		initializeSearchingWith: aSearchAction		labeledBy: aLabelsBlock		withSelectionDo: aSelectionCallback		configuredBy: aConfigurationBlock!

searchingWith: aSearchAction withSelectionDo: aSelectionCallback	^ self searchingWith: aSearchAction labeledBy: self defaultLabelBlock withSelectionDo: aSelectionCallback!

searchingWith: aSearchAction withSelectionDo: aSelectionCallback configuredBy: aConfigurationBlock	^ self		searchingWith: aSearchAction		labeledBy: self defaultLabelBlock		withSelectionDo: aSelectionCallback		configuredBy: aConfigurationBlock! !
!BootstrapTypeaheadCommand class categoriesFor: #defaultConfigurationBlock!private! !
!BootstrapTypeaheadCommand class categoriesFor: #defaultLabelBlock!private! !
!BootstrapTypeaheadCommand class categoriesFor: #searchingWith:labeledBy:withSelectionDo:!Instance Creation!public! !
!BootstrapTypeaheadCommand class categoriesFor: #searchingWith:labeledBy:withSelectionDo:configuredBy:!Instance Creation!public! !
!BootstrapTypeaheadCommand class categoriesFor: #searchingWith:withSelectionDo:!Instance Creation!public! !
!BootstrapTypeaheadCommand class categoriesFor: #searchingWith:withSelectionDo:configuredBy:!Instance Creation!public! !

