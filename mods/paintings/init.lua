
--texture format: paintings_[name].png, must be the same as the node name (NOT the description)
--sizes are: 1X1, 1X2, 2X2
local paintings = {
	--{"name/texture", "description", "size"}
	{"small", "Small Painting (test)", "1X1"},
	{"medium", "Medium Painting (test)", "1X2"},
	{"large", "Large Painting (test)", "2X2"},
}

local small = {-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5}
local medium = {-1.5, -0.5, 0.4375, 0.5, 0.5, 0.5}
local large = {-0.5, -0.5, 0.4375, 1.5, 1.5, 0.5}

for _, row in ipairs(paintings) do
	local name = row[1]
	local description = row[2]
	local size = row[3]
	local box = small
	if size == "1X2" then
	box = medium
	elseif size == "2X2" then
	box = large
	end
	minetest.register_node("paintings:"..name, {
	description = description,
	drawtype = "mesh",
	mesh = size..".obj",
	tiles = {
		"paintings_"..name..".png",
	},
	visual_scale = 0.5,
	wield_scale = {x=0.5, y=0.5, z=0.5},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=1},
	selection_box = {
		type = "fixed",
		fixed = box
	},
	collision_box = {
		type = "fixed",
		fixed = box
	},
	sounds = default.node_sound_wood_defaults()
})
end