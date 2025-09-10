loadstring(game:HttpGet(("https://raw.githubusercontent.com/710200999/HopSeve/refs/heads/main/DVHS.DuongVanHongSon")))() -- don't delete this

       local Window = MakeWindow({
         Hub = {
         Title = "Sever Hop", -- hack menu name
         Animation = "guns.lol/hongson99/" 
         },
        Key = {  -- key
        KeySystem = false, -- true/false | turn on getkey
        Title = "Key System",
        Description = "",
        KeyLink = "",  -- link to get key
        Keys = {"1234"},  -- key
        Notifi = {
        Notifications = true,
        CorrectKey = "Running the Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })
-- Icon
       MinimizeButton({
       Image = "?",    -- dán liên kết hình ảnh vào ví dụ ( http://www.roblox.com/asset/?id=83190276951914 ) 
       Size = {40, 40},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab1
     local Tab1o = MakeTab({Name = "Sever"})     
------ Tab2
     local Tab2o = MakeTab({Name = "Hop Sever Advanced"})   
------ Tab3
     local Tab3o = MakeTab({Name = "Keyboard"})
------- BUTTON   1
    AddButton(Tab1o, {
     Name = "Hop Sever",
    Callback = function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/710200999/HopSever/refs/heads/main/HopServer.DuongVanHongSon")()
  end
  })
--
AddButton(Tab1o, {
     Name = "Hop Server Low Player",
    Callback = function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/710200999/HopSeve/refs/heads/main/HopServerLowPlayerV2.DuongVanHongSon")()
  end
  })
--
AddButton(Tab1o, {
     Name = "Rejoin Current Server",
    Callback = function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
  end
  })
------- BUTTON   2
AddButton(Tab2o, {
     Name = "Hop Server Low Player",
    Callback = function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/710200999/HopSeve/refs/heads/main/HopServerLowPlayerV1.DuongVanHongSon")()
  end
  })
--
AddButton(Tab2o, {
     Name = "Server With Many Hacks",
    Callback = function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/710200999/HopSeve/refs/heads/main/ServerWithManyHacks.DuongVanHongSon")()
  end
  })
------- BUTTON   3
AddButton(Tab3o, {
     Name = "Server With Many Hacks",
    Callback = function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/dzje92/Decryption-script/refs/heads/main/F9.lua")()
  end
  })
  
--[[
/usr/local/lua-5.3.5/lua53: script.lua:1: attempt to index a nil value (global 'game')
stack traceback:
	script.lua:1: in main chunk
	[C]: in ? 
]]--