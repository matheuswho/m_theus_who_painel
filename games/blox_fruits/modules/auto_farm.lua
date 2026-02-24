-- delta_cheat/games/blox_fruits/modules/auto_farm.lua

_G.farm = false
local plr = game.Players.LocalPlayer
local mobs = workspace:WaitForChild("Enemies")

while true do
    if _G.farm then
        for _,v in pairs(mobs:GetChildren()) do
            if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                repeat
                    plr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
                    game:GetService("ReplicatedStorage").Damage:FireServer(v)
                    task.wait(0.2)
                until v.Humanoid.Health <= 0 or not _G.farm
            end
        end
    end
    task.wait()
end
