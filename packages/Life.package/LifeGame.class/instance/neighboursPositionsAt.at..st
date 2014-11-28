neighbours
neighboursPositionsAt: i at: j
"returns all the neighbours coordinates in the form of a collection of points.
_|_|_
_|_|_
_|_|_
"
	^LifeGame sortCollectionOfPoints: (
		{	(i - 1)@(j - 1). i@(j - 1).	(i + 1)@(j - 1).
			(i - 1)@j. 				(i + 1)@j.
	   		(i - 1)@(j + 1). i@(j + 1). (i + 1)@(j + 1) } select: [ :p | 
		p x > 0 and: [ p y > 0 and: 
			[ p x <= self columns  and: 
			[ p y <= self rows ] ] ] ])
