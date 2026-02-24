-- delta_cheat/core/globals.lua

-- ESP universal
function esp(target)
    local bill = Instance.new("BillboardGui", target)
    bill.Size = UDim2.new(0, 200, 0, 50)
    bill.AlwaysOnTop = true
    local txt = Instance.new("TextLabel", bill)
    txt.Size = UDim2.new(1, 0, 1, 0)
    txt.Text = target.Name
    txt.BackgroundTransparency = 1
    txt.TextColor3 = Color3.new(1,1,1)
    txt.TextStrokeTransparency = 0
end

-- No-clip toggle
local noclip = false
game:GetService("RunService").Stepped:Connect(function()
    if noclip then
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then v.CanCollide = false end
        end
    end
end)

function toggle_noclip()
    noclip = not noclip
end

-- Speed hack
function set_speed(multi)
    local hum = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if hum then hum.WalkSpeed = 16 * multi end
end
