--Drop items on dig
function minetest.handle_node_drops(pos, drops, digger)
	for _,item in ipairs(drops) do
		local count, name
		if type(item) == "string" then
			count = 1
			name = item
		else
			count = item:get_count()
			name = item:get_name()
		end
		--if not inv or not inv:contains_item("main", ItemStack(name)) then
			for i=1,count do
				--local obj = minetest.add_item(pos, name)
				--if obj ~= nil then
				local playerpos = digger:getpos()
				local vec = vector.multiply(digger:get_look_dir(), 1.5)
				playerpos = vector.add(vec, playerpos)
				playerpos.y = playerpos.y + 1.625
				
				local obj = minetest.add_item(playerpos, name)
				
				obj:get_luaentity().holder = digger
				obj:get_luaentity().oldmb = nil
				--end
			end
		--end
	end
end
