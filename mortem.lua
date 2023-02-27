local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Mortem Metallum [Alpha]", "Ocean")

local Main = Window:NewTab("Nuke")
local Section = Main:NewSection("Step 1")

Section:NewButton("Dupe C4", "", function()
    local plr = game.Players.LocalPlayer
local dupe = {}
 
for i=1,200 do table.insert(dupe,tonumber(12)) end
 
settings().Network.IncomingReplicationLag = math.huge
wait()
for i,v in pairs(dupe) do
   local h = v
 
   local args = {
       [1] = h,
       [2] = "0:0:0:0"
   }game:GetService("ReplicatedStorage").Item:FireServer(unpack(args))
end
wait(0.5)
settings().Network.IncomingReplicationLag = 0
wait(#dupe/19)
for i,v in pairs(plr.Backpack:GetChildren()) do
   if v.Name == "Crossbow" or v.Name == "Fire bomb" or v.Name == "Grenade" or v.Name == "Bear trap" then
       v:Destroy()
   end
end
end)

local Section = Main:NewSection("Step 2")

Section:NewButton("Toggle", "Starts the action", function(state)
    local player = game.Players.LocalPlayer
local char = player.Character
local backpack = player:WaitForChild("Backpack")
 
for _, item in pairs(backpack:GetChildren()) do
	if item.Name == "C4" then
		item.Parent = char
		wait(0.01)
		mouse1click()
	end
end
end)

local Extra = Window:NewTab("Extra")
local ExtraSection = Extra:NewSection("Step 1")

ExtraSection:NewButton("Dupe Grenade", "", function()
    local plr = game.Players.LocalPlayer
local dupe = {}
 
 for i=1,200 do table.insert(dupe,tonumber(12)) end
 
settings().Network.IncomingReplicationLag = math.huge
wait()
for i,v in pairs(dupe) do
   local h = v
 
   local args = {
       [1] = h,
       [2] = "0:0:0:0"
   }game:GetService("ReplicatedStorage").Item:FireServer(unpack(args))
end
wait(0.5)
settings().Network.IncomingReplicationLag = 0
wait(#dupe/19)
for i,v in pairs(plr.Backpack:GetChildren()) do
   if v.Name == "Crossbow" or v.Name == "Fire bomb" or v.Name == "C4" or v.Name == "Bear trap" then
       v:Destroy()
   end
end
end)

ExtraSection:NewButton("Dupe Fire bomb", "", function()
    local plr = game.Players.LocalPlayer
local dupe = {}
 
for i=1,200 do table.insert(dupe,tonumber(12)) end -- IF YOU WANT MORE THAN 80 AMMO, CHANGE THE (80) TO WHATEVER NUMBER
 
settings().Network.IncomingReplicationLag = math.huge
wait()
for i,v in pairs(dupe) do
   local h = v
 
   local args = {
       [1] = h,
       [2] = "0:0:0:0"
   }game:GetService("ReplicatedStorage").Item:FireServer(unpack(args))
end
wait(0.5)
settings().Network.IncomingReplicationLag = 0
wait(#dupe/19)
for i,v in pairs(plr.Backpack:GetChildren()) do
   if v.Name == "Crossbow" or v.Name == "Grenade" or v.Name == "C4" or v.Name == "Bear trap" then
       v:Destroy()
   end
end
end)
local ExtraSection = Extra:NewSection("Step 2")
ExtraSection:NewButton("Equip All (Grenade)", "", function()
    local player = game.Players.LocalPlayer
local char = player.Character
local backpack = player:WaitForChild("Backpack")
 
for i = 1, 200 do
	local item = backpack:FindFirstChild("Grenade")
	if item then
		item.Parent = char
	end
end
end)

ExtraSection:NewButton("Equip All (Fire bomb)", "", function()
    local player = game.Players.LocalPlayer
local char = player.Character
local backpack = player:WaitForChild("Backpack")
 
for i = 1, 200 do
	local item = backpack:FindFirstChild("Fire bomb")
	if item then
		item.Parent = char
	end
end
end)

local Misc = Window:NewTab("Misc")
local MiscSection = Misc:NewSection("Misc")

MiscSection:NewButton("Infinite Yield", "FE Admin Commands", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)