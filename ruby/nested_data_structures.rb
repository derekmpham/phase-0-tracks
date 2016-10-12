# LA LAKER ROSTER

roster = {
	guards: {
		young: [
			"Jordan Clarkon",
			"Julian Jacobs",
			"D'Angelo Russell"
		],
		veterans: [
			"Jose Calderon",
			"Marcelo Huertas",
			"Louis Williams",
			"Nick Young"
		]
	},
	forwards: {
		young: [
			"Zach Auguste",
			"Anthony Brown",
			"Brandon Ingram",
			"Larry Nance Jr.",
			"Julius Randle",
			"Travis Wear"
		],
		veterans: [
			"Luol Deng",
			"Yi Jianlian",
			"Thomas Robinson",
			"Metta World Peace"
		]
	},
	centers: {
		young: [
			"Tarik Black",
			"Ivica Zubac"
		],
		veterans: [
			"Timofey Mozgov"
		]
	}
}


# ACCESS NESTED ITEMS

# access young laker guards
p roster[:guards][:young]

# access Brandon Ingram
p roster[:forwards][:young][2]

# reverse veteran forwards list
p roster[:forwards][:veterans].reverse