*Etoys
assuredPlayer
	"Answer the receiver's player, creating a new one if none currently exists"

	| aPlayer |
	(aPlayer := self player) ifNil:
		[self assureExternalName.  "a default may be given if not named yet"
		self player: (aPlayer := self newPlayerInstance).  
			"Different morphs may demand different player types"
		aPlayer costume: self.
		self presenter ifNotNil: [self presenter flushPlayerListCache]].
	^ aPlayer