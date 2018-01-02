minetest.register_chatcommand("create_at_front", {
	params = "<text>",
	description = "Send text to chat",
	privs = {},
	func = function( name , text)
		--print(name:get_player_by_name())
		--minetest.chat_send_all(dump(minetest.get_player_by_name(name):get_look_dir()))
		local pos  = minetest.get_player_by_name(name):get_pos()
		local vec = vector.multiply(minetest.get_player_by_name(name):get_look_dir(), 2)
		pos = vector.add(vec, pos)
		pos.y = pos.y + 1.625
		minetest.add_item(pos, "default:dirt")
		
		return true, "Test success"
	end,
})


minetest.register_chatcommand("ex", {
	params = "number",
	description = "Send text to chat",
	privs = {},
	func = function( name , number)

		local pos  = minetest.get_player_by_name(name):get_pos()
		
		for i = 1,number do
			minetest.add_item({x=pos.x + math.random(-1.5,1.5)*math.random(),y=pos.y+1.5+math.random(1,5.5)*math.random(),z=pos.z + math.random(-1.5,1.5)*math.random()}, "default:dirt")
		end

		--minetest.add_item(pos, "default:dirt")
		
		return true, "Test success"
	end,
})
