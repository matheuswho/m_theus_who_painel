-- delta_cheat/delta/init.lua

-- Delta Executor aceita loadstring direto; só garante que readfile funcione
if not readfile then
    function readfile(p)
        return game:HttpGet("https://raw.githubusercontent.com/YOUR_USER/YOUR_REPO/main/"..p)
    end
end
