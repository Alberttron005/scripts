local library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
local Wait = library.subs.Wait -- Only returns if the GUI has not been terminated. For 'while Wait() do' loops

local PepsisWorld = library:CreateWindow({
Name = "idk",
})
local GeneralTab = PepsisWorld:CreateTab({
Name = "idk"
})

local idk = GeneralTab:CreateSection({
Name = "General"
})




idk:AddToggle({
Name = "Auto delete",
Flag = "Autodel"
})
spawn(function()
    while wait(0.5) do
        if library.flags["Autodel"] then 
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
if v.Name == "Bag" and v.BagPart.Overhead.Rarity.Text ~= "Legendary" and v.BagPart.Overhead.Rarity.Text ~= "Rare" or v.Name == "Newspaper" or v.Name == "Rokakaka" or v.Name == "Sonido" or v.Name == "Flashstep" or v.Name == "Kaioken" or v.Name == "Nagi Nagi no mi" or v.Name == "Suke Suke no mi" or v.Name == "Guru Guru no mi" or v.Name == "Dark Magic (Simon)" or v.Name == "Sube Sube no mi" or v.Name == "Airwalk" or v.Name == "Purple Flare" or v.Name == "Blaze" or v.Name == "Mera Mera no mi" or v.Name == "Zushi Zushi no mi" or v.Name == "Blueflame" or v.Name == "Gura Gura no mi" or v.Name == "Hie Hie no mi" or v.Name == "Pika Pika no mi" or v.Name == "Gomu Gomu no mi" or v.Name == "Yami Yami no mi" or v.Name == "Moku Moku no mi" or v.Name == "Suna Suna no mi" or v.Name == "Goro Goro no mi" then
v:Destroy()
end
end
end
end
end)

local chest = workspace.Chests

local function teleportToRandomChest()
local children = chest:GetChildren()
local validChests = {}
for i, child in ipairs(children) do
if child.Transparency < 1 then
table.insert(validChests, child)
end
end
if #validChests > 0 then
local randomIndex = math.random(1, #validChests)
local randomChest = validChests[randomIndex]
game.Players.LocalPlayer.Character:MoveTo(randomChest.Position)
end
end


idk:AddToggle({
Name = "Chest Farm",
Flag = "Chest"
})
spawn(function()
    while wait() do
        if library.flags["Chest"] then 
teleportToRandomChest()
wait(.25) -- wait for 10 seconds before teleporting again
end
end
end)




idk:AddToggle({
Name = "Item Farm",
Flag = "Item"
})
spawn(function()
    while wait() do
        if library.flags["Item"] then 
for i,v in pairs(game:GetService("Workspace").Drops:GetChildren()) do
if v.Name ~= "idk" then
game.Players.LocalPlayer.Character:MoveTo(v.Handle.Position)
end
end
end
end
end)






--anti afk
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
   v:Disable()
end
