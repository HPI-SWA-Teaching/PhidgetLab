*Etoys-customevents-custom events
customEventNamesAndHelpStringsFor: aPlayer
	| retval morph |
	morph := aPlayer costume renderedMorph.
	retval := SortedCollection sortBlock: [ :a :b | a first < b first ].
	self customEventsRegistry
		keysAndValuesDo: [ :k :v |
			| helpStrings |
			helpStrings := Array streamContents: [ :hsStream |
				v keysAndValuesDo: [ :registrant :array |
					(morph isKindOf: array second) ifTrue: [
						| help |
						help := String streamContents: [ :stream |
										v size > 1
											ifTrue: [ stream nextPut: $(;
													nextPutAll: array second name;
													nextPut: $);
													space ].
										stream nextPutAll: array first ].
						hsStream nextPut: help ]]].
			helpStrings isEmpty ifFalse: [retval add: { k. helpStrings } ]].
	^ retval