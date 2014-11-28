evaluating
stabilize: maxIterations
	"loop on #nextGen until it stops moving"
	| flipped c |
	c := 0.
	[ c < maxIterations and: [ flipped = 0 ] ] whileFalse: [ c := c + 1. flipped := self nextGen. self refreshWorld ]