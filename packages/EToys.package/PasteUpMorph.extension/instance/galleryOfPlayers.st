*Etoys-playfield
galleryOfPlayers
	"Put up a tool showing all the players in the project"
	
	(ActiveWorld findA: AllPlayersTool) ifNotNil: [:aTool | ^ aTool comeToFront].
	AllPlayersTool newStandAlone openInHand

"ActiveWorld galleryOfPlayers"