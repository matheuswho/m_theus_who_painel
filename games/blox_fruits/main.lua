-- delta_cheat/games/blox_fruits/main.lua

-- carrega sub-módulos novos
local dir = "delta_cheat/games/blox_fruits/modules/"
local mods = {"auto_farm","teleport","devil_fruit_sniffer","auto_quest","auto_stats","auto_raids","auto_boss","auto_sea_beast","auto_factory","auto_elite"}
for _,m in ipairs(mods) do loadstring(readfile(dir..m..".lua"))() end

-- UI com foto, marca e nome
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Blox Fruits Deluxe", "DarkTheme")

-- painel superior fixo
local plr = game.Players.LocalPlayer
local userImg = game:HttpGet("https://www.roblox.com/headshot-thumbnail/image?userId="..plr.UserId.."&width=420&height=420&format=png",true)
local bg = Instance.new("ScreenGui",game.CoreGui)
local holder = Instance.new("ImageLabel",bg);holder.Size=UDim2.new(0,60,0,60);holder.Position=UDim2.new(0,10,0,10);holder.Image=userImg;holder.BackgroundTransparency=1
local name = Instance.new("TextLabel",bg);name.Size=UDim2.new(0,200,0,30);name.Position=UDim2.new(0,80,0,25);name.Text="@"..plr.Name;name.TextColor3=Color3.new(1,1,1);name.BackgroundTransparency=1;name.TextXAlignment=Enum.TextXAlignment.Left
local marca = Instance.new("TextLabel",bg);marca.Size=UDim2.new(0,200,0,20);marca.Position=UDim2.new(0,80,0,45);marca.Text="by @m_theus_who";marca.TextColor3=Color3.new(0.7,0.7,0.7);marca.BackgroundTransparency=1;marca.TextXAlignment=Enum.TextXAlignment.Left

-- abas
local farmTab   = Window:NewTab("⚔️ Farm")
local questTab  = Window:NewTab("📜 Quests")
local raidTab   = Window:NewTab("👹 Raids")
local bossTab   = Window:NewTab("💀 Boss")
local sbTab     = Window:NewTab("🐋 Sea Beast")
local factTab   = Window:NewTab("🏭 Factory")
local eliteTab  = Window:NewTab("👑 Elite")
local miscTab   = Window:NewTab("🔧 Misc")

-- toggles prontos
farmTab:NewToggle("Auto Farm Mobs", "", function(s) _G.farm = s end)
questTab:NewToggle("Auto Entregar Quests", "", function(s) _G.autoQuest = s end)
questTab:NewToggle("Auto Up Stats (MELHOR ROTACAO)", "", function(s) _G.autoStats = s end)
raidTab:NewToggle("Auto Completa Raids", "", function(s) _G.autoRaid = s end)
bossTab:NewToggle("Auto Matar Boss (Drop Equip)", "", function(s) _G.autoBoss = s end)
sbTab:NewToggle("Auto Sea Beast (Belly + Frag)", "", function(s) _G.autoSB = s end)
factTab:NewToggle("Auto Captura Factory", "", function(s) _G.autoFactory = s end)
eliteTab:NewToggle("Auto Elite Hunter (Fóssil+Corante)", "", function(s) _G.autoElite = s end)
miscTab:NewSlider("WalkSpeed", "", 500, 16, function(v) set_speed(v/16) end)
miscTab:NewSlider("JumpPower", "", 500, 50, function(v) game.Players.LocalPlayer.Character.Humanoid.JumpPower=v end)
