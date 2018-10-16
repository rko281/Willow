﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpeakerCardWebView
	instanceVariableNames: 'panel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpeakerCardWebView guid: (GUID fromString: '{11429024-6cc3-441b-a053-c8d164b75f17}')!
SpeakerCardWebView comment: 'I''m an speaker card'!
!SpeakerCardWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!SpeakerCardWebView methodsFor!

contactInfoByEMail: mailUser andGithub: githubUser

headingShowing: aFullName and: academicDegree withAvatarLocatedAt: avatarLocation

initializeFor: aFullName avatarLocatedAt: avatarLocation academicDegree: academicDegree email: mailUser githubUser: githubUser

renderContentOn: html
!SpeakerCardWebView categoriesFor: #contactInfoByEMail:andGithub:!private! !
!SpeakerCardWebView categoriesFor: #headingShowing:and:withAvatarLocatedAt:!private! !
!SpeakerCardWebView categoriesFor: #initializeFor:avatarLocatedAt:academicDegree:email:githubUser:!initialization!public! !
!SpeakerCardWebView categoriesFor: #renderContentOn:!public!rendering! !

!SpeakerCardWebView class methodsFor!

for: aFullName avatarLocatedAt: avatarLocation academicDegree: academicDegree email: mailUser githubUser: githubUser
!SpeakerCardWebView class categoriesFor: #for:avatarLocatedAt:academicDegree:email:githubUser:!accessing!public! !
