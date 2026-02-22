local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer
local PlaceID = game.PlaceId

local BestServer = nil
local LowestPing = math.huge
local cursor = ""

repeat
    local url = "https://games.roblox.com/v1/games/"..PlaceID.."/servers/Public?sortOrder=Asc&limit=100&cursor="..cursor
    local response = HttpService:JSONDecode(game:HttpGet(url))

    for _, server in pairs(response.data) do
        if server.playing < server.maxPlayers and server.ping then
            if server.ping < LowestPing then
                LowestPing = server.ping
                BestServer = server.id
            end
        end
    end

    cursor = response.nextPageCursor
until not cursor or BestServer

if BestServer then
    TeleportService:TeleportToPlaceInstance(PlaceID, BestServer, LocalPlayer)
else
    warn("Không tìm được server phù hợp")
end