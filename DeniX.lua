local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
 
local Window = Rayfield:CreateWindow({
   Name = "DeniX",
   LoadingTitle = "Loading Script",
   LoadingSubtitle = "by DeniX Team",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, 
      FileName = "DX"
   },
   Discord = {
      Enabled = true,
      Invite = "khWsP2rQVV", --ABCD
      RememberJoins = false 
   },
   KeySystem = true, 
   KeySettings = {
      Title = "DeniX Team",
      Subtitle = "Insert Key",
      Note = "Keys Are Only Obtainable Through Deni",
      FileName = "KeyFile", 
      SaveKey = false, 
      GrabKeyFromSite = false, 
      Key = {"w3IMByeDHrIukoeECW"} 
   }
})
 
 
local MainTab = Window:CreateTab("Main", 4483362458)
 
 
local Button = MainTab:CreateButton({
   Name = "Hitbox Enlarger",
   Callback = function()
   _G.HeadSize = 60 
_G.Disabled = false -- Set to false to enable the effect initially
 
game:GetService('RunService').RenderStepped:connect(function()
    if not _G.Disabled then
        for _, player in ipairs(game:GetService('Players'):GetPlayers()) do
            if player.Name ~= game:GetService('Players').LocalPlayer.Name then
                pcall(function()
                    local character = player.Character
                    if character then
                        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                        if humanoidRootPart then
                            humanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                            humanoidRootPart.Transparency = 0.7
                            humanoidRootPart.BrickColor = BrickColor.new("Bright red") 
                            humanoidRootPart.Material = "Neon"
                            humanoidRootPart.CanCollide = false
                        end
                    end
                end)
            end
        end
    end
end)
 
   end,
})
 
 
local Button = MainTab:CreateButton({
   Name = "Player ESP",
   Callback = function()
   local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0
 
local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}
 
local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"
 
local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
 
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end
 
    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end
 
Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end
 
Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
   end,
})
 
 
local Button = MainTab:CreateButton({
   Name = "More Coming Soon",
   Callback = function()
   game.RunService.Stepped:Connect(function() game.Players.LocalPlayer.Character.Head.CanCollide = false game.Players.LocalPlayer.Character.Torso.CanCollide = false end)
   end,
})
