local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Universal Script", "BloodTheme")

--MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
local MainSection2 = Main:NewSection("Screen")
local Main2 = Window:NewTab("FPSCAP")
local FpsSection = Main2:NewSection("FPSCAP")
local Main3 = Window:NewTab("Script Launcher")
local scriptlaunchersection = Main3:NewSection("ScriptLauncher")
local Main4 = Window:NewTab("Credits")
local creditsection = Main4:NewSection("Credits")

--Main
MainSection:NewButton("AntiAfk", "Enable AntiAfk", function()
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
MainSection:NewButton("Serverstats", "Enable ServerStats", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/htt-py/92db22eeefad0042a6da9117501ad827/raw/ServerStats.luau", true))()
end)
MainSection:NewButton("FpsBoost", "EnableFpsboost 1-5sec", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/athuria/FpsBoosts/master/FpsBoosts.lua", true))()
end)
MainSection2:NewButton("WhiteScreen", "EnableWhiteScreen", function()
    game:GetService("RunService"):Set3dRenderingEnabled(false)
end)
MainSection2:NewButton("NormalScreen", "DisableWhiteScreen", function()
    game:GetService("RunService"):Set3dRenderingEnabled(true)
end)

--Main2/FpsCap
FpsSection:NewButton("15Fps", "FpsCap15", function()
    setfpscap(15)
end)
FpsSection:NewButton("30Fps", "FpsCap30", function()
    setfpscap(30)
end)
FpsSection:NewButton("60Fps", "FpsCap60", function()
    setfpscap(60)
end)
FpsSection:NewButton("70Fps", "FpsCap70", function()
    setfpscap(70)
end)
FpsSection:NewButton("120Fps", "FpsCap120", function()
    setfpscap(120)
end)

--Main3
scriptlaunchersection:NewButton("InfiniteYIELD IY", "FE ADMINS COMMANDS", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)
scriptlaunchersection:NewLabel("MoreScriptSOON^^")

--Main4
creditsection:NewButton("bateman#8865", "ClickToCopy", function()
wait()
    setclipboard("text going to clipboard goes here")
    toclipboard("bateman#8865")
    game.StarterGui:SetCore("SendNotification", {
    Title = "Discord Tags Copied"; -- the title (ofc)
    Text = "if u have some thing dm me"; -- what the text says (ofc)
    Icon = "rbxassetid://11130690937"; -- the image if u want. 
    Duration = 5; -- how long the notification should in secounds
    })
end)
creditsection:NewButton("EDGEIY", "ClickToCopy", function()
wait()
    setclipboard("text going to clipboard goes here")
    toclipboard("https://github.com/EdgeIY")
    game.StarterGui:SetCore("SendNotification", {
    Title = "GithubLINK COPY!"; -- the title (ofc)
    Text = "EdgeIY link copy!"; -- what the text says (ofc)
    Icon = "rbxassetid://11130690937"; -- the image if u want. 
    Duration = 5; -- how long the notification should in secounds
    })
end)
creditsection:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.LeftAlt, function()
    Library:ToggleUI()
end)
