local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local V = '0.1 Beta'
local PlrName = game.Players.LocalPlayer.Name

local Window = Fluent:CreateWindow({
    Title = "🕐RIx7🕐 " ..V,
    SubTitle = "by ◼FOPLORTE11◼",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.F -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "〽Main", Icon = "" }),
    Player = Window:AddTab({ Title = "🔱Player", Icon = "" }),
    Visual = Window:AddTab({ Title = "👁Visual", Icon = "" }),
    Settings = Window:AddTab({ Title = "🔘Settings", Icon = "" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "◼By FOPLORTE11◼",
        Content = "💓Ty for using " ..PlrName,
        SubContent = V, -- Optional
        Duration = nil-- Set to nil to make the notification not disappear
    })


        Tabs.Player:AddButton({
        Title = "◼Go to◼",
        Description = "Crate,Cancel",
        Callback = function()
            Window:Dialog({
                Title = "TP",
                Content = "Teleport",
                Buttons = {
                    {
                        Title = "◼to Crate◼",
                        Callback = function()
                           if game.Workspace.Crates.Crate then
                              game.Players.FOPLORTE11.Character.HumanoidRootPart.CFrame = game.Workspace.Crates.Crate.CFrame
                           end
                        end
                    },
                    {
                        Title = "❌Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })




        Tabs.Player:AddButton({
        Title = "◼AutoPickaxe◼",
        Description = "Auto,Cancel",
        Callback = function()
            Window:Dialog({
                Title = "Auto",
                Content = "Auto",
                Buttons = {
                    {
                        Title = "◼to Crate◼",
                        Callback = function()
                           while task.wait() do
                               local args = {
                                   [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pick Axe")
                               }
                               game:GetService("ReplicatedStorage").PickAxeSwing:FireServer(unpack(args))
                            end
                        end
                    },
                    {
                        Title = "❌Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })






        Tabs.Player:AddButton({
        Title = "◼AutoAxe◼",
        Description = "Auto,Cancel",
        Callback = function()
            Window:Dialog({
                Title = "Auto",
                Content = "Auto",
                Buttons = {
                    {
                        Title = "◼Enable◼",
                        Callback = function()
                           while task.wait() do
                               local args = {
                                   [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Axe")
                               }
                               game:GetService("ReplicatedStorage").AxeSwing:FireServer(unpack(args))
                            end
                        end
                    },
                    {
                        Title = "❌Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })





        Tabs.Player:AddButton({
        Title = "◼Go to◼",
        Description = "HouseGui,Cancel",
        Callback = function()
            Window:Dialog({
                Title = "TP",
                Content = "Teleport",
                Buttons = {
                    {
                        Title = "◼to HouseGui◼",
                        Callback = function()
                           game.Players.FOPLORTE11.Character.HumanoidRootPart.CFrame = game.Workspace.Target.CFrame
                        end
                    },
                    {
                        Title = "❌Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })



        Tabs.Player:AddButton({
        Title = "◼Go to◼",
        Description = "BerryBush,Cancel",
        Callback = function()
            Window:Dialog({
                Title = "TP",
                Content = "Teleport",
                Buttons = {
                    {
                        Title = "◼to Bush with Berry◼",
                        Callback = function()
                           local Bush = workspace.TerrainParts.BushAssets.BerryBush
                           game.Players.FOPLORTE11.Character.HumanoidRootPart.CFrame = workspace.BlueBerryBushPlant.Phase3.MeshPart.CFrame
                           if workspace.TerrainParts.BushAssets:GetChildren()[57].Union.ProximityPrompt == true then
                              game.Players.FOPLORTE11.Character.HumanoidRootPart.CFrame = Bush.Union.CFrame
                           end
                        end
                    },
                    {
                        Title = "❌Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })





        Tabs.Player:AddButton({
        Title = "◼Go to◼",
        Description = "SmallTree,Cancel",
        Callback = function()
            Window:Dialog({
                Title = "TP",
                Content = "Teleport",
                Buttons = {
                    {
                        Title = "◼SmallTree◼",
                        Callback = function()
                           local SmallTree = workspace.TerrainParts.Trees.SmallTree.Union
                           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SmallTree.CFrame
                        end
                    },
                    {
                        Title = "❌Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })


        Tabs.Player:AddButton({
        Title = "◼Go to◼",
        Description = "Tree,Cancel",
        Callback = function()
            Window:Dialog({
                Title = "TP",
                Content = "Teleport",
                Buttons = {
                    {
                        Title = "◼SmallTree◼",
                        Callback = function()
                           local Tree = workspace.TerrainParts.Trees.Tree.Union
                           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Tree.CFrame
                        end
                    },
                    {
                        Title = "❌Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })


        Tabs.Player:AddButton({
        Title = "◼AutoUpgradedAxe◼",
        Description = "Auto,Cancel",
        Callback = function()
            Window:Dialog({
                Title = "Auto",
                Content = "Auto",
                Buttons = {
                    {
                        Title = "◼Enable◼",
                        Callback = function()
                            while task.wait() do
                                local args = {
                                    [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Improved Axe")
                                }
                                game:GetService("ReplicatedStorage").UpgradedAxeSwing:FireServer(unpack(args))
                             end
                        end
                    },
                    {
                        Title = "❌Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })





        Tabs.Player:AddButton({
        Title = "◼AutoFish◼",
        Description = "AutoFish,Cancel",
        Callback = function()
            Window:Dialog({
                Title = "TP",
                Content = "Teleport",
                Buttons = {
                    {
                        Title = "◼Enable◼",
                        Callback = function()
                            while task.wait() do
                                local args = {
                                    [1] = game:GetService("Players").LocalPlayer.Character,
                                    [2] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishing Pole"),
                                    [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishing Pole").Hook
                                }
                                game:GetService("ReplicatedStorage").Fishing:FireServer(unpack(args))
                             end
                        end
                    },
                    {
                        Title = "❌Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

        Tabs.Player:AddButton({
        Title = "◼Go to◼",
        Description = "Witch,Cancel",
        Callback = function()
            Window:Dialog({
                Title = "TP",
                Content = "Teleport",
                Buttons = {
                    {
                        Title = "◼TP◼",
                        Callback = function()
                           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.WitchTree.Union.CFrame
                        end
                    },
                    {
                        Title = "❌Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })







        Tabs.Player:AddButton({
        Title = "◼AutoSpearAttack◼",
        Description = "Enable,Cancel",
        Callback = function()
            Window:Dialog({
                Title = "Auto",
                Content = "Auto",
                Buttons = {
                    {
                        Title = "◼Enable◼",
                        Callback = function()
                           while wait() do
                               local args = {
                                   [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stone Spear")
                               }
                               game:GetService("ReplicatedStorage").SpearAttack:FireServer(unpack(args))
                            end
                        end
                    },
                    {
                        Title = "❌Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })


        Tabs.Player:AddButton({
        Title = "◼AutoWoodSpearAttack◼",
        Description = "Enable,Cancel",
        Callback = function()
            Window:Dialog({
                Title = "Auto",
                Content = "Auto",
                Buttons = {
                    {
                        Title = "◼Enable◼",
                        Callback = function()
                           while wait () do
                               local args = {
                                   [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Wooden Spear")
                               }
                               game:GetService("ReplicatedStorage").SpearAttack:FireServer(unpack(args))
                            end
                        end
                    },
                    {
                        Title = "❌Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })












        Tabs.Visual:AddButton({
        Title = "MakeHouseGUi",
        Description = "Visual",
        Callback = function()
            Window:Dialog({
                Title = "TP",
                Content = "Teleport",
                Buttons = {
                    {
                        Title = "◼Spawn◼",
                        Callback = function()
                           local player = game.Players.LocalPlayer
                           local character = player.Character or player.CharacterAdded:Wait() -- Ожидание, пока персонаж игрока загрузится
                           local humanoidRootPart = character:WaitForChild("HumanoidRootPart") -- Получаем HumanoidRootPart персонажа
                           local function spawnPart()
                           local part = Instance.new("Part") -- Создаем новый объект Part
                           part.Name = "Target"
                           part.Shape = "Ball"
                           part.Transparency = 0.6
                           part.Material = Enum.Material.Neon
                           part.BrickColor = BrickColor.new(117, 0, 0)
                           part.CanCollide = false
                           part.Size = Vector3.new(1, 1, 1) -- Устанавливаем размер части
                           part.Position = humanoidRootPart.Position + Vector3.new(0, 3, 0) -- Устанавливаем позицию, чуть выше HumanoidRootPart
                           part.Anchored = true -- Делаем часть неподвижной
                           part.Parent = workspace -- Добавляем часть в Workspace

                           local billboardGui = Instance.new("BillboardGui")
                           billboardGui.Adornee = part -- Указываем, что этот BillboardGui будет прикреплен к нашему Part
                           billboardGui.Size = UDim2.new(0, 200, 0, 100) -- Устанавливаем размеры BillboardGui
                           billboardGui.StudsOffset = Vector3.new(0, 3, 0) -- Смещение по оси Y, чтобы над Part
                           billboardGui.AlwaysOnTop = true

                           local textLabel = Instance.new("TextLabel")
                           textLabel.Size = UDim2.new(1, 0, 1, 0) -- Заполняем все пространство BillboardGui
                           textLabel.BackgroundTransparency = 1 -- Делаем фон прозрачным
                           textLabel.Text = "House"-- Устанавливаем текст
                           textLabel.TextColor3 = Color3.new(1, 1, 1) -- Устанавливаем цвет текста (белый)
                           textLabel.TextScaled = false -- Масштабируем текст, чтобы он подходил по размеру
                           textLabel.TextSize = 20
                           textLabel.Parent = billboardGui
                           billboardGui.Parent = part
                           end

                           spawnPart()
                        end
                    },
                    {
                        Title = "❌Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })






    
    local Slider = Tabs.Player:AddSlider("Slider", {
        Title = "🚹Speed",
        Description = "Speed",
        Default = 16,
        Min = 16,
        Max = 500,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    })

    Slider:OnChanged(function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end)

    Slider:SetValue(16)



    local Dropdown = Tabs.Player:AddDropdown("Dropdown", {
        Title = "🚹Speed",
        Values = {"16", "20", "22", "24", "26", "29", "32", "35", "50", "100", "200", "300", "400", "500"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("16")

    Dropdown:OnChanged(function(t)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
    end)


    local Slider = Tabs.Player:AddSlider("Slider", {
        Title = "🚹JumpPower",
        Description = "JumpPower",
        Default = 50,
        Min = 50,
        Max = 5000,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end
    })

    Slider:OnChanged(function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end)

    Slider:SetValue(50)



    local Dropdown = Tabs.Player:AddDropdown("Dropdown", {
        Title = "🚹JumpPower",
        Values = {"16", "20", "22", "24", "26", "29", "32", "35", "50", "100", "200", "300", "400", "500"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("50")

    Dropdown:OnChanged(function(k)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = k
    end)


    
    



    Options.MyToggle:SetValue(false)




    
    local MultiDropdown = Tabs.Main:AddDropdown("MultiDropdown", {
        Title = "Dropdown",
        Description = "You can select multiple values.",
        Values = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen"},
        Multi = true,
        Default = {"seven", "twelve"},
    })

    MultiDropdown:SetValue({
        three = true,
        five = true,
        seven = false
    })

    MultiDropdown:OnChanged(function(Value)
        local Values = {}
        for Value, State in next, Value do
            table.insert(Values, Value)
        end
        print("Mutlidropdown changed:", table.concat(Values, ", "))
    end)



    local Colorpicker = Tabs.Main:AddColorpicker("Colorpicker", {
        Title = "Colorpicker",
        Default = Color3.fromRGB(96, 205, 255)
    })

    Colorpicker:OnChanged(function()
        print("Colorpicker changed:", Colorpicker.Value)
    end)
    
    Colorpicker:SetValueRGB(Color3.fromRGB(0, 255, 140))



    local TColorpicker = Tabs.Main:AddColorpicker("TransparencyColorpicker", {
        Title = "Colorpicker",
        Description = "but you can change the transparency.",
        Transparency = 0,
        Default = Color3.fromRGB(96, 205, 255)
    })

    TColorpicker:OnChanged(function()
        print(
            "TColorpicker changed:", TColorpicker.Value,
            "Transparency:", TColorpicker.Transparency
        )
    end)



    local Keybind = Tabs.Main:AddKeybind("Keybind", {
        Title = "KeyBind",
        Mode = "Toggle", -- Always, Toggle, Hold
        Default = "LeftControl", -- String as the name of the keybind (MB1, MB2 for mouse buttons)

        -- Occurs when the keybind is clicked, Value is `true`/`false`
        Callback = function(Value)
            print("Keybind clicked!", Value)
        end,

        -- Occurs when the keybind itself is changed, `New` is a KeyCode Enum OR a UserInputType Enum
        ChangedCallback = function(New)
            print("Keybind changed!", New)
        end
    })

    -- OnClick is only fired when you press the keybind and the mode is Toggle
    -- Otherwise, you will have to use Keybind:GetState()
    Keybind:OnClick(function()
        print("Keybind clicked:", Keybind:GetState())
    end)

    Keybind:OnChanged(function()
        print("Keybind changed:", Keybind.Value)
    end)

    task.spawn(function()
        while true do
            wait(1)

            -- example for checking if a keybind is being pressed
            local state = Keybind:GetState()
            if state then
                print("Keybind is being held down")
            end

            if Fluent.Unloaded then break end
        end
    end)

    Keybind:SetValue("MB2", "Toggle") -- Sets keybind to MB2, mode to Hold


    local Input = Tabs.Main:AddInput("Input", {
        Title = "Input",
        Default = "Default",
        Placeholder = "Placeholder",
        Numeric = false, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
            print("Input changed:", Value)
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
    Content = "The script has been loaded.",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
