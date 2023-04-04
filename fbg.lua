local library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
local Wait = library.subs.Wait -- Only returns if the GUI has not been terminated. For 'while Wait() do' loops

local PepsisWorld = library:CreateWindow({
Name = "idk",
})
local GeneralTab = PepsisWorld:CreateTab({
Name = "Farming"
})
local Slots = GeneralTab:CreateSection({
Name = "Slots"
})
local FarmingSection = GeneralTab:CreateSection({
Name = "Leveling"
})

FarmingSection:AddButton({
Name = "Tp To afkspot",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(math.random(8999990000, 8999999999), 8999999488, math.random(8999990000, 8999999999))
end})






FarmingSection:AddToggle({
Name = "TSRubber Farm",
Flag = "TSRubber"
})
spawn(function()
    while wait(0.5) do
        if library.flags["TSRubber"] then 
game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("TSRubber","JetPistol",{})
game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("TSRubber","JetGatling",{})
game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("TSRubber","RedHawk",{})




game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("TSRubber","GrizzlyMagnum",{
        ["MouseRay"] = {
["Normal"] = Vector3.new(-235.6920928955078, 80.28042602539062, -167.34483337402344),
["Direction"] = Vector3.new(235.6920928955078, -80.28042602539062, 167.34483337402344),
["Origin"] = Vector3.new(795.3841552734375, 635.2388305664062, -410.2130126953125),
["Position"] = Vector3.new(1031.0762939453125, 554.9583740234375, -242.86817932128906)}})

end
end
end)


FarmingSection:AddToggle({
Name = "Dough Farm",
Flag = "Dough"
})
spawn(function()
    while wait(0.5) do
        if library.flags["Dough"] then 
game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("Dough","GrilledDough",{})
game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("Dough","DoughMuddle",{})
game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("Dough","Chestnut",{})
game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("Dough","Buzzcut",{})
        end
    end
end)

FarmingSection:AddToggle({
Name = "Dragon Farm",
Flag = "Dragon"
})
spawn(function()
    while wait(0.5) do
        if library.flags["Dragon"] then 
game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("Dragon","Screech",{})
game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("Dragon","DragonClaw",{})
game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("Dragon","DragonBreath",{})
game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("Dragon","DracoMeteor",{})
game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("Dragon","CrimsonBomb", {
["MouseRay"] = {
["Normal"] = Vector3.new(0, 1, 3.505146537463588e-07),
["Direction"] = Vector3.new(90.00456237792969, -134.73870849609375, 252.47703552246094),
["Origin"] = Vector3.new(-432.52044677734375, 761.1904907226562, 359.0203552246094),
["Instance"] = workspace.SafeZones.FlowerHill.MainColor,
["Distance"] = 41.85980224609375,
["Position"] = Vector3.new(-419.9618835449219, 742.3900146484375, 394.2491455078125),["Material"] = Enum.Material.Slate
}})
        end
    end
end)


Slots:AddSlider({
Name = "Slots",
Flag = "flag",
Value = 1,
Min = 1,
Max = 5,
Format = function(Value)
slot = Value
if Value > 0 then
return "Slot: " .. tostring(Value)
end
end})


Slots:AddButton({
Name = "Switch Slot",
Callback = function()
game:GetService("ReplicatedStorage").Replicator:InvokeServer("FruitsHandler","SwitchSlot",{["Slot"] = slot})
end})


