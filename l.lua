-- 📜 loaderinternal.lua (ระบบตรวจ Key)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer


local function getFakeHWID())
    if gethwid then return gethwid() end
    if syn and syn.crypt and syn.crypt.hash then
        return syn.crypt.hash(tostring(LocalPlayer.UserId))
    end


    return tostring(LocalPlayer.UserId) .. tostring(game.JobId)
end

local HWID = getFakeHWID()


local usedKeys = {
    ["AgigkranKeigjsevsiehgjbdrpekssL"] = nil,
    ["HopOMavcUfrihseiflKKopaytewqscs"] = nil,
    ["PyteahcjPueifjjahvnbiauwjfigjsS"] = nil,
    ["LayrlfjvnakpwifrjQjfitooiIIwkfg"] = nil,
}


if not Token_Key then
    LocalPlayer:Kick("❌ กรุณาใส่ Key ก่อนใช้งาน")
    return
end

if not usedKeys[Token_Key] then
    LocalPlayer:Kick("❌ Key  Not Working ")
    return
end

if usedKeys[Token_Key] == nil then
    usedKeys[Token_Key] = HWID
end


if usedKeys[Token_Key] ~= HWID then
    LocalPlayer:Kick("❌ Key นื่น")
    return
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/Premierlol/Da-Hood-Script-Synix/refs/heads/main/Dahood-Synix.lua"))()
