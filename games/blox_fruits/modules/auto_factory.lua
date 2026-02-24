_G.autoFactory = false
while true do
    if _G.autoFactory then
        local f = workspace:FindFirstChild("Factory",true)
        if f and f:FindFirstChild("Core") then
            repeat
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = f.Core.CFrame
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Factory","Fire")
                wait(.3)
            until not _G.autoFactory or f.Core.Health.Value<=0
            -- pega a recompensa
            wait(2)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Factory","Reward")
        end
    end
    wait(3)
end
