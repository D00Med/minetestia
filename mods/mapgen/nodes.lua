mapgen = {}

--functions
function mapgen.register_fern(name, desc, texnumber)
minetest.register_node("mapgen:"..name, {
	description = desc,
	drawtype = "mesh",
	mesh = "fern.b3d",
	tiles = {
		"mapgen_fern"..texnumber..".png",
	},
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.3, 0.3}
	},
	walkable = false,
	buildable_to = true,
	groups = {snappy = 1, oddly_breakable_by_hand = 1, flora = 1, flammable = 1},
	sounds = default.node_sound_leaves_defaults()
})
end

--function nodes

mapgen.register_fern("fern", "Fern", "1")
mapgen.register_fern("fern2", "Broad Leaf Fern", "2")

--nodes

minetest.register_node("mapgen:dicksonia", {
	description = "Dicksonia",
	drawtype = "mesh",
	mesh = "dicksonia.b3d",
	tiles = {
		"mapgen_dicksonia.png",
	},
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {choppy = 1, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_wood_defaults()
})

minetest.register_node("mapgen:baobab_leaves", {
	description = "baobab leaves",
	drawtype = "allfaces",
	paramtype = "light",
	tiles = {
		"mapgen_baobab_leaves.png",
	},
	groups = {snappy = 1, oddly_breakable_by_hand = 1, flammable = 1, dig_immediate = 1, leaves = 1, leafdecay = 3},
	sounds = default.node_sound_leaves_defaults()
})

minetest.register_node("mapgen:baobab_wood_Planks", {
	description = "baobab wood Planks",
	tiles = {
		"mapgen_baobab_wood.png",
	},
	groups = {choppy = 1, flammable = 1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_wood_defaults()
})

minetest.register_node("mapgen:baobab_tree", {
	description = "baobab tree",
	tiles = {
		"mapgen_baobab_tree_top.png",
		"mapgen_baobab_tree_top.png",
		"mapgen_baobab_tree.png",
	},
	groups = {choppy = 2, tree = 1, flammable = 1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

default.register_fence("mapgen:fence_baobab", {
	description = "Baobab Fence",
	texture = "mapgen_baobab_fence.png",
	inventory_image = "default_fence_overlay.png^mapgen_baobab_fence.png^default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^mapgen_baobab_fence.png^default_fence_overlay.png^[makealpha:255,126,126",
	material = "mapgen:baobab_wood_planks",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults()
})

minetest.register_node("mapgen:yellow_ipe_leaves", {
	description = "Yellow Ipe Leaves",
	drawtype = "allfaces",
	paramtype = "light",
	tiles = {
		"mapgen_yellow_ipe_leaves.png",
	},
	groups = {snappy = 1, oddly_breakable_by_hand = 1, flammable = 1, dig_immediate = 1, leaves = 1, leafdecay = 3},
	sounds = default.node_sound_leaves_defaults()
})

minetest.register_node("mapgen:yellow_ipe_planks", {
	description = "Yellow Ipe Planks",
	tiles = {
		"mapgen_yellow_ipe_wood.png",
	},
	groups = {choppy = 1, flammable = 1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_wood_defaults()
})

minetest.register_node("mapgen:yellow_ipe_tree", {
	description = "Yellow Ipe Tree",
	tiles = {
		"mapgen_yellow_ipe_tree_top.png",
		"mapgen_yellow_ipe_tree_top.png",
		"mapgen_yellow_ipe_tree.png",
	},
	groups = {choppy = 2, tree = 1, flammable = 1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

default.register_fence("mapgen:fence_yellow_ipe", {
	description = "Yellow Ipe Fence",
	texture = "mapgen_yellow_ipe_fence.png",
	inventory_image = "default_fence_overlay.png^mapgen_yellow_ipe_fence.png^default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^mapgen_yellow_ipe_fence.png^default_fence_overlay.png^[makealpha:255,126,126",
	material = "mapgen:yellow_ipe_planks",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults()
})

minetest.register_node("mapgen:coarse_dirt", {
	description = "Coarse Dirt",
	tiles = {"mapgen_coarse_dirt.png"},
	groups = {crumbly = 1, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_dirt_defaults()
})

minetest.register_node("mapgen:dirt_with_junglegrass", {
	description = "Dirt With Jungle Grass",
	tiles = {"mapgen_jungle_grass.png", "default_dirt.png", "default_dirt.png^mapgen_jungle_grass_side.png"},
	groups = {crumbly = 1, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_dirt_defaults()
})

minetest.register_node("mapgen:granite", {
	description = "Granite",
	tiles = {"mapgen_granite.png"},
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("mapgen:granite_brown", {
	description = "Brown Granite",
	tiles = {"mapgen_granite_brown.png"},
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("mapgen:limestone", {
	description = "Limestone",
	tiles = {"mapgen_limestone.png"},
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("mapgen:palm_tree", {
	description = "Palm Tree",
	tiles = {
		"mapgen_palmtree_top.png",
		"mapgen_palmtree_top.png",
		"mapgen_palmtree_side.png",
	},
	groups = {choppy = 2, tree = 1, flammable = 1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("mapgen:palm_wood", {
	description = "Palm Wood Planks",
	tiles = {
		"mapgen_palmtree_wood.png",
	},
	groups = {choppy = 1, flammable = 1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_wood_defaults()
})

default.register_fence("mapgen:fence_palm_wood", {
	description = "palm fence",
	texture = "mapgen_palm_fence.png",
	inventory_image = "default_fence_overlay.png^mapgen_palm fence.png^default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^mapgen_palm fence.png^default_fence_overlay.png^[makealpha:255,126,126",
	material = "mapgen:baobab_wood_planks",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults()

})

minetest.register_node("mapgen:palm_leaves", {
	description = "Palm Leaves",
	drawtype = "allfaces",
	paramtype = "light",
	tiles = {
		"mapgen_palmleaves.png",
	},
	groups = {snappy = 1, oddly_breakable_by_hand = 1, flammable = 1, dig_immediate = 1, leaves = 1, leafdecay = 3},
	sounds = default.node_sound_leaves_defaults()
})

minetest.register_node("mapgen:palm_leaves_coconut", {
	description = "Palm Leaves (coconut)",
	drawtype = "allfaces",
	paramtype = "light",
	tiles = {
		"mapgen_palmleaves_coconut.png",
	},
	groups = {snappy = 1, oddly_breakable_by_hand = 1, flammable = 1, dig_immediate = 1, leaves = 1, leafdecay = 3},
	sounds = default.node_sound_leaves_defaults(),
	on_rightclick = function(pos, node)
		minetest.env:set_node(pos, {name="mapgen:palm_leaves"})
		minetest.env:add_item(pos, "mapgen:coconut")
	end,
})

minetest.register_craftitem("mapgen:coconut", {
	description = "Coconut",
	inventory_image = "mapgen_coconut.png",
	on_use = function(itemstack, placer, pointed_thing)
		if pointed_thing.under == nil then
		return
		end
		local item = minetest.get_node(pointed_thing.under).name
		if minetest.get_item_group(item, "cracky") ~= 0 then
		itemstack:take_item()
		minetest.env:add_item(pointed_thing.above, "mapgen:coconut_open")
		end
		return itemstack
	end,
})

minetest.register_craftitem("mapgen:coconut_open", {
	description = "Cracked Coconut",
	inventory_image = "mapgen_coconut_opened.png",
	on_use = minetest.item_eat(2)
})

minetest.register_node("mapgen:moss", {
	description = "Moss",
	drawtype = "nodebox",
	tiles = {"mapgen_moss.png"},
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4, 0.5},
		}
	},
	buildable_to = true,
	groups = {snappy = 1, oddly_breakable_by_hand=1, dig_immediate=3},
	sounds = default.node_sound_defaults()
})

minetest.register_node("mapgen:tallgrass", {
	description = "Tall Grass",
	drawtype = "plantlike",
	tiles = {"mapgen_longgrass.png"},
	paramtype = "light",
	is_ground_content = false,
	buildable_to = true, 
	sunlight_propagates = true,
	inventory_image = "mapgen_longgrass.png",
	visual_scale = 1.4,
	wield_scale = {x=0.5, y=0.5, z=0.5},
	groups = {snappy=3, flammable=1, attatched_node=1, flora=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5}
	},
	walkable = false,
})

minetest.register_node("mapgen:bananaplant", {
	description = "Banana Plant",
	drawtype = "plantlike",
	tiles = {"mapgen_banana_plant.png"},
	paramtype = "light",
	is_ground_content = false,
	buildable_to = true, 
	sunlight_propagates = true,
	inventory_image = "mapgen_banana_plant.png",
	visual_scale = 1.4,
	wield_scale = {x=0.5, y=0.5, z=0.5},
	groups = {snappy=3, flammable=1, attatched_node=1, flora=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 1, 0.3}
	},
	walkable = false,
})

minetest.register_node("mapgen:jungletree", {
	description = "Small Jungle Tree",
	drawtype = "plantlike",
	tiles = {"mapgen_jungletree.png"},
	paramtype = "light",
	is_ground_content = false,
	buildable_to = true, 
	sunlight_propagates = true,
	inventory_image = "mapgen_jungletree.png",
	visual_scale = 2,
	wield_scale = {x=0.5, y=0.5, z=0.5},
	groups = {snappy=3, flammable=1, attatched_node=1, flora=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 1, 0.2}
	},
	walkable = false,
})

minetest.register_node("mapgen:flame_lily", {
	description = "Flame Lily",
	drawtype = "plantlike",
	tiles = {"mapgen_flame_lily.png"},
	paramtype = "light",
	is_ground_content = false,
	buildable_to = true, 
	sunlight_propagates = true,
	inventory_image = "mapgen_flame_lily.png",
	groups = {snappy=3, flammable=1, attatched_node=1, flora=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5}
	},
	walkable = false,
})

minetest.register_node("mapgen:vine", {
	description = "Vines",
	drawtype = "nodebox",
	tiles = {"mapgen_vines.png"},
	inventory_image = "mapgen_vines.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = false,
	walkable = false,
	climbable = true,
	drop = "mapgen:vine",
	node_box = {
		type = "fixed",
		fixed = {{-0.5, -0.5, 0.5, 0.5, 0.5, 0.4}}
	},
	groups = {cracky=3, dig_immediate=3, oddly_breakeable_by_hand=1},
})

--code taken from default

--License of source code
----------------------

--GNU Lesser General Public License, version 2.1
--Copyright (C) 2011-2016 celeron55, Perttu Ahola <celeron55@gmail.com>
--Copyright (C) 2011-2016 Various Minetest developers and contributors



minetest.register_node("mapgen:dirty_water_source", {
	description = "Dirty Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "mapgen_dirty_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		{
			name = "mapgen_dirty_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "mapgen:dirty_water_flowing",
	liquid_alternative_source = ",mapgen:dirty_water_source",
	liquid_viscosity = 2,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("mapgen:dirty_water_flowing", {
	description = "Flowing Dirty Water",
	drawtype = "flowingliquid",
	tiles = {"default_river_water.png^[colorize:green:100"},
	special_tiles = {
		{
			name = "mapgen_dirty_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "mapgen_dirty_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "mapgen:dirty_water_flowing",
	liquid_alternative_source = "mapgen:dirty_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("mapgen:dirt_with_swampgrass", {
	description = "Dirt With Swamp Grass",
	tiles = {"mapgen_swamp_grass.png", "default_dirt.png", "default_dirt.png^mapgen_swamp_grass_side.png"},
	groups = {crumbly = 1, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_dirt_defaults()
})

minetest.register_node("mapgen:cattail", {
	description = "Cattail",
	drawtype = "plantlike",
	tiles = {"mapgen_cattail.png"},
	paramtype = "light",
	is_ground_content = false,
	buildable_to = true, 
	sunlight_propagates = true,
	inventory_image = "mapgen_cattail.png",
	visual_scale = 1.4,
	wield_scale = {x=0.5, y=0.5, z=0.5},
	groups = {snappy=3, flammable=1, attatched_node=1, flora=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 1, 0.3}
	},
	walkable = false,
})

minetest.register_node("mapgen:lavender_flower", {
	description = "Lavender Flower",
	drawtype = "plantlike",
	tiles = {"mapgen_lavender_flower.png"},
	paramtype = "light",
	is_ground_content = false,
	buildable_to = true, 
	sunlight_propagates = true,
	inventory_image = "mapgen_lavender_flower.png",
	groups = {snappy=3, flammable=1, attatched_node=1, flora=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5}
	},
	walkable = false,
})

minetest.register_node("mapgen:oxeye_daisy", {
	description = "Oxeye Daisy",
	drawtype = "plantlike",
	tiles = {"mapgen_oxeye_daisy.png"},
	paramtype = "light",
	is_ground_content = false,
	buildable_to = true, 
	sunlight_propagates = true,
	inventory_image = "mapgen_oxeye_daisy.png",
	groups = {snappy=3, flammable=1, attatched_node=1, flora=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5}
	},
	walkable = false,
})

minetest.register_node("mapgen:small_cactus", {
	description = "Small Cactus",
	drawtype = "plantlike",
	tiles = {"mapgen_small_cactus.png"},
	paramtype = "light",
	is_ground_content = false,
	buildable_to = true, 
	sunlight_propagates = true,
	inventory_image = "mapgen_small_cactus.png",
	groups = {snappy=3, flammable=1, attatched_node=1, flora=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5}
	},
	walkable = false,
})

minetest.register_node("mapgen:small_cactus_1", {
	description = "Small Cactus",
	drawtype = "plantlike",
	tiles = {"mapgen_small_cactus_1.png"},
	paramtype = "light",
	is_ground_content = false,
	buildable_to = true, 
	sunlight_propagates = true,
	inventory_image = "mapgen_small_cactus_1.png",
	groups = {snappy=3, flammable=1, attatched_node=1, flora=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5}
	},
	walkable = false,
})

minetest.register_node("mapgen:purple_allium", {
	description = "Purple Allium",
	drawtype = "plantlike",
	tiles = {"mapgen_purple_allium.png"},
	paramtype = "light",
	is_ground_content = false,
	buildable_to = true, 
	sunlight_propagates = true,
	inventory_image = "mapgen_purple_allium.png",
	groups = {snappy=3, flammable=1, attatched_node=1, flora=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5}
	},
	walkable = false,
})

minetest.register_node("mapgen:dead_grass", {
	description = "Dead Grass",
	drawtype = "plantlike",
	tiles = {"mapgen_dead_grass.png"},
	paramtype = "light",
	is_ground_content = false,
	buildable_to = true, 
	sunlight_propagates = true,
	inventory_image = "mapgen_dead_grass.png",
	groups = {snappy=3, flammable=1, attatched_node=1, flora=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5}
	},
	walkable = false,
})
