evaluating
countAliveNeighboursAt: aRow at: aColumn 
	
	| c |
	c := 0.
	(self neighboursPositionsAt: aRow at: aColumn) do: [ :p | (self at: p y at: p x) isOn ifTrue: [ c := c + 1 ] ].
	^ c 
	