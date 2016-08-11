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


snowboard_types = { 
	All_terain: {
		Burton: {
			Size: ['normal', 'long'],
			Goofy_option: 'yes',
			Sale: 'no'
		},
		Forum: {
			Size: ['normal', 'long'],
			Goofy_option: 'no',
			Sale: 'yes'
		}
	},
	Freestyle: {
		Burton: {
			Size: ['normal', 'long'],
			Goofy_option: 'yes',
			Sale: 'yes'
		},
		Forum: {Size: ['normal', 'long'],
			Goofy_option: 'no',
			Sale: 'yes'
		}
	}



}
	



puts snowboard_types[:Freestyle][:Burton][:Size][0..1]
puts snowboard_types[:All_terain][:Forum][:Goofy_option]
puts snowboard_types[:Freestyle][:Burton][:Sale]