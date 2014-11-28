initialization
initialize

	| sampleCell cellWidth cellHeight w h |
	super initialize.
	h := self rows.
	w := self columns.
	sampleCell := LifeCell new.
	cellWidth := sampleCell width.
	cellHeight := sampleCell height.
	self extent: ((cellWidth * w)@(cellHeight * h)) + (2 * self borderWidth).
	cells := Matrix rows: self rows columns: self columns tabulate: [ :i :j | self newCellAt: i at: j ].