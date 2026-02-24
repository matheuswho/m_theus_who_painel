_G.autoElite = false
while true do
    if _G.autoElite then
        local elite = nil
        for _,v in pairs(workspace:GetChildren()) do
            if v:FindFirstChild("EliteName") then elite = v; break end
        end
        if elite then
            repeat
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = elite.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Quest")
                wait(.3)
            until not _G.autoElite or elite.Humanoid.Health<=0
            -- coleta fóssil e corante
            wait(2)
            for _,t in pairs(workspace:GetChildren()) do if t:IsA("Tool") then t.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame end end
        end
    end
    wait(1)
end
