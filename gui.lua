local omni = loadstring(game:HttpGet("https://raw.githubusercontent.com/killersess/omn/main/omniLibrary.lua"))()

local UI = omni.new({
    Name = "omnilocuaHub";
    ConfigFolder = "cqWlWmwGpYyOb2VnowB9";
    Credit = "Made By omnilocua";
    Color = Color3.fromRGB(255,255,0);
    Bind = "LeftControl";
    UseLoader = true;
    FullName = "omnilocuaHub";
    CheckKey = function(inputtedKey)
        return inputtedKey=="o9z849PuRvT7LVrJfVtrceO4BUsXb63s"
    end;
    Discord = "https://discord.gg/Hkh38csgRX";
})

UI:Notify({
  Title = "omnilocuaHub";
  Content = "Toggle Hub (LeftControl)";
})

local Pages = UI:CreatePage("Ragdoll Engine")

local Section = Pages:CreateSection("Ragdoll Engine (Toggles)")

Section:CreateToggle({
    Name = "Anti Kill";
    Flag = "MyToggle";
    Default = false;
    Callback = function(state)
    if state then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/omnilocua/omnilocua/main/Anti%20Kill.lua"))()
    elseif not state then
    game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end
    end;
})

Section:CreateToggle({
    Name = "Anti Ragdoll";
    Flag = "MyToggle2";
    Default = false;
    Callback = function(state)
if state then
plrs = game:GetService("Players")
plr = plrs.LocalPlayer
char = plr.Character
char.HumanoidRootPart.Size = Vector3.new(1000000, char.HumanoidRootPart.Size.Y, 1000000)
for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
   if string.find(v.Name, "Pushed") then
       v.Disabled = true
   end
end
for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
   if string.find(v.Name, "RagdollMe") then
       v.Disabled = true
   end
end
game.Players.LocalPlayer.Character.Humanoid.Died:connect(function()
plrs = game:GetService("Players")
plr = plrs.LocalPlayer
char = plr.Character
char.HumanoidRootPart.Size = Vector3.new(0.98, 1.62, 0.7225, char.HumanoidRootPart.Size.Y, 0.98, 1.62, 0.7225)
end)
elseif not state then
plrs = game:GetService("Players")
plr = plrs.LocalPlayer
char = plr.Character
char.HumanoidRootPart.Size = Vector3.new(0.98, 1.62, 0.7225, char.HumanoidRootPart.Size.Y, 0.98, 1.62, 0.7225)
for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
   if string.find(v.Name, "Pushed") then
       v.Disabled = false
   end
end
for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
   if string.find(v.Name, "RagdollMe") then
       v.Disabled = false
   end
end
end
    end;
})

Section:CreateToggle({
    Name = "Anti Fling";
    Flag = "MyToggle3";
    Default = false;
    Callback = function(state)
if state then
loadstring(game:HttpGet("https://raw.githubusercontent.com/omnilocua/omnilocua/main/Anti%20Fling.lua"))()
elseif not state then
local h, n = sethiddenprop or sethiddenproperty or set_hidden_prop, "Default^0^511"
h(workspace,"CollisionGroups",n)

_G.Activo = false
repeat wait()
for i, v in pairs(game.Players:GetDescendants()) do
if v.Name == "InSide" then
v:Destroy()
end
end
for i, v in pairs(game.Players:GetDescendants()) do
if v.Name == "Cap" then
v:Destroy()
end
end
until _G.Activo == false
end
    end;
})

Section:CreateToggle({
    Name = "Potion Fling";
    Flag = "MyToggle4";
    Default = false;
    Callback = function(state)
if state then
loadstring(game:HttpGet("https://raw.githubusercontent.com/wsMalware/Malware/main/enable.lua"))()
elseif not state then
loadstring(game:HttpGet("https://raw.githubusercontent.com/wsMalware/Malware/main/disable.lua"))()
end
    end;
        Warning = "Need Potion";
    WarningIcon = 10896788344;
})

local Section2 = Pages:CreateSection("Ragdoll Engine (Need Potion And Push)")

Section2:CreateInteractable({
    Name = "Crash";
    ActionText = "Execute";
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/omnilocua/omnilocua/main/Crash.lua"))()
    end;
    Warning = "Crash: To use this you must first take the potion and see if \n the effect gives you a big head, if it doesn't, restart your \n character and try again until you get a big head, after that \n just hit the crash option and wait 1 minute without touching \n any keys or you will bug the crash. \n\n Your avatar must be similar to this person's avatar: \n https://web.roblox.com/users/3487764435/profile \n User: iDecalsRoblox";
    WarningIcon = 10896788344;
})

local Section3 = Pages:CreateSection("Ragdoll Engine (Button)")

Section3:CreateButton({
    Name = "Hat Fling";
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/omnilocua/omnilocua/main/Hat%20Fling.lua"))()
    end;
    Warning = "You can use it as normal, or drink the potion and make the hat even bigger and the fling even stronger.";
    WarningIcon = 10896788344;
})

Section2:CreateInteractable({
    Name = "Kill";
    ActionText = "Execute";
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/omnilocua/omnilocua/main/Kill.lua"))()
    end;
    Warning = "Kill: For this to work you must first have bought the push\n and the potion, otherwise it will be full of errors.";
    WarningIcon = 10896788344;
})

Section2:CreateInteractable({
    Name = "Kill Fling";
    ActionText = "Execute";
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/omnilocua/omnilocua/main/Kill%20Fling.lua"))()
    end;
    Warning = "Kill Fling: This basically is almost the same as the kill, \n the only thing that changes is that you can kill people \n bigger than your character, remember that if that person is \n not walking, this will not work, the target must be moving.";
    WarningIcon = 10896788344;
})

Section3:CreateButton({
    Name = "Character Fling";
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/omnilocua/omnilocua/main/Touch%20Fling.lua"))()
    end;
    Warning = "Toggle X";
    WarningIcon = 10896788344;
})

Section3:CreateButton({
    Name = "Invisible Character";
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/omnilocua/omnilocua/main/Invisible.lua"))()
    end;
})

local Pages2 = UI:CreatePage("Character")

local Section = Pages2:CreateSection("Character (Sliders)")

Section:CreateSlider({
    Name = "WalkSpeed";
    Flag = "MySlider";
    Min = 1;
    Max = 400;
    AllowOutOfRange = true;
    Digits = 3;
    Default = 16;
    Callback = function(arg)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = arg
    end;
})

Section:CreateSlider({
    Name = "JumpPower";
    Flag = "MySlider2";
    Min = 50;
    Max = 400;
    AllowOutOfRange = true;
    Digits = 3;
    Default = 50;
    Callback = function(arg)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = arg
    end;
})

local Section2 = Pages2:CreateSection("Character (Execute)")

Section2:CreateInteractable({
    Name = "Fe Small";
    ActionText = "Execute";
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/wsMalware/Malware/main/small.lua'))()
    end;
})

Section2:CreateInteractable({
    Name = "Client Custom";
    ActionText = "Execute";
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/wsMalware/Malware/main/client.lua"))()
    end;
})

local Pages3 = UI:CreatePage("Others")

local Section = Pages3:CreateSection("Others (Execute)")

Section:CreateInteractable({
    Name = "Infinite Yield";
    ActionText = "Execute";
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end;
})

Section:CreateInteractable({
    Name = "Make Bans (Toggle N)";
    ActionText = "Execute";
    Callback = function()
        getgenv().show = "N"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/mogolicoo/techware-shit/main/outfit-changer-gui.lua", true))()
    end;
    Warning = "See: https://streamable.com/v91ko7";
    WarningIcon = 10896788344;
})

loadstring(game:HttpGet("https://raw.githubusercontent.com/omnilocua/omnilocua/main/Creators.lua"))()
