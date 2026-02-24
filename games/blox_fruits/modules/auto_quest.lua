-- entrega todas as quests automaticamente, usa npc mais próximo da sua ilha
_G.autoQuest = false
local plr = game.Players.LocalPlayer
while true do
    if _G.autoQuest then
        local npc = nil
        for _,v in pairs(workspace:GetDescendants()) do
            if v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Quest") and (v.PrimaryPart.Position-plr.Character.HumanoidRootPart.Position).Magnitude<50 then
                npc = v
                break
            end
        end
        if npc then
            fireproximityprompt(npc:FindFirstChild("ProximityPrompt",true))
            wait(1)
            local args = {"StartQuest",npc.Name}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            wait(.5)
            -- entrega
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CheckQuest")
        end
    end
    wait(2)
end
