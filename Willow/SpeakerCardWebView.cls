"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpeakerCardWebView
	instanceVariableNames: 'panel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpeakerCardWebView guid: (GUID fromString: '{11429024-6cc3-441b-a053-c8d164b75f17}')!
SpeakerCardWebView comment: 'I''m an speaker card'!
!SpeakerCardWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!SpeakerCardWebView methodsFor!

contactInfoByEMail: mailUser andGithub: githubUser	^ [ :html | 	html		small: [ html definitionList				with: [ html						definitionTerm: 'Work E-Mail';						definitionData: ( '<1s>@mercapsoftware.com' expandMacrosWith: mailUser );						definitionTerm: 'Personal E-Mail';						definitionData: ( '<1s>@gmail.com' expandMacrosWith: mailUser );						definitionTerm: 'GitHub Profile';						definitionData: [ html anchor								url: ( 'https://www.github.com/<1s>' expandMacrosWith: githubUser );								with: githubUser							]					]				applying: [ :list | list addClass bootstrap3 definitionListHorizontal ]			]	]!

headingShowing: aFullName and: academicDegree withAvatarLocatedAt: avatarLocation	^ HeadingWebView		displaying: [ :html | 			html				render:					( ImageWebView						locatedAt: avatarLocation						applying: [ :avatar | 							avatar addClass bootstrap3 pullRight + avatar addClass bootstrap3 imageCircle								+ ( avatar setStyleTo: [ :style | style width: 48 px ] )							] );				render: aFullName;				break;				small: ( '<1s> at FCEN - UBA' expandMacrosWith: academicDegree );				break;				small: [ html						render: 'R&D at';						space.					html anchor						url: 'http://www.mercapsoftware.com';						with: 'Mercap Software'					]			]		withLevel: 4!

initializeFor: aFullName avatarLocatedAt: avatarLocation academicDegree: academicDegree email: mailUser githubUser: githubUser	panel := self componentSupplier panelBuilder		wrapping: [ :html | 			html				render: ( self headingShowing: aFullName and: academicDegree withAvatarLocatedAt: avatarLocation );				render: ( self contactInfoByEMail: mailUser andGithub: githubUser )			];		buildApplying: [ :card | card addClass bootstrap3 panelDefault ]!

renderContentOn: html	html render: panel! !
!SpeakerCardWebView categoriesFor: #contactInfoByEMail:andGithub:!private! !
!SpeakerCardWebView categoriesFor: #headingShowing:and:withAvatarLocatedAt:!private! !
!SpeakerCardWebView categoriesFor: #initializeFor:avatarLocatedAt:academicDegree:email:githubUser:!initialization!public! !
!SpeakerCardWebView categoriesFor: #renderContentOn:!public!rendering! !

!SpeakerCardWebView class methodsFor!

for: aFullName avatarLocatedAt: avatarLocation academicDegree: academicDegree email: mailUser githubUser: githubUser	^ self new		initializeFor: aFullName		avatarLocatedAt: avatarLocation		academicDegree: academicDegree		email: mailUser		githubUser: githubUser! !
!SpeakerCardWebView class categoriesFor: #for:avatarLocatedAt:academicDegree:email:githubUser:!accessing!public! !

