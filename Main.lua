if game.PlaceId == 2809202155 then
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "RHub",
	LoadingTitle = "RHub interface",
	LoadingSubtitle = "by Nam",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = YBA, 
		FileName = "YBA Hub"
	},
        Discord = {
        	Enabled = true,
        	Invite = "TufaGkrsfs", 
        	RememberJoins = true 
        },
	KeySystem = true, 
	KeySettings = {
		Title = "Rhub",
		Subtitle = "Key System",
		Note = "Vao server (discord.gg/TufaGkrsfs)",
		FileName = "SiriusKey",
		SaveKey = false,
		GrabKeyFromSite = false, 
		Key = "Nam2403"
	}
})

local MainTab = Window:CreateTab("Main", 4483362458) -- Title, Image

MainTab:CreateSlider({
    Name = "Nhay cao vai dai",
    Range = {50, 250}, --max jump power
    Increment = 20, -- increase by how much aftr sliding
    Suffix = "Power",
    CurrentValue = 50, --default slider value
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end,
})

MainTab:CreateSlider({
    Name = "Chay nhanh vai lon",
    Range = {50, 250}, --max jump power
    Increment = 20, -- increase by how much aftr sliding
    Suffix = "Speed",
    CurrentValue = 50, --default slider value
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
})


end 
Rayfield:LoadConfiguration()
