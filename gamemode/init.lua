AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

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