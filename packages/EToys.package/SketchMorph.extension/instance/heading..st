*Etoys-geometry eToy
heading: newHeading
	"If not rotating normally, change forward direction rather than heading"
	rotationStyle == #normal ifTrue:[^super heading: newHeading].
	self isFlexed
		ifTrue:[self forwardDirection: newHeading - owner rotationDegrees]
		ifFalse:[self forwardDirection: newHeading].
	self layoutChanged