*Etoys-geometry
getIndexInOwner
	"Answer which position the receiver holds in its owner's hierarchy"

	"NB: There is some concern about submorphs that aren't really to be counted, such as a background morph of a playfield."

	| container topRenderer |
	container := (topRenderer := self topRendererOrSelf) owner.
	^ container submorphIndexOf: topRenderer.