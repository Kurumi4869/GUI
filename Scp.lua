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

spawn(function()
  while wait() do
    pcall(function()
        if _G.AutoFBoss then
    for _, v in pairs(game:GetService("Workspace").Lives:GetChildren()) do
              	            if v.Humanoid.DisplayName == "Gojo [LV.2500]" or v.Humanoid.DisplayName == "Uraume [LV.7500]" or v.Humanoid.DisplayName == "Sukuna [LV.2500]" or v.Humanoid.DisplayName == "Kashimo [LV.3250]" or v.Humanoid.DisplayName == "Artoria [LV.3750]" or v.Humanoid.DisplayName == "Gojo [Unleashed] [LV.6500]" or v.Humanoid.DisplayName == "Rimuru [LV.6250]" or v.Humanoid.DisplayName == "Shank [LV.2500]" or v.Humanoid.DisplayName == "Sand Man [LV.2000]" or v.Humanoid.DisplayName == "Bomb Man [LV.1500]" or v.Humanoid.DisplayName == "Snow Bandit Leader [LV.2350]" then
                  if v.Humanoid.Health > 0 then

          repeat task.wait()
            TPCHEST()
EquipWeapon(ChooseWeapon)
            TP(v.HumanoidRootPart.CFrame * CFrame.new(0,4.5,0) * CFrame.Angles(math.rad(-90),0,0))
            click()
          until _G.AutoFBoss == false or v.Humanoid.Health <= 0
        end
end

end
        end
    end)
    end
end) 


_G.Distance = 5
_G.TWSpeed = 5000

  local repo = 'https://raw.githubusercontent.com/Kurumi4869/GUI/main/'
  
  local Library = loadstring(game:HttpGet(repo .. 'Kurumi_Linoria.lua'))()
  local ThemeManager = loadstring(game:HttpGet(repo .. 'Kurumi_Theme.lua'))()
  local SaveManager = loadstring(game:HttpGet(repo .. 'Kurumi_Save.lua'))()

function setwatermarktime()
    local sec = game:GetService("Players").LocalPlayer.PlayerGui.IgnoreSet.Interface.Time.Text
    Library:SetWatermark("Kurumi Hub | : "..sec)
end

spawn(function()
    while task.wait() do 
        pcall(function() setwatermarktime() 
        end) 
    end 
end)

  local Window = Library:CreateWindow({
    Title = 'Kurumi | Hub  ' ..'Executor '.. tostring(identifyexecutor()),
      --Title = 'Kurumi | Hub  ' ..'Executor '.. tostring(identifyexecutor())..Date,
      Center = true,
      AutoShow = true,
      TabPadding = 8,
      MenuFadeTime = 0.2
  })







local FarmBossGem = {
      GeneralBoss = Window:AddTab('General'),
  }

local GeneralBossCheck = FarmBossGem.GeneralBoss:AddLeftGroupbox('Check Boss')
local GeneralBossv1 = FarmBossGem.GeneralBoss:AddRightGroupbox('Farming')

GeneralBossCheck:AddLabel('[ Check Gojo ]')

local GojoC = GeneralBossCheck:AddLabel('Gojo Status')
        spawn(function()
            while wait() do
                pcall(function()
                    if game:GetService("Workspace").Lives:FindFirstChild("Gojo") then
                        GojoC:SetText("Gojo ✅ : "..(workspace.Lives.Gojo.Humanoid.Health))
                    else
                        GojoC:SetText("Gojo ❌ : Not Spawned")	
                    end
                end)
            end
        end)

GeneralBossCheck:AddLabel('[ Check Sukuna ]')

local SukunaC = GeneralBossCheck:AddLabel('Sukuna Status')
        spawn(function()
            while wait() do
                pcall(function()
                    if game:GetService("Workspace").Lives:FindFirstChild("Sukuna") then
                        SukunaC:SetText("Sukuna ✅: "..(workspace.Lives.Sukuna.Humanoid.Health))
                    else
                        SukunaC:SetText("Sukuna ❌ : Not Spawned")	
                    end
                end)
            end
        end)


GeneralBossCheck:AddLabel('[ Check Rimuru ]')

local RimuruC = GeneralBossCheck:AddLabel('Rimuru Status')
        spawn(function()
            while wait() do
                pcall(function()
                    if game:GetService("Workspace").Lives:FindFirstChild("Rimuru") then
                        RimuruC:SetText("Rimuru ✅: "..(workspace.Lives.Rimuru.Humanoid.Health))
                    else
                        RimuruC:SetText("Rimuru ❌ : Not Spawned")	
                    end
                end)
            end
        end)
        
GeneralBossCheck:AddLabel('[ Check Uraume ]')

local UraumeC = GeneralBossCheck:AddLabel('Uraume Status')
        spawn(function()
            while wait() do
                pcall(function()
                    if game:GetService("Workspace").Lives:FindFirstChild("Uraume") then
                        UraumeC:SetText("Uraume ✅: "..(workspace.Lives.Uraume.Humanoid.Health))
                    else
                        UraumeC:SetText("Uraume ❌ : Not Spawned")	
                    end
                end)
            end
        end)

GeneralBossCheck:AddLabel('[ Check Artoria ]')

local ArtoriaC = GeneralBossCheck:AddLabel('Rumuru Artoria')
        spawn(function()
            while wait() do
                pcall(function()
                    if game:GetService("Workspace").Lives:FindFirstChild("Artoria") then
                        ArtoriaC:SetText("Artoria ✅: "..(workspace.Lives.Artoria.Humanoid.Health))
                    else
                        ArtoriaC:SetText("Artoria ❌ : Not Spawned")	
                    end
                end)
            end
        end)
        
GeneralBossCheck:AddLabel('[ Check Kashimo ]')
        
        local KashimoC = GeneralBossCheck:AddLabel('Kashimo Status')
                spawn(function()
                    while wait() do
                        pcall(function()
                            if game:GetService("Workspace").Lives:FindFirstChild("Kashimo") then
                                KashimoC:SetText("Kashimo ✅: "..(workspace.Lives.Kashimo.Humanoid.Health))
                            else
                                KashimoC:SetText("Kashimo ❌ : Not Spawned")	
                            end
                        end)
                    end
                end)

  GeneralBossv1:AddDropdown('Select Weapon', {
      Values = {"Sword" , "Melee"},
      Default = "Melee",
      Multi = false,
      Text = 'Weapon',
      Callback = function(Value)
         ChooseWeapon = Value
      end
  })
    task.spawn(function()
        while wait() do
            pcall(function()
                if ChooseWeapon == "Melee" then
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.Name ==   "Combat" or v.Name == "Sukuna" or v.Name ==  "Gojo" or v.Name == "Gon" or v.Name ==   "Itadori" or v.Name ==   "Uraume" or v.Name ==   "Hakari" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                ChooseWeapon = v.Name
                            end
                        end
                    end
                elseif ChooseWeapon == "Sword" then
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.Name ==   "Saber" or v.Name ==  "Excalibur" or v.Name ==  "Cutlass" or v.Name ==   "Katana" or v.Name ==  "Yoru" or v.Name ==  "Kashimo's Pole Curse" or v.Name ==  "Cid's Sword" or v.Name ==  "Kashimo's Pole" then
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

GeneralBossv1:AddDropdown('Select Mode', {
      Values = {"Under", "Over", "Behind"},
      Default = "Over",
      Multi = false,
      Text = 'Weapon',
      Callback = function(v)
         _G.Method = v
      end
  })
   
  ]]
  
GeneralBossv1:AddToggle('Farm', {
      Text = 'Enable Boss + Gem',
      Default = false,
      Callback = function(v)
          _G.AutoFBoss = v
      end
  })

GeneralBossv1:AddToggle('Farm', {
      Text = 'WhiteScreen',
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


  local Fruit = {
      FruitSong = Window:AddTab('Fruit'),
      ['UI Settings'] = Window:AddTab('UI Settings'),
  }

local FruitM = Fruit.FruitSong:AddLeftGroupbox('Farming')

FruitM:AddDropdown('Select Fruit', {
      Values = {"Quake Fruit", "God Light Fruit", "Dark Flame Fruit"},
      Default = "",
      Multi = false,
      Text = 'Fruit',
      Callback = function(v)
         _G.FruitSelect = v
      end
  })


FruitM:AddToggle('Farm', {
      Text = 'Auto Random Fruit Select',
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



Library:SetWatermarkVisibility(true)

-- UI Settings
local MenuGroup = Fruit['UI Settings']:AddLeftGroupbox('Menu')

-- I set NoUI so it does not show up in the keybinds menu
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' })

Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- ThemeManager (Allows you to have a menu theme system)

-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- Adds our MenuKeybind to the ignore list
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Fruit['UI Settings'])

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Fruit['UI Settings'])

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
