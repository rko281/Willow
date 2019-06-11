"Filed out from Dolphin Smalltalk 7"!

BootstrapPlugin subclass: #BootstrapSelect
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSelect guid: (GUID fromString: '{2a46fc3e-3cb2-4948-a587-e9d50655ef12}')!
BootstrapSelect comment: 'I''m a JQueryPlugin implementing  the bootstrap-select programmatic API'!
!BootstrapSelect categoriesForClass!Willow-Bootstrap-Select! !
!BootstrapSelect methodsFor!

actionsBox: aBoolean	"When set to true, adds two buttons to the top of the dropdown menu (Select All & Deselect All)"	self optionAt: 'actionsBox' put: aBoolean!

container: aStringOrFalse	"When set to a string, appends the select to a specific element or selector, e.g., container: 'body' | '.main-body'"	self optionAt: #container put: aStringOrFalse!

countSelectedText: aStringOrFunction	"Sets the format for the text displayed when selectedTextFormat is count or count > #. 	{0} is the selected amount. {1} is total available for selection.	When set to a function, the first parameter is the number of selected options, and the second is the total number of options. The function must return a string."	self optionAt: 'countSelectedText' put: aStringOrFunction!

deselectAll	functionName := 'deselectAll'!

deselectAllText: aString	"The text on the button that deselects all options when actionsBox is enabled."	self optionAt: 'deselectAllText' put: aString!

destroy	functionName := 'destroy'!

dropdownAlignRight: aBooleanOrAutoString	"Align the menu to the right instead of the left. If set to 'auto', the menu will automatically align right if there isn't room for the menu's full width when aligned to the left."	self optionAt: 'dropdownAlignRight' put: (self lookupCssValue: aBooleanOrAutoString)!

dropupAuto: aBoolean	"Checks to see which has more room, above or below. If the dropup has enough room to fully open normally, but there is more room above, 	the dropup still opens normally. Otherwise, it becomes a dropup. If dropupAuto is set to false, dropups must be called manually."	self optionAt: 'dropupAuto' put: aBoolean!

header: aString	"Adds a header to the top of the menu; includes a close button by default"	self optionAt: #header put: aString!

hide	functionName := 'hide'!

hideDisabled: aBoolean	"Removes disabled options and optgroups from the menu data-hide-disabled: true"	self optionAt: 'hideDisabled' put: aBoolean!

iconBase: aString	"Set the base to use a different icon font instead of Glyphicons. If changing iconBase, you might also want to change tickIcon, in case the new icon font uses a different naming scheme.	Default: 'glyphicon' "	self optionAt: 'iconBase' put: aString!

liveSearch: boolean	"When set to true, adds a search box to the top of the selectpicker dropdown."	self optionAt: 'liveSearch' put: boolean!

liveSearchNormalize: boolean	"Setting liveSearchNormalize to true allows for accent-insensitive searching."	self optionAt: 'liveSearchNormalize' put: boolean!

liveSearchPlaceholder: string	"When set to a string, a placeholder attribute equal to the string will be added to the liveSearch input."	self optionAt: 'liveSearchPlaceholder' put: string!

liveSearchStyle: string	"When set to 'contains', searching will reveal options that contain the searched text. For example, searching for pl with return both Apple, Plum, and Plantain. 	When set to 'startsWith', searching for pl will return only Plum and Plantain."	self optionAt: 'liveSearchStyle' put: string!

maxOptions: integerOrFalse	"When set to an integer and in a multi-select, the number of selected options cannot exceed the given value.	This option can also exist as a data-attribute for an <optgroup>, in which case it only applies to that <optgroup>."	self optionAt: 'maxOptions' put: integerOrFalse!

maxOptionsText: stringOrArrayOrFunction	"The text that is displayed when maxOptions is enabled and the maximum number of options for the given scenario have been selected.	If a function is used, it must return an array. 		array[0] is the text used when maxOptions is applied to the entire select element. 		array[1] is the text used when maxOptions is used on an optgroup. 		If a string is used, the same text is used for both the element and the optgroup."	self optionAt: 'maxOptionsText' put: stringOrArrayOrFunction!

method	^ 'selectpicker'!

mobile	functionName := 'mobile'!

mobile: boolean	"When set to true, enables the device's native menu for select menus."	self optionAt: #mobile put: boolean!

multipleSeparator: string	"Set the character displayed in the button that separates selected options.	Default: ', ' "	self optionAt: 'multipleSeparator' put: string!

noneSelectedText: string	"The text that is displayed when a multiple select has no selected options."	self optionAt: 'noneSelectedText' put: string!

onChanged: aFunction	self call: 'on' with: (self lookupValue: #changedSelect) with: aFunction!

onHidden: aFunction	self call: 'on' with: (self lookupValue: #hiddenSelect) with: aFunction!

onHide: aFunction	self call: 'on' with: (self lookupValue: #hideSelect) with: aFunction!

onLoaded: aFunction	self call: 'on' with: (self lookupValue: #loadedSelect) with: aFunction!

onRefreshed: aFunction	self call: 'on' with: (self lookupValue: #refreshedSelect) with: aFunction!

onRendered: aFunction	self call: 'on' with: (self lookupValue: #renderedSelect) with: aFunction!

onShow: aFunction	self call: 'on' with: (self lookupValue: #showSelect) with: aFunction!

onShown: aFunction	self call: 'on' with: (self lookupValue: #shownSelect) with: aFunction!

refresh	functionName := 'refresh'!

render	functionName := 'render'!

selectAll	functionName := 'selectAll'!

selectAllText: string	"The text on the button that selects all options when actionsBox is enabled."	self optionAt: 'selectAllText' put: string!

selectedTextFormat: string	"Specifies how the selection is displayed with a multiple select.		'values' displays a list of the selected options (separated by multipleSeparator. 		'static' simply displays the select element's title. 		'count' displays the total number of selected options. 		'count > x' behaves like 'values' until the number of selected options is greater than x; after that, it behaves like 'count'. "	self optionAt: 'selectedTextFormat' put: string!

selectedTextFormatCountAfter: aNumber	"'count > x' behaves like 'values' until the number of selected options is greater than x; after that, it behaves like 'count'. "	self selectedTextFormat: ('count > <1p>' expandMacrosWith: aNumber)!

selectOnTab: boolean	"When set to true, treats the tab character like the enter or space characters within the selectpicker dropdown."	self optionAt: 'selectOnTab' put: boolean!

setStyle	functionName := 'setStyle'!

show	functionName := 'show'!

showContent: boolean	"When set to true, display custom HTML associated with selected option(s) in the button. When set to false, the option value will be displayed instead."	self optionAt: 'showContent' put: boolean!

showIcon: boolean	"When set to true, display icon(s) associated with selected option(s) in the button."	self optionAt: 'showIcon' put: boolean!

showSubtext: boolean	"When set to true, display subtext associated with a selected option in the button."	self optionAt: 'showSubtext' put: boolean!

showTick: boolean	"Show checkmark on selected option (for items without multiple attribute)."	self optionAt: 'showTick' put: boolean!

size: autoOrIntegerOrFalse	"When set to 'auto', the menu always opens up to show as many items as the window will allow without being cut off.	 When set to an integer, the menu will show the given number of items, even if the dropdown is cut off.	 When set to false, the menu will always show all items."	self optionAt: 'size' put: autoOrIntegerOrFalse!

style: string	"When set to a string, add the value to the button's style."	self optionAt: #style put: string!

tickIcon: string	"Set which icon to use to display as the tick next to selected options.	Default: 'glyphicon-ok' "	self optionAt: 'tickIcon' put: string!

title: string	"The default title for the selectpicker."	self optionAt: #title put: string!

toggle	functionName := 'toggle'!

width: autoOrFitOrCssLengthOrFalse	"When set to auto, the width of the selectpicker is automatically adjusted to accommodate the widest option.	 When set to a css-length, the width of the selectpicker is forced inline to the given value.	 When set to false, all width information is removed."	| optionValue |	optionValue := autoOrFitOrCssLengthOrFalse == false		then: [ false ]		otherwise: [ autoOrFitOrCssLengthOrFalse greaseString ].	self optionAt: #width put: optionValue!

windowPadding: integerOrArray	"This is useful in cases where the window has areas that the dropdown menu should not cover - for instance a fixed header. 	When set to an integer, the same padding will be added to all sides. 	Alternatively, an array of integers can be used in the format [top, right, bottom, left]."	self optionAt: 'windowPadding' put: integerOrArray! !
!BootstrapSelect categoriesFor: #actionsBox:!Options!public! !
!BootstrapSelect categoriesFor: #container:!Options!public! !
!BootstrapSelect categoriesFor: #countSelectedText:!Options!public! !
!BootstrapSelect categoriesFor: #deselectAll!Methods!public! !
!BootstrapSelect categoriesFor: #deselectAllText:!Options!public! !
!BootstrapSelect categoriesFor: #destroy!Methods!public! !
!BootstrapSelect categoriesFor: #dropdownAlignRight:!Options!public! !
!BootstrapSelect categoriesFor: #dropupAuto:!Options!public! !
!BootstrapSelect categoriesFor: #header:!Options!public! !
!BootstrapSelect categoriesFor: #hide!Methods!public! !
!BootstrapSelect categoriesFor: #hideDisabled:!Options!public! !
!BootstrapSelect categoriesFor: #iconBase:!Options!public! !
!BootstrapSelect categoriesFor: #liveSearch:!Options!public! !
!BootstrapSelect categoriesFor: #liveSearchNormalize:!Options!public! !
!BootstrapSelect categoriesFor: #liveSearchPlaceholder:!Options!public! !
!BootstrapSelect categoriesFor: #liveSearchStyle:!Options!public! !
!BootstrapSelect categoriesFor: #maxOptions:!Options!public! !
!BootstrapSelect categoriesFor: #maxOptionsText:!Options!public! !
!BootstrapSelect categoriesFor: #method!private! !
!BootstrapSelect categoriesFor: #mobile!Methods!public! !
!BootstrapSelect categoriesFor: #mobile:!Options!public! !
!BootstrapSelect categoriesFor: #multipleSeparator:!Options!public! !
!BootstrapSelect categoriesFor: #noneSelectedText:!Options!public! !
!BootstrapSelect categoriesFor: #onChanged:!Events!public! !
!BootstrapSelect categoriesFor: #onHidden:!Events!public! !
!BootstrapSelect categoriesFor: #onHide:!Events!public! !
!BootstrapSelect categoriesFor: #onLoaded:!Events!public! !
!BootstrapSelect categoriesFor: #onRefreshed:!Events!public! !
!BootstrapSelect categoriesFor: #onRendered:!Events!public! !
!BootstrapSelect categoriesFor: #onShow:!Events!public! !
!BootstrapSelect categoriesFor: #onShown:!Events!public! !
!BootstrapSelect categoriesFor: #refresh!Methods!public! !
!BootstrapSelect categoriesFor: #render!Methods!public! !
!BootstrapSelect categoriesFor: #selectAll!Methods!public! !
!BootstrapSelect categoriesFor: #selectAllText:!Options!public! !
!BootstrapSelect categoriesFor: #selectedTextFormat:!Options!public! !
!BootstrapSelect categoriesFor: #selectedTextFormatCountAfter:!Options!public! !
!BootstrapSelect categoriesFor: #selectOnTab:!Options!public! !
!BootstrapSelect categoriesFor: #setStyle!Methods!public! !
!BootstrapSelect categoriesFor: #show!Methods!public! !
!BootstrapSelect categoriesFor: #showContent:!Options!public! !
!BootstrapSelect categoriesFor: #showIcon:!Options!public! !
!BootstrapSelect categoriesFor: #showSubtext:!Options!public! !
!BootstrapSelect categoriesFor: #showTick:!Options!public! !
!BootstrapSelect categoriesFor: #size:!Options!public! !
!BootstrapSelect categoriesFor: #style:!Options!public! !
!BootstrapSelect categoriesFor: #tickIcon:!Options!public! !
!BootstrapSelect categoriesFor: #title:!Options!public! !
!BootstrapSelect categoriesFor: #toggle!Methods!public! !
!BootstrapSelect categoriesFor: #width:!Options!public! !
!BootstrapSelect categoriesFor: #windowPadding:!Options!public! !

