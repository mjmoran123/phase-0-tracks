#Uh, I'm sitting here grading at the ARML meet, so lets make a nested
# data structure to represent some data about the texas team


texas = {
	a1: {
		inits: ["aa",
				"kc",
				"kf",
				"jh",
				"li",
				"ai",
				"jl",
				"dl",
				"dl",
				"hl",
				"mm", 
				"sm",
				"lr",
				"dw",
				"ry"
		],
		

		indy_breakdown: [13,11,12,7,13,3,9,5,8,0],

		scores: {
			team: 30,
			power: 43,
			individual: 83,
			relay: 24
		},

	},

	a2: {
		inits: ["ca",
				"dc",
				"ad",
				"kf",
				"vg",
				"pl",
				"mm",
				"rm",
				"jp",
				"zr",
				"tt", 
				"cw",
				"cz",
				"dz",
				"wz"
		],
		

		indy_breakdown: [11,9,10,5,11,1,5,3,6,0],

		scores: {
			team: 25,
			power: 39,
			individual: 63,
			relay: 11
		},

	}


}

p texas[:a2][:inits][14]
p texas[:a1][:indy_breakdown][7]
p texas[:a1][:scores][:relay]