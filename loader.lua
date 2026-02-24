-- delta_cheat/loader.lua

-- 1. Carrega funções globais
loadstring(readfile("delta_cheat/core/globals.lua"))()

-- 2. Detecta o jogo pelo JobId ou nome
local placeId = game.PlaceId
local supported = {
    [2753915549] = "blox_fruits"
}

-- 3. Se houver suporte, carrega o módulo específico
if supported[placeId] then
    local path = "delta_cheat/games/"..supported[placeId].."/main.lua"
    loadstring(readfile(path))()
else
    warn("Jogo não suportado; apenas globais ativas.")
end
