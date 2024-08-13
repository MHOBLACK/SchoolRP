-- AddCSLuaFile("cl_") * --
-- include("sv_") * --

-- AddCSLuaFile("sh_") * --
-- include("sh_") * --

-- Core files
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

-- Module Files
AddCSLuaFile("modules/hud/cl_hud.lua")

-- Core files
include("shared.lua")

function GM:PlayerConnect(name, ip)
    
    print(ip .. " - " .. name .. " connected to server.")

end

function GM:PlayerDisconnected(ply)

    print(ip .. " - " .. ply:Name() .. " disconnected from server.")
    
end

function GM:PlayerInitialSpawn(ply)
    
    print(ply:Name() .. " has spawned.")

end