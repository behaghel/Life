initialization
newCellAt: row at: column
	"Create a cell for position (row, column) and add it to my on-screen representation at the appropriate screen position.
	 Answer the new cell."
	
	| c origin |
	c := LifeCell new.
	origin := self innerBounds origin.
	self addMorph: c.
	^c position: ((column - 1) * c width) @ ((row - 1) * c height) + origin