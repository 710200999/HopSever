-- Server Hop Roblox (ít người nhất)

local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

local PlaceID = game.PlaceId
local JobID = game.JobId

local function ServerHop()
    local servers = {}
    local req = game:HttpGet(
        "https://games.roblox.com/v1/games/"..PlaceID.."/servers/Public?sortOrder=Asc&limit=100"
    )
    
    local data = HttpService:JSONDecode(req)

    for i, v in pairs(data.data) do
        if v.playing < v.maxPlayers and v.id ~= JobID then
            table.insert(servers, v.id)
        end
    end

    if #servers > 0 then
        TeleportService:TeleportToPlaceInstance(PlaceID, servers[math.random(1, #servers)], Players.LocalPlayer)
    else
        print("No other servers found!")
    end
end

ServerHop()

loadstring(game:HttpGet"https://raw.githubusercontent.com/710200999/notification/refs/heads/main/notification-HopServerLowPlayer.lua")() -- notification
