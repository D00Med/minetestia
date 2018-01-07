minetest.register_craft({
	output = "decoblocks:bamboo_chair",
	recipe = {
		{"", "", "default:stick"},
		{"mapgen:bamboo_wood", "mapgen:bamboo_wood", "mapgen:bamboo_wood"},
		{"default:stick", "", "default:stick"}
	}
})

minetest.register_craft({
	output = "decoblocks:wooden_chair",
	recipe = {
		{"", "", "default:stick"},
		{"default:wood", "default:wood", "default:wood"},
		{"default:stick", "", "default:stick"}
	}
})

minetest.register_craft({
	output = "decoblocks:junglewood_chair",
	recipe = {
		{"", "", "default:stick"},
		{"default:junglewood", "default:junglewood", "default:junglewood"},
		{"default:stick", "", "default:stick"}
	}
})

minetest.register_craft({
	output = "decoblocks:aspen_chair",
	recipe = {
		{"", "", "default:stick"},
		{"default:aspen_wood", "default:aspen_wood", "default:aspen_wood"},
		{"default:stick", "", "default:stick"}
	}
})

minetest.register_craft({
	output = "decoblocks:pine_chair",
	recipe = {
		{"", "", "default:stick"},
		{"default:pine_wood", "default:pine_wood", "default:pine_wood"},
		{"default:stick", "", "default:stick"}
	}
})

minetest.register_craft({
	output = "decoblocks:acacia_chair",
	recipe = {
		{"", "", "default:stick"},
		{"defualt:acacia_wood", "default:acacia_wood", "default:acacia_wood"},
		{"defaultt:stick", "", "default:stick"}
	}
})

minetest.register_craft({
	output = "decoblocks:palm_chair",
	recipe = {
		{"", "", "default:stick"},
		{"mapgen:palm_wood", "mapgen:palm_wood", "mapgen:palm_wood"},
		{"default:stick", "", "default:stick"}
	}
})

minetest.register_craft({
	output = "decoblocks:baobab_chair",
	recipe = {
		{"", "", "default:stick"},
		{"mapgen:baobab_wood", "mapgen:baobab_wood", "mapgen:baobab_wood"},
		{"default:stick", "", "default:stick"}
	}
})

minetest.register_craft({
	output = "decoblocks:yellow_ipe_chair",
	recipe = {
		{"", "", "default:stick"},
		{"mapgen:yellow_ipe_wood", "mapgen:yellow_ipe_wood", "mapgen:yellow_ipe_wood"},
		{"default:stick", "", "default:stick"}
	}
})

minetest.register_craft({
	output = "decoblocks:bamboo_table",
	recipe = {
		{"mapgen:bamboo_wood", "mapgen:bamboo_wood", "mapgen:bamboo_wood"},
		{"group:stick", "", "group:stick"},
		{"group:stick", "", "group:stick"}
	}
})

minetest.register_craft({
	output = 'decoblocks:vase',
	recipe = {
		{'default:clay_brick', '', 'default:clay_brick'},
		{'default:clay_brick', '', 'default:clay_brick'},
		{'', 'default:clay_brick', ''},
	}
})

minetest.register_craft({
	output = 'decoblocks:scarecrow',
	recipe = {
		{'', 'farming:pumpkin', ''},
		{'default:stick', 'farming:straw', 'default:stick'},
		{'', 'group:wood', ''},
	}
})

minetest.register_craft({
	output = 'decoblocks:paper_lantern',
	recipe = {
		{'group:wood', 'default:paper', 'group:wood'},
		{'default:paper', 'default:torch', 'default:paper'},
		{'group:wood', 'default:paper', 'group:wood'},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "decoblocks:refined_granite",
	recipe = "mapgen:granite",
	cooktime = 5,
})

minetest.register_craft({
	type = "cooking",
	output = "decoblocks:refined_granite_brown",
	recipe = "mapgen:granite_brown",
	cooktime = 5,
})

minetest.register_craft({
	output = 'decoblocks:gold_brick',
	recipe = {
		{'default:gold_ingot', 'default:gold_ingot'},
		{'default:gold_ingot', 'default:gold_ingot'},
	}
})

minetest.register_craft({
	output = 'decoblocks:snow_bricks 4',
	recipe = {
		{'default:snowblock', 'default:snowblock'},
		{'default:snowblock', 'default:snowblock'},
	}
})
