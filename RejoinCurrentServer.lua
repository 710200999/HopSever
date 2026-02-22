local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

-- Rejoin button/command logic
local function rejoinGame()
    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, localPlayer)
end

-- Example: Rejoin after 5 seconds
wait(1)
rejoinGame()

