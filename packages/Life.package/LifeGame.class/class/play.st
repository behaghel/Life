as yet unclassified
play
	| builder content game |
	builder := UITheme builder.
	
	content := builder newColumn: {
		game := LifeGame rows: 35 columns: 35.
		builder newRow: {
			builder newButtonFor: game action: #nextGen getEnabled: nil label: 'next' help:'to compute and display the next state'.
			builder newButtonFor: game action: #startStepping getEnabled: nil label: 'play' help:'do ''next'' until the board stops moving.'.
			builder newButtonFor: game action: #stopStepping getEnabled: nil label: 'stop' help:'interrupt when playing'.
			builder newButtonFor: game action: #clear getEnabled: nil label: 'clear' help:'reset the board' 
		}.
	}.
	(content openInWindowLabeled: 'Conway''s Game of Life') extent: 436@496.
	(game isStepping) ifTrue: [ game stopStepping ].
	game takeKeyboardFocus 