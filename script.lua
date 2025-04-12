local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local User = game.Players.LocalPlayer
local increment = Vector3.new(50, 50, 50)
local Workspace = game.workspace
local incremen = Vector3.new(0.8, 0.8, 0.8)
local Localplr = game.Players.LocalPlayer.Name
local LocalplrModifies = game.Players.LocalPlayer
local workspace = game:GetService("Workspace")
local playersFolder = workspace:FindFirstChild("Players")
local V = 0.2
local Crosshair = game.Players.LocalPlayer.PlayerGui.HUD.Crosshair.Crosshair
local Dott = UDim2.new(0.8 , 0.8 , 0.8)
local Dottt = UDim2.new(0, 2, 0, 2)

print(Localplr)


local Window = Fluent:CreateWindow({
    Title = "👿RIx7 Defusal FPS" .. V,
    SubTitle = "by ◼FOPLORTE11◼",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Aqua",
    MinimizeKey = Enum.KeyCode.Z -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "Thank you for using",
        Content = "By FOPLORTE11",
        SubContent = "V " .. V, -- Optional
        Duration = nil -- Set to nil to make the notification not disappear
    })


        Fluent:Notify({
        Title = "Thank you for using",
        Content = "User:" .. Localplr,
        SubContent = " ", -- Optional
        Duration = nil -- Set to nil to make the notification not disappear
    })




    Tabs.Main:AddButton({
        Title = "Destroy",
        Description = "God mode",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Hitboxes",
                        Callback = function()
                           if playersFolder then
                              for _, playerModel in pairs(playersFolder:GetChildren()) do
                                if playerModel:IsA("Model") then
                                   local hitboxes = playerModel:FindFirstChild("Hitboxes")
                                   if hitboxes then
                                       hitboxes:Destroy()
                                       print("Модель Hitboxes удалена для игрока: " .. playerModel.Name)
                                   end
                               end
                           end
                       else
                           print("Папка 'Players' не найдена в Workspace.")
                       end
                    end
                    },
                    {
                        Title = "Detect Destroy",
                        Callback = function()
                           if playersFolder then
                              for _, playerModel in pairs(playersFolder:GetChildren()) do
                                if playerModel:IsA("Model") then
                                   local hitboxes = playerModel:FindFirstChild("Hitboxes")
                                   if hitboxes then
                                       hitboxes:Destroy()
                                       print("Модель Hitboxes удалена для игрока: " .. playerModel.Name)
                                   end
                               end
                           end
                       else
                           print("Папка 'Players' не найдена в Workspace.")
                       end
                    end
                    }
                }
            })
        end
    })



    if User.Name == "FoolsCheater" then
       Fluent:Notify({
       Title = "Fluent",
       Content = "Hi! Tester",
       Duration = 8
       })
	end


	if User.Name == "FOPLORTE11" then
       Fluent:Notify({
       Title = "Fluent",
       Content = "Hi! Creator",
       Duration = 8
       })
	end


    Tabs.Main:AddButton({
        Title = "Hitboxes refresh",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            game.Players.LocalPlayer.Character.Torso.Name = "Torsor"
                            wait(0.4)
                            game.Players.LocalPlayer.Character.Torsor.Name = "Torso"
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })



        Tabs.Main:AddButton({
        Title = "Plant",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                           while wait(0.5) do
                           game.ReplicatedStorage.Events.StartPlanting:FireServer()
                           end
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })




        Tabs.Main:AddButton({
        Title = "Anywhere Defuse",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                           while wait(0.5) do
                           game.ReplicatedStorage.Events.StartDefuse:FireServer()
                           end
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })








        Tabs.Main:AddButton({
        Title = "NameTag esp",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "Visual",
                Buttons = {
                    {
                        Title = "Enable",
                        Callback = function()
                            for i, v in pairs(workspace:GetDescendants()) do
                               if v.Name == "Nametag" then
                                  v.Enabled = true
                                  v.MaxDistance = 20000
                               end
                            end
                        end
                    },
                    {
                        Title = "Hide",
                        Callback = function()
                            for i, v in pairs(workspace:GetDescendants()) do
                               if v.Name == "Nametag" then
                                  v.Enabled = false
                                  v.MaxDistance = 200
                               end
                            end
                        end
                    }
                }
            })
        end
    })






    Tabs.Main:AddButton({
        Title = "Go to Bomb",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "TP",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Debris.PlantedC4.Handle.CFrame
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })













    Tabs.Settings:AddButton({
        Title = "Crosshair",
        Description = "Visual",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "Visual",
                Buttons = {
                    {
                        Title = "Visible",
                        Callback = function()
                           Crosshair.Visible = true
                           game.Players.LocalPlayer.PlayerGui.HUD.Crosshair.Enabled = true
                        end
                    },
                    {
                        Title = "Colorfoul Crosshair",
                        Callback = function()
                            while true do
                               Crosshair.Bottom.BackgroundColor3 = Color3.new(255, 85, 0)
                               Crosshair.Dot.BackgroundColor3 = Color3.new(255, 85, 0)
                               Crosshair.Left.BackgroundColor3 = Color3.new(255, 85, 0)
                               Crosshair.Right.BackgroundColor3 = Color3.new(255, 85, 0)
                               Crosshair.Top.BackgroundColor3 = Color3.new(255, 85, 0)
                               wait(0.1)
                               Crosshair.Bottom.BackgroundColor3 = Color3.new(31, 18, 170)
                               Crosshair.Dot.BackgroundColor3 = Color3.new(31, 18, 170)
                               Crosshair.Left.BackgroundColor3 = Color3.new(31, 18, 170)
                               Crosshair.Right.BackgroundColor3 = Color3.new(31, 18, 170)
                               Crosshair.Top.BackgroundColor3 = Color3.new(31, 18, 170)
                               wait(0.1)
                            end
                        end
                    }
                }
            })
        end
    })






        Tabs.Settings:AddButton({
        Title = "Crosshair loop",
        Description = "Visual",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "Visual",
                Buttons = {
                    {
                        Title = "Visible loop",
                        Callback = function()
                           Crosshair.Visible = true
                           while true do
                               wait(1)
                               if Crosshair.Visible == false then
                                  Crosshair.Visible = true
                               end
                            end
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                           print("Cancel")
                        end
                    }
                }
            })
        end
    })



        Tabs.Settings:AddButton({
        Title = "Big Dot",
        Description = "Visual",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "Visual",
                Buttons = {
                    {
                        Title = "Big",
                        Callback = function()
                           Crosshair.Dot.Size = Dott
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                           print("Cancel")
                        end
                    }
                }
            })
        end
    })



        Tabs.Settings:AddButton({
        Title = "normal Dot",
        Description = "Visual",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "Visual",
                Buttons = {
                    {
                        Title = "Small",
                        Callback = function()
                           Crosshair.Dot.Size = Dottt
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                           print("Cancel")
                        end
                    }
                }
            })
        end
    })


        Tabs.Settings:AddButton({
        Title = "Hide crosshair lines",
        Description = "Visual",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "Visual",
                Buttons = {
                    {
                        Title = "Visible loop",
                        Callback = function()
                           Crosshair.Visible = true
                           while true do
                               wait(1)
                               if Crosshair.Visible == false then
                                  Crosshair.Dot.Size = Dott
                               end
                            end
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                           print("Cancel")
                        end
                    }
                }
            })
        end
    })



    Tabs.Main:AddButton({
        Title = "CTSpawn",
        Description = "Teleport",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "TSpawn",
                        Callback = function()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.CTSpawns.TSpawn.CFrame
                        end
                    },
                    {
                        Title = "CTSpawn",
                        Callback = function()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.CTSpawns.CTSpawn.CFrame
                        end
                    }
                }
            })
        end
    })


    Tabs.Main:AddButton({
        Title = "CTSpawn",
        Description = "Teleport",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "CTSpawn1",
                        Callback = function()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.CTSpawns.CTSpawn1.CFrame
                        end
                    },
                    {
                        Title = "CTSpawn",
                        Callback = function()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.CTSpawns.Part.CFrame
                        end
                    }
                }
            })
        end
    })


	    Tabs.Main:AddButton({
        Title = "Esp",
        Description = "Script",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Execute",
                        Callback = function()
                           loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/refs/heads/main/Show%20esp.lua"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("cancel")
                        end
                    }
                }
            })
        end
    })

	    Tabs.Main:AddButton({
        Title = "Another Script",
        Description = "Script",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Execute",
                        Callback = function()
                           loadstring(game:HttpGet("https://raw.githubusercontent.com/kakashka228777/main/refs/heads/main/Protected_2851260516142282.lua"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("cancel")
                        end
                    }
                }
            })
        end
    })


		Tabs.Main:AddButton({
        Title = "Big hitboxes",
        Description = "Hitbox",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "Hitboxes",
                Buttons = {
                    {
                        Title = "Execute",
                        Callback = function()
                           for _, part in pairs(Workspace:GetDescendants()) do
	                           if part:IsA("Part") and part.Name == "Head" then
                                  game.Workspace.Players.FOPLORTE11.Head.Size = incremen
		                          part.Size = part.Size + increment
								  part.Transparency = 0.6
	                           end
                           end
						end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("cancel")
                        end
                    }
                }
            })
        end
    })



		Tabs.Main:AddButton({
        Title = "Small hitboxes",
        Description = "Hitbox",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "Hitboxes",
                Buttons = {
                    {
                        Title = "Execute",
                        Callback = function()
                           for _, part in pairs(Workspace:GetDescendants()) do
	                           if part:IsA("Part") and part.Name == "Head" then
                                  game.Workspace.Players.FOPLORTE11.Head.Size = incremen
		                          part.Size = incremen
								  part.Transparency = 1
	                           end
                           end
						end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("cancel")
                        end
                    }
                }
            })
        end
    })

	
		Tabs.Main:AddButton({
        Title = "HitboxTP",
        Description = "Hitbox",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "Hitboxes",
                Buttons = {
                    {
                        Title = "Execute",
                        Callback = function()
                        while wait(0.5) do
                        for i,v in pairs(game:GetDescendants()) do
                        if v.Name == "HumanoidRootPart" then
                        while wait(0.5) do
                        v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        end
                        end
                        end
                        end
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("cancel")
                        end
                    }
                }
            })
        end
    })

   Tabs.Main:AddButton({
        Title = "Hitboxes refresh",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Check",
                        Callback = function()
                           if game.Players.LocalPlayer.TeamColor == White then
                            print("h")
                           end
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })






  

    Input:OnChanged(function()
        print("Input updated:", Input.Value)
    end)
end


-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
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

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "Fluent",
    Content = "Welcome! " .. Localplr,
    Duration = 8
})

Fluent:Notify({
    Title = "Fluent",
    Content = "Use 'E' to close and open script",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()



