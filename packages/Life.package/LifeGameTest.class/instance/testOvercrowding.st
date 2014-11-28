tests
testOvercrowding
	"Any live cell with more than three live neighbours dies, as if by overcrowding."
	
	| game |
	game := LifeGame rows: 3 columns: 3.
	(game at: 2 at: 2) turnOn. "cell under test"
	(game at: 1 at: 1) turnOn. "1 neighbour alive"
	(game at: 1 at: 3) turnOn. "2 neighbours alive"
	(game at: 3 at: 1) turnOn. "3 neighbours alive"
	(game at: 3 at: 3) turnOn. "4 neighbours alive"
	self assert: (game countAliveNeighboursAt: 2 at: 2) > 3.
	game nextGen.
	self assert: (game at: 2 at: 2) isOff.
	game delete.
	
	"ensure dead cells remain dead under such circumstances"
	game := LifeGame rows: 3 columns: 3.
	(game at: 2 at: 2) turnOff. "cell under test"
	(game at: 1 at: 1) turnOn. "1 neighbour alive"
	(game at: 1 at: 3) turnOn. "2 neighbours alive"
	(game at: 3 at: 1) turnOn. "3 neighbours alive"
	(game at: 3 at: 3) turnOn. "4 neighbours alive"
	self assert: (game countAliveNeighboursAt: 2 at: 2) > 3.
	game nextGen.
	self assert: (game at: 2 at: 2) isOff.
	game delete.