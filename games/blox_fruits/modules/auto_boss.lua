_G.autoBoss = false
local bosses = {"Saber Expert","Darkbeard","Greybeard","Rip Indra","Cake Prince","Dough King"}
while true do
    if _G.autoBoss then
        for _,b in pairs(bosses) do
            local m = workspace:FindFirstChild(b,true)
            if m and m:FindFirstChild("HumanoidRootPart") and m.Humanoid.Health>0 then
                repeat
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = m.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bosstarget",b)
                    wait(.3)
                until not _G.autoBoss or m.Humanoid.Health<=0
                -- aguarda drops
                wait(3)
                for _,t in pairs(workspace:GetChildren()) do
                    if t:IsA("Tool") then t.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame end
                end
            end
        end
    end
    wait(1)
end
