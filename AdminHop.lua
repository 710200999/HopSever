local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local LocalPlayer = Players.LocalPlayer
local PlaceID = game.PlaceId
local CurrentJob = game.JobId

-- Danh sách bạn muốn tránh
local FriendsToAvoid = {
    "mygame43",
    "rip_indra",
    "Uzoth",
    "Uzi_London",
    "iSekai_iSekai",
    "rokillerXD123",
    "vidsmurf",
    "Zioles",
    "starcode_kitt",
    "StarCode_fer",
    "LUOI_VN",
    
}

-- Kiểm tra
local function IsFriend(name)
    for _, friend in pairs(FriendsToAvoid) do
        if friend == name then
            return true
        end
    end
    return false
end

-- Hàm tìm server khác
local function HopServer()
    local servers = {}
    local req = game:HttpGet(
        "https://games.roblox.com/v1/games/"..PlaceID.."/servers/Public?sortOrder=Asc&limit=100"
    )

    local data = HttpService:JSONDecode(req)

    for _, v in pairs(data.data) do
        if v.id ~= CurrentJob and v.playing < v.maxPlayers then
            table.insert(servers, v.id)
        end
    end

    if #servers > 0 then
        local randomServer = servers[math.random(1, #servers)]
        TeleportService:TeleportToPlaceInstance(PlaceID, randomServer, LocalPlayer)
    else
        TeleportService:Teleport(PlaceID, LocalPlayer)
    end
end

-- Khi có người vào
Players.PlayerAdded:Connect(function(player)
    if IsFriend(player.Name) then
        print("Phát hiện "..player.Name.." → đổi server khác...")
        HopServer()
    end
end)

-- Kiểm tra khi script chạy
for _, player in pairs(Players:GetPlayers()) do
    if IsFriend(player.Name) then
        print("Bạn đã có trong server: "..player.Name.." → đổi server...")
        HopServer()
    end

end

loadstring(game:HttpGet"https://raw.githubusercontent.com/710200999/notification/refs/heads/main/notification-LeaveIfAdminBloxFruitsJoin.lua")()



