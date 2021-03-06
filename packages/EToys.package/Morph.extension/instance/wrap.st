*Etoys-geometry
wrap

	| myBox box newX newY wrapped |
	owner ifNil: [^ self].
	myBox := self fullBounds.
	myBox corner < (50000@50000) ifFalse: [
		self inform: 'Who is trying to wrap a hidden object?'. ^ self].
	box := owner bounds.
	newX := self position x.
	newY := self position y.
	wrapped := false.
	((myBox right < box left) or: [myBox left > box right]) ifTrue: [
		newX := box left + ((self position x - box left) \\ box width).
		wrapped := true].
	((myBox bottom < box top) or: [myBox top > box bottom]) ifTrue: [
		newY := box top + ((self position y - box top) \\ box height).
		wrapped := true].
	self position: newX@newY.
	(wrapped and: [owner isPlayfieldLike])
		ifTrue: [owner changed].  "redraw all turtle trails if wrapped"

