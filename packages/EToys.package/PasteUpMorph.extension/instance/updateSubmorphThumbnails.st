*Etoys-viewing
updateSubmorphThumbnails
	| thumbsUp heightForThumbnails maxHeightToAvoidThumbnailing maxWidthForThumbnails |
	thumbsUp := self alwaysShowThumbnail.
	heightForThumbnails := self heightForThumbnails.
	maxHeightToAvoidThumbnailing := self maxHeightToAvoidThumbnailing.
	maxWidthForThumbnails := self maximumThumbnailWidth.
	self submorphs do:
		[:aMorph | | itsThumbnail |
		thumbsUp
			ifTrue:
				[itsThumbnail := aMorph representativeNoTallerThan: maxHeightToAvoidThumbnailing norWiderThan: maxWidthForThumbnails thumbnailHeight: heightForThumbnails.
				(aMorph == itsThumbnail)
					ifFalse:
						[self replaceSubmorph: aMorph by: itsThumbnail]]
			ifFalse:
				[(aMorph isKindOf: MorphThumbnail)
					ifTrue:
						[self replaceSubmorph: aMorph by: aMorph morphRepresented]]]