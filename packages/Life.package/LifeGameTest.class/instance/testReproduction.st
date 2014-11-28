tests
testReproduction
	"Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction."

	| game |
	game := LifeGame rows: 3 columns: 3.
	(game at: 2 at: 2) turnOff. "cell under test"
	(game at: 1 at: 1) turnOn. "1 neighbour alive"
	(game at: 1 at: 3) turnOn. "2 neighbours alive"
	(game at: 3 at: 1) turnOn. "3 neighbours alive"
	game nextGen.
	self assert: (game at: 2 at: 2) isOn.
	game delete.
	
	"ensure alive cell stay alive ...ah ah ah ah stay aliiiiiive"
	game := LifeGame rows: 3 columns: 3.
	(game at: 2 at: 2) turnOn. "cell under test"
	(game at: 1 at: 1) turnOn. "1 neighbour alive"
	(game at: 1 at: 3) turnOn. "2 neighbours alive"
	(game at: 3 at: 1) turnOn. "3 neighbours alive"
	game nextGen.
	self assert: (game at: 2 at: 2) isOn.
	game delete.