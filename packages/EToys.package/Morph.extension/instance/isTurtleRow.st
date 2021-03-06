*Etoys
isTurtleRow

	| aCollection selectorCollection |
	aCollection := Set new.
	selectorCollection := Set new.
	self accumlatePlayersInto: aCollection andSelectorsInto: selectorCollection.
	#(turtleCount: turtleCount grouped: grouped) do: [:sel |
		(selectorCollection includes: sel) ifTrue: [^ false].
	].

	aCollection do: [:e |
		(e isKindOf: KedamaExamplerPlayer) ifTrue: [^ true].
	].
	^ false.
