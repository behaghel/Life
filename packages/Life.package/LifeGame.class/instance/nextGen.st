evaluating
nextGen
	| changedCells |
	changedCells := OrderedCollection new.
	cells withIndicesDo: [ :cell :column :row | | c | "not sure why I receive column then row here..."
		c := self countAliveNeighboursAt: row at: column.
		c < 2 ifTrue: [ cell isOn ifTrue: [ changedCells add: cell ] ] 	"under-population"
			   ifFalse: [ 
				"(c <= 3 and: [ cell isOn ]) ifTrue: [ cell turnOn ]" 	"surviving - no op"
				c > 3 ifTrue: [ cell isOn ifTrue: [ changedCells add: cell ] ] "overcrowding"
					   ifFalse: [ c = 3 ifTrue: [ cell isOn ifFalse: [ changedCells add: cell ] ] ] "reproduction"
			   ]
		].
	changedCells do: [ :each | each toggleState ].
	^ changedCells size