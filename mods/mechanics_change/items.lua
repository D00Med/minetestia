-- Minetest: builtin/item_entity.lua MADE BY J0RDAUN

function core.spawn_item(pos, item)
	-- Take item in any format
	local stack = ItemStack(item)
	local obj = core.add_entity(pos, "__builtin:item")
	-- Don't use obj if it couldn't be added to the map.
	if obj then
		obj:get_luaentity():set_item(stack:to_string())
	end
	return obj
end

-- If item_entity_ttl is not set, enity will have default life time
-- Setting it to -1 disables the feature

local time_to_live = tonumber(core.settings:get("item_entity_ttl")) or 900
local gravity = tonumber(core.settings:get("movement_gravity")) or 9.81


core.register_entity(":__builtin:item", {
	initial_properties = {
		hp_max = 1,
		physical = true,
		collide_with_objects = false,
		collisionbox = {-0.3, -0.3, -0.3, 0.3, 0.3, 0.3},
		visual = "wielditem",
		visual_size = {x = 0.4, y = 0.4},
		textures = {""},
		spritediv = {x = 1, y = 1},
		initial_sprite_basepos = {x = 0, y = 0},
		is_visible = false,
	},

	itemstring = "",
	moving_state = true,
	slippery_state = false,
	age = 0,
	holder = nil,

	set_item = function(self, item)
		local stack = ItemStack(item or self.itemstring)
		self.itemstring = stack:to_string()
		if self.itemstring == "" then
			-- item not yet known
			return
		end

		-- Backwards compatibility: old clients use the texture
		-- to get the type of the item
		local itemname = stack:is_known() and stack:get_name() or "unknown"

		local max_count = stack:get_stack_max()
		local count = math.min(stack:get_count(), max_count)
		local size = 0.2 + 0.1 * (count / max_count) ^ (1 / 3)
		local coll_height = size * 0.75

		self.object:set_properties({
			is_visible = true,
			visual = "wielditem",
			textures = {itemname},
			visual_size = {x = size, y = size},
			collisionbox = {-size, -coll_height, -size,
				size, coll_height, size},
			selectionbox = {-size, -size, -size, size, size, size},
			--automatic_rotate = math.pi * 0.5 * 0.2 / size,
			wield_item = self.itemstring,
		})

	end,

	get_staticdata = function(self)
		return core.serialize({
			itemstring = self.itemstring,
			age = self.age,
			dropped_by = self.dropped_by
		})
	end,
	--allow player to pick up single item stack
	on_punch = function(self, clicker)
		--self.object:remove()
		if self.holder == nil and self.allow_pickup == true then
			self.holder = clicker
			self.oldmb = nil
		end
	end,
	on_rightclick = function(self, clicker)
		self.holder = nil
		self.oldmb = nil
		self.object:set_acceleration({x = 0, y = -gravity, z = 0})
	end,
	on_activate = function(self, staticdata, dtime_s)
		if string.sub(staticdata, 1, string.len("return")) == "return" then
			local data = core.deserialize(staticdata)
			if data and type(data) == "table" then
				self.itemstring = data.itemstring
				self.age = (data.age or 0) + dtime_s
				self.dropped_by = data.dropped_by
			end
		else
			self.itemstring = staticdata
		end
		self.object:set_armor_groups({immortal = 1})
		self.object:set_velocity({x = 0, y = 2, z = 0})
		self.object:set_acceleration({x = 0, y = -gravity, z = 0})
		self:set_item()
		
	end,
	on_step = function(self, dtime)
		self.age = self.age + dtime
		
		self.allow_pickup = true
		
			
		--player holding
		if self.holder ~= nil then
			--print(dump(self.holder:getpos()))
			local pos  = self.holder:getpos()
			local vec = vector.multiply(self.holder:get_look_dir(), 1.5)
			pos = vector.add(vec, pos)
			pos.y = pos.y + 1.625
			--minetest.add_item(pos, "default:dirt")
			--self.object:moveto(pos)
			vel = vector.multiply(vector.subtract(pos, self.object:getpos()), 10)
			self.object:set_velocity(vel)
			self.object:set_acceleration({x = 0, y = 0, z = 0})
			
			
			local sp1 = self.object:getpos()
			local sp2 = self.holder:getpos()
			
			local rotation = vector.subtract(sp1, sp2)
			
			self.yaw = math.atan(rotation.z/rotation.x)+math.pi/2
				
				
			if sp1.x > sp2.x then
				self.yaw = self.yaw+math.pi
			end
			
			self.object:setyaw(self.yaw)
							
			if self.holder:get_player_control().RMB == true and self.oldmb == false then
				self.holder = nil
				self.allow_pickup = false
				self.object:set_acceleration({x = 0, y = -gravity, z = 0})
				return
			end
			
			self.oldmb = self.holder:get_player_control().RMB
		else --no player holding
			local pos = self.object:get_pos()
			local node = core.get_node_or_nil({
				x = pos.x,
				y = pos.y + self.object:get_properties().collisionbox[2] - 0.05,
				z = pos.z
			})
			
			local node2 = core.get_node_or_nil({
				x = pos.x,
				y = pos.y,
				z = pos.z
			})
			
			
			local vel = self.object:getvelocity()
			local def = node and core.registered_nodes[node.name]
			local def2 = node2 and core.registered_nodes[node2.name]
			
			
			-- Ignore is nil -> stop until the block loaded
			local is_moving = (def and not def.walkable) or
					vel.x ~= 0 or vel.y ~= 0 or vel.z ~= 0
			local is_slippery = false
			
			---
			
			local is_liquid = minetest.get_item_group(def2.name, "water") > 0

			if def and def.walkable then
				local slippery = core.get_item_group(node.name, "slippery")
				is_slippery = slippery ~= 0
				if is_slippery and (math.abs(vel.x) > 0.2 or math.abs(vel.z) > 0.2) then
					-- Horizontal deceleration
					local slip_factor = 4.0 / (slippery + 4)
					self.object:set_acceleration({
						x = -vel.x * slip_factor,
						y = 0,
						z = -vel.z * slip_factor
					})
				elseif vel.y == 0 then
					is_moving = false
				end
			end

			if self.moving_state == is_moving and
					self.slippery_state == is_slippery then
				-- Do not update anything until the moving state changes
				return
			end
			
			
			--------DON'T MOVE FORWARD IF BLAH

			self.moving_state = is_moving
			self.slippery_state = is_slippery
	
			if is_liquid then
				self.object:set_acceleration({x = 0, y = 1, z = 0})

			elseif is_moving then
				self.object:set_acceleration({x = 0, y = -gravity, z = 0})
			else
				self.object:set_acceleration({x = 0, y = 0, z = 0})
				self.object:set_velocity({x = 0, y = 0, z = 0})
			end

			--Only collect items if not moving
			if is_moving then
				return
			end
		end
	end,
})
