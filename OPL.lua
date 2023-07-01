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
Name = "weapon",
Flag = "Autode"
})
spawn(function()
    while wait(0.1) do
        if library.flags["Autode"] then
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == "Cannon Ball" then
            v.Parent = game.Players.LocalPlayer.Character
        
end
end
end
end
end)

idk:AddToggle({
Name = "auto tp",
Flag = "Autoe"
})
spawn(function()
    while wait(0.1) do
        if library.flags["Autoe"] then
local Alive = game.Workspace[game.Players.LocalPlayer.Character.Name]:WaitForChild("HumanoidRootPart", 0.01)
if Alive then
game.Workspace[game.Players.LocalPlayer.Character.Name].HumanoidRootPart.CFrame = CFrame.new(197793.969, 20007.1035, 192644.969) 


end
end
end
end)



idk:AddToggle({
Name = "Tp mobs",
Flag = "Autodel"
})
spawn(function()
    while wait(0) do
        if library.flags["Autodel"] then 
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
if v:isA("Model") then 
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Anchored = true
v.HumanoidRootPart.CFrame = CFrame.new(197793.969, 20007.1035, 192659.969)
end
end
end
end
end)


idk:AddToggle({
Name = "Kill mobs",
Flag = "Autod"
})
spawn(function()
    while wait(0.1) do
        if library.flags["Autod"] then

for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
if v.Name == "Cannon Ball" then
v.RemoteEvent:FireServer(CFrame.new(197793.96875, 20007.126953125, 192658.96875) * CFrame.Angles(-3.0365123748779297, -0, -3.1415927410125732))
end

end
end
end
end)


--anti afk
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
   v:Disable()
end

local Part = Instance.new("Part")
Part.Anchored = true
Part.BottomSurface = Enum.SurfaceType.Smooth
Part.TopSurface = Enum.SurfaceType.Smooth
Part.Color = Color3.fromRGB(0, 0, 0)
Part.Material = Enum.Material.Plastic
Part.Size = Vector3.new(15, 1, 15)
Part.CFrame = CFrame.new(197793.969, 20003.6099, 192644.969)
Part.Parent = workspace


local RunService = game:GetService("RunService")
function antiSit()
if game.Players.LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Seated then 
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
end
RunService:BindToRenderStep("tempBinding", 1000, antiSit)
