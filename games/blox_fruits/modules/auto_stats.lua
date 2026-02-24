-- sobe stats na ordem ideal para levelar rápido (meele/def/dump resto)
_G.autoStats = false
local rot = {"Defense","Melee","Sword","Blox Fruit","Gun"}
local idx = 1
while true do
    if _G.autoStats and game.Players.LocalPlayer.Data.Level.Value>0 then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint",rot[idx],1)
        idx = idx % #rot + 1
    end
    wait(.1)
end
