_G.autoRaid = false
local rs = game:GetService("ReplicatedStorage")
while true do
    if _G.autoRaid then
        -- entra na raid se tiver chip
        rs.Remotes.CommF_:InvokeServer("RaidsNpc","Select","Flame")
        -- teletransporta entre pedestais
        for i=1,5 do
            wait(1)
            local p = workspace:FindFirstChild("RaidPedestal"..i,true)
            if p then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p.CFrame
                rs.Remotes.CommF_:InvokeServer("ActivatePedestal",i)
            end
        end
        -- quando acabar coleta frutas
        wait(5)
        for _,v in pairs(workspace:GetChildren()) do
            if v.Name:find("Fruit") and v:IsA("Tool") then v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame end
        end
    end
    wait(3)
end
