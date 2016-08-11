School_room = {
	'Chalk Board' => [
		'chalk',
		'eraser',
		'sponge'
	],

	'Desk 1' => [
		'pencil',
		'gum',
		'caluclator',
		'baseball cards',
		'cheat sheet'
	],

	'Desk 2' => [
		'pen',
		'candy',
		'paper airplane',
		'cell phone',
		'old homework'
	],

	'Desk 3' => [
		'pencil',
		'pen',
		'flashlight',
		'notes',
		'wallet'
	],
	'Teachers Desk' => [
		'grades',
		'lap top',
		'notebook',
		'red pen'
	]


}

puts School_room['Teachers Desk'][2]
puts School_room['Desk 3'][0]
School_room['Teachers Desk'].push('Student note')
puts School_room['Teachers Desk']