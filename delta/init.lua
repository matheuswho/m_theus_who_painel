if not readfile then
    function readfile(p)
        return game:HttpGet("https://raw.githubusercontent.com/matheuswho/m_theus_who_painel/main/"..p)
    end
end
if game.HttpGet then
    local url = "https://raw.githubusercontent.com/matheuswho/m_theus_who_painel/main/delta/init.lua"
    local scriptContent = game:HttpGet(url)
    loadstring(scriptContent)()
else
    warn("HTTP requests não estão habilitadas.")
end
