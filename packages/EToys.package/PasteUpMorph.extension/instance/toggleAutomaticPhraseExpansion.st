*Etoys-viewing
toggleAutomaticPhraseExpansion
	| expand |
	expand := self hasProperty: #automaticPhraseExpansion.
	expand
		ifTrue:
			[self removeProperty: #automaticPhraseExpansion]
		ifFalse:
			[self setProperty: #automaticPhraseExpansion toValue: true]