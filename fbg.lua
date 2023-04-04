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
game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("TSRubber","GrizzlyMagnum",{})
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
game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("Dough","Grilled Dough",{})
game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("Dough","Dough Muddle",{})
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
game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("Dragon","Screech",{})
game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("Dragon","DragonMeteor",{})
game:GetService("ReplicatedStorage").ReplicatorNoYield:FireServer("Dragon","CrimsonBomb",{}) 
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


