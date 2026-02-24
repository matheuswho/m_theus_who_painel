_G.autoSB = false
while true do
    if _G.autoSB then
        for _,v in pairs(workspace:GetChildren()) do
            if v.Name=="SeaBeast" and v:FindFirstChild("HumanoidRootPart") then
                repeat
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,0)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HitSeaBeast",v)
                    wait(.2)
                until not _G.autoSB or v.Humanoid.Health<=0
            end
        end
    end
    wait(.5)
end
