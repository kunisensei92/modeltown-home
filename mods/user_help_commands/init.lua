minetest.register_chatcommand("jump", {
  description = "Jump the player coordinates",
  func = function(name)
    local player = minetest.get_player_by_name(name)
    local pos = player:getpos()

    player:moveto({
      x = math.floor(pos.x),
      y = math.floor(pos.y) + 50,
      z = math.floor(pos.z)
    })
  end,
})

minetest.register_chatcommand("highjump", {
  description = "Jump the player coordinates",
  func = function(name)
    local player = minetest.get_player_by_name(name)
    local pos = player:getpos()

    player:moveto({
      x = math.floor(pos.x),
      y = math.floor(pos.y) + 120,
      z = math.floor(pos.z)
    })
  end,
})

minetest.register_chatcommand("diagonaljump", {
  description = "Jump the player coordinates",
  func = function(name)
    local player = minetest.get_player_by_name(name)
    local pos = player:getpos()
    local dir = player:get_look_horizontal()
    local deg = math.floor(math.deg(dir))

    local dx = ""
    local dz = ""

        if deg <= 315 and deg >= 225 then
                dx = 25
                dz = 0
        elseif deg <= 224 and deg >= 135 then
                dx = 0
                dz = -25
        elseif deg <= 134 and deg >= 45 then
                dx = -25
                dz = 0
        elseif deg <= 44 and deg >= 0 then
                dx = 0
                dz = 25
        elseif deg >= 315 then
                dx = 0
                dz = 25
        end

    player:moveto({
      x = math.floor(pos.x) + dx,
      y = math.floor(pos.y) + 50,
      z = math.floor(pos.z) + dz
    })
  end,
})



dofile(minetest.get_modpath("user_help_commands").."/position/first.txt")
dofile(minetest.get_modpath("user_help_commands").."/position/second.txt")
dofile(minetest.get_modpath("user_help_commands").."/position/third.txt")
dofile(minetest.get_modpath("user_help_commands").."/position/fourth.txt")
dofile(minetest.get_modpath("user_help_commands").."/privilege/fly.txt")
dofile(minetest.get_modpath("user_help_commands").."/privilege/run.txt")
dofile(minetest.get_modpath("user_help_commands").."/privilege/modosu.txt")


