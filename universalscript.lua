local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Universal Script", "BloodTheme")

--MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
local MainSection2 = Main:NewSection("Screen")
local MainSection3 = Main:NewSection("RTX | DONT USE if slow pc")
local Main2 = Window:NewTab("FPSCAP")
local FpsSection = Main2:NewSection("FPSCAP")
local Main3 = Window:NewTab("Script Launcher")
local scriptlaunchersection = Main3:NewSection("ScriptLauncher")
local Main4 = Window:NewTab("Credits")
local creditsection = Main4:NewSection("Credits")
local LabelSectionMain1 = MainSection:NewLabel("If You Deactivated The Anti Sit You cant jump")
--Main
MainSection:NewButton("AntiAfk", "Enable AntiAfk", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/athuria/anti-afk-no-ui/master/antiafk.lua", true))()
wait(1)
    game.StarterGui:SetCore("SendNotification", {
    Title = "Anti Afk Activated!"; -- the title (ofc)
    Text = "xD"; -- what the text says (ofc)
    Icon = "rbxassetid://11130690937"; -- the image if u want. 
    Duration = 5; -- how long the notification should in secounds
    })
end)
MainSection:NewButton("AntiAfk With UI", "Enable Antiafk", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/athuria/anti-afk/master/antiafk.lua", true))()
end)
MainSection:NewButton("Serverstats", "Enable ServerStats", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/htt-py/92db22eeefad0042a6da9117501ad827/raw/ServerStats.luau", true))()
end)
MainSection:NewButton("FpsBoost", "EnableFpsboost 1-5sec", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/athuria/FpsBoosts/master/FpsBoosts.lua", true))()
end)
MainSection:NewToggle("AntiSit", "Antisit", function(state)
    if state then
        local RunService = game:GetService("RunService")
function antiSit()
if game.Players.LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Seated then 
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
end
RunService:BindToRenderStep("tempBinding", 1000, antiSit)
game.StarterGui:SetCore("SendNotification", {
    Title = "Anti Sit Activated!"; -- the title (ofc)
    Text = "xD"; -- what the text says (ofc)
    Icon = "rbxassetid://11130690937"; -- the image if u want. 
    Duration = 5; -- how long the notification should in secounds
    })
	else
      local RunService = game:GetService("RunService")
function antiSit()
if game.Players.LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Seated then 
game.Players.LocalPlayer.Character.Humanoid.Jump = false
end
end
RunService:BindToRenderStep("tempBinding", 1000, antiSit)
game.StarterGui:SetCore("SendNotification", {
    Title = "Anti Sit Deactivated!"; -- the title (ofc)
    Text = "xD"; -- what the text says (ofc)
    Icon = "rbxassetid://11130690937"; -- the image if u want. 
    Duration = 5; -- how long the notification should in secounds
    })
     end
end)
MainSection:NewLabel("If You Deactivated The Anti Sit You cant jump")

--RTX
MainSection3:NewButton("RTX ON", "Turn on The Rtx", function()
    getgenv().mode = "Autumn" -- Choose from Summer and Autumn
            settings().Rendering.QualityLevel = 10
            local a = game.Lighting
            a.Ambient = Color3.fromRGB(33, 33, 33)
            a.Brightness = 6.67
            a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
            a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
            a.EnvironmentDiffuseScale = 0.105
            a.EnvironmentSpecularScale = 0.522
            a.GlobalShadows = true
            a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
            a.ShadowSoftness = 0.04
            a.GeographicLatitude = -15.525
            a.ExposureCompensation = 0.75
            local b = Instance.new("BloomEffect", a)
            b.Enabled = true
            b.Intensity = 0.04
            b.Size = 1900
            b.Threshold = 0.915
            local c = Instance.new("ColorCorrectionEffect", a)
            c.Brightness = 0.176
            c.Contrast = 0.39
            c.Enabled = true
            c.Saturation = 0.2
            c.TintColor = Color3.fromRGB(217, 145, 57)
            if getgenv().mode == "Summer" then
                c.TintColor = Color3.fromRGB(255, 220, 148)
            elseif getgenv().mode == "Autumn" then
                c.TintColor = Color3.fromRGB(217, 145, 57)
            else
                warn("No mode selected!")
                print("Please select a mode")
                b:Destroy()
                c:Destroy()
            end
            local d = Instance.new("DepthOfFieldEffect", a)
            d.Enabled = true
            d.FarIntensity = 0.077
            d.FocusDistance = 21.54
            d.InFocusRadius = 20.77
            d.NearIntensity = 0.277
            local e = Instance.new("ColorCorrectionEffect", a)
            e.Brightness = 0
            e.Contrast = -0.07
            e.Saturation = 0
            e.Enabled = true
            e.TintColor = Color3.fromRGB(255, 247, 239)
            local e2 = Instance.new("ColorCorrectionEffect", a)
            e2.Brightness = 0.2
            e2.Contrast = 0.45
            e2.Saturation = -0.1
            e2.Enabled = true
            e2.TintColor = Color3.fromRGB(255, 255, 255)
            local s = Instance.new("SunRaysEffect", a)
            s.Enabled = true
            s.Intensity = 0.01
            s.Spread = 0.146
end)
MainSection3:NewButton("RTX OFF", "Turn Off The RTX", function()
    local light = game.Lighting
	for i, v in pairs(light:GetChildren()) do
		v:Destroy()
	end

	local ter = workspace.Terrain
	local color = Instance.new("ColorCorrectionEffect")
	local bloom = Instance.new("BloomEffect")
	local sun = Instance.new("SunRaysEffect")
	local blur = Instance.new("BlurEffect")

	color.Parent = light
	bloom.Parent = light
	sun.Parent = light
	blur.Parent = light

	

	local config = {

		Terrain = true;
		ColorCorrection = true;
		Sun = true;
		Lighting = true;
		BloomEffect = true;

	}

	-- settings {

	color.Enabled = false
	color.Contrast = 0.15
	color.Brightness = 0.1
	color.Saturation = 0.25
	color.TintColor = Color3.fromRGB(255, 222, 211)

	bloom.Enabled = false
	bloom.Intensity = 0.1

	sun.Enabled = false
	sun.Intensity = 0.2
	sun.Spread = 1

	bloom.Enabled = false
	bloom.Intensity = 0.05
	bloom.Size = 32
	bloom.Threshold = 1

	blur.Enabled = false
	blur.Size = 6

	-- settings }


	if config.ColorCorrection then
		color.Enabled = true
	end


	if config.Sun then
		sun.Enabled = true
	end


	if config.Terrain then
		-- settings {
		ter.WaterColor = Color3.fromRGB(10, 10, 24)
		ter.WaterWaveSize = 0.1
		ter.WaterWaveSpeed = 22
		ter.WaterTransparency = 0.9
		ter.WaterReflectance = 0.05
		-- settings }
	end


	if config.Lighting then
		-- settings {
		light.Ambient = Color3.fromRGB(0, 0, 0)
		light.Brightness = 4
		light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
		light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
		light.ExposureCompensation = 0
		light.FogColor = Color3.fromRGB(132, 132, 132)
		light.GlobalShadows = true
		light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
		light.Outlines = false
		-- settings }
	end
end)
--white screen
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
scriptlaunchersection:NewButton("Infiniteyield", "FE ADMINS COMMANDS", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)
scriptlaunchersection:NewButton("DarkDex", "DarkDex", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4", true))()
end)
scriptlaunchersection:NewButton("RemoteSpy", "RemoteSpy", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/bCghX33W", true))()
end)
scriptlaunchersection:NewLabel("MoreScript soon^^")

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
creditsection:NewButton("InfiniteYield", "ClickToCopy", function()
wait()
    setclipboard("text going to clipboard goes here")
    toclipboard("https://github.com/EdgeIY")
    game.StarterGui:SetCore("SendNotification", {
    Title = "GithubLINK COPY!"; -- the title (ofc)
    Text = "Infinite yield copy!!"; -- what the text says (ofc)
    Icon = "rbxassetid://11130690937"; -- the image if u want. 
    Duration = 5; -- how long the notification should in secounds
    })
end)
creditsection:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.RightAlt, function()
    Library:ToggleUI()
end)
