-- Decompiled by Krnl

local v_u_1 = game.Players.LocalPlayer
local v_u_2 = script.Parent
repeat
	task.wait()
until v_u_2.Parent == workspace.Live
local v_u_3 = v_u_2:WaitForChild("Humanoid")
local v_u_4 = v_u_2:WaitForChild("HumanoidRootPart")
v_u_2:WaitForChild("Head")
local v_u_5 = v_u_2:WaitForChild("Torso")
v_u_5:WaitForChild("Neck")
local v_u_6 = v_u_1:WaitForChild("DebrisBD", 20)
local v_u_7 = v_u_1.PlayerGui
local _ = v_u_4:WaitForChild("RootJoint").C0
local _ = CFrame.Angles
local v_u_8 = workspace.CurrentCamera
local v_u_9 = game:GetService("UserInputService")
local v_u_10 = game:GetService("TweenService")
local v_u_11 = game:GetService("RunService")
local v_u_12 = game:GetService("ReplicatedStorage")
local v_u_13 = v_u_12:WaitForChild("Animations")
local v_u_14 = v_u_12:FindFirstChild("Modules")
local v_u_15 = require(script:WaitForChild("MoreFunctionsClient"))
local v_u_16 = require(v_u_14.SharedFunctions)
v_u_12:FindFirstChild("UI")
local v_u_17 = v_u_3:FindFirstChild("Animator")
local v_u_18 = v_u_2:WaitForChild("SwingSpeed")
local v19 = script:WaitForChild("Info")
local v_u_20 = v_u_1:WaitForChild("OtherBD")
local _ = v_u_12.Animations.Walk.AnimationId
local v_u_21 = v_u_12.Replication.Event
local v_u_22 = v_u_12:FindFirstChild("Remotes"):FindFirstChild("UsedTool")
local v_u_23 = workspace:FindFirstChild("Values")
local v_u_24 = require(v_u_12.Modules.VelocityFunctions)
local v_u_25 = require(v_u_12.Modules.Effects)
local v_u_26 = v_u_23:FindFirstChild("LowerJumpPowerOnJump")
local v_u_27 = v_u_2:WaitForChild("JumpPowerAmount")
local v_u_28 = v_u_16.ReturnHoldableAbilities()
local v_u_29 = {
	"Head",
	"Right Arm",
	"Left Arm",
	"Left Leg",
	"Right Leg",
	"Torso"
}
local v_u_30 = { Enum.KeyCode.S, Enum.KeyCode.A, Enum.KeyCode.D }
shared.SavedCFDead = nil
v_u_27.Changed:Connect(function(p31)
	-- upvalues: (copy) v_u_2, (copy) v_u_3
	if not (v_u_2:FindFirstChild("Stun") or (v_u_2:FindFirstChild("Ragdoll") or (v_u_2:FindFirstChild("Dead") or v_u_2:FindFirstChild("InjuredWalking")))) then
		v_u_3.JumpPower = p31
	end
end)
local v_u_32 = nil
Random.new()
local v_u_33 = v_u_9.TouchEnabled
local v_u_34 = tick()
if shared.DestroyOnDeath then
	for _, v35 in pairs(shared.DestroyOnDeath) do
		if v35 then
			v35:Destroy()
		end
	end
end
game.Chat:SetBubbleChatSettings({
	["AdorneeName"] = "ChatAttachment"
})
shared.MaxPrizeFromWin = 456000000
local v_u_36 = {
	["StopCounter"] = 0,
	["PlayCounter"] = 0,
	["CDDASHSTACKS"] = 0
}
local v_u_37 = {
	"InjuredWalking",
	"RotateDisabled",
	"Anchor",
	"CantRun",
	"InCutscene",
	"DisableHeadLookAt"
}
local v38 = ("UZI_CLIENTUPDATE_%*"):format((math.random(1, 99999)))
local v39 = require(v_u_12.Modules.EffectHandler)
require(v_u_12.Modules.GeneralFunctions)
local v_u_40 = require(v_u_12.Modules.Ragdoll)
local v_u_41 = Enum.HumanoidStateType.Freefall
local v_u_42 = Enum.HumanoidStateType.Landed
v39.new(v_u_2)
v_u_11:IsStudio()
local v43 = workspace:FindFirstChild("Effects")
local v_u_44 = Enum.CameraType.Scriptable
if v43 and (v43:FindFirstChild("QueuePart") and v43:FindFirstChild("QueuePart"):FindFirstChild("InvisWall")) then
	v43:FindFirstChild("QueuePart"):FindFirstChild("InvisWall").CanCollide = true
end
if v43 and v43:FindFirstChild("InvisWallGame") then
	v43:FindFirstChild("InvisWallGame").CanCollide = true
end
v_u_3:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
v_u_3:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
shared.BaseFOV = 70
v_u_8.CameraSubject = v_u_3
v_u_10:Create(v_u_8, TweenInfo.new(0.25), {
	["FieldOfView"] = shared.BaseFOV
}):Play()
shared.BaseJumpPower = 50
v_u_27.Value = shared.BaseJumpPower * v_u_18.Value
local v_u_45 = 14
local v_u_46 = 28
local v_u_47 = v_u_16.GetBoosts(v_u_1, "Faster Sprint")
v_u_3.WalkSpeed = (v_u_45 + v_u_47) * v_u_18.Value
v_u_3.JumpPower = v_u_27.Value
v_u_1.CameraMaxZoomDistance = 14
local function v_u_49()
	-- upvalues: (copy) v_u_9, (copy) v_u_1, (copy) v_u_7, (copy) v_u_25, (copy) v_u_13
	if v_u_9.TouchEnabled then
		v_u_1.PlayerGui.MobileSupport.Enabled = true
		v_u_1.PlayerGui.MobileSupport.RollButton.Visible = true
	else
		local v48 = v_u_7:FindFirstChild("ConsoleSupport"):FindFirstChild("GamepadControlsGui")
		if v48 and v48:FindFirstChild("Dash") then
			v48:FindFirstChild("Dash").Visible = true
		end
	end
	if not v_u_1:GetAttribute("PreloadedDash") then
		v_u_1:SetAttribute("PreloadedDash", true)
		task.spawn(function()
			-- upvalues: (ref) v_u_25, (ref) v_u_13
			v_u_25.PreloadAnim({
				["EffectName"] = "PreloadAnim",
				["TblOfAnims"] = {
					v_u_13.Dashing.Forward,
					v_u_13.Dashing.Backwards,
					v_u_13.Dashing.Left,
					v_u_13.Dashing.Right
				}
			})
			v_u_25.PreloadSounds({
				["EffectName"] = "PreloadSounds",
				["SoundIds"] = {
					"rbxassetid://88725936982152",
					"rbxassetid://134552572582241",
					"rbxassetid://98397849734585",
					"rbxassetid://104349024070999"
				}
			})
		end)
	end
end
local function v_u_54(p50, p51)
	-- upvalues: (copy) v_u_49, (copy) v_u_16, (copy) v_u_2
	local v52 = p50.Value
	if p50.Name == "Faster Sprint" then
		if v52 >= 5 then
			v_u_49()
		end
		if not p51 then
			local v53 = {
				["Attributes"] = {
					["Speed"] = 14
				}
			}
			v_u_16.CreateFolder(v_u_2, "Stun", 0.01, v53)
		end
	end
end
v_u_11:BindToRenderStep(v38, Enum.RenderPriority.Camera.Value - 1, v_u_15.Step)
SteppedCon = v_u_11.Stepped:Connect(function(_, p55)
	-- upvalues: (copy) v_u_15
	v_u_15.Step(p55, true)
end)
if v_u_33 then
	task.spawn(function()
		-- upvalues: (copy) v_u_14, (copy) v_u_1
		require(v_u_14.MobileSupport)(v_u_1)
	end)
end
local function v_u_64(p56, p57)
	-- upvalues: (copy) v_u_16, (copy) v_u_1, (copy) v_u_23, (copy) v_u_2, (copy) v_u_10, (copy) v_u_3, (copy) v_u_36, (copy) v_u_18, (ref) v_u_46
	local v58 = v_u_16.GetBoosts(v_u_1, "Faster Sprint")
	local v59 = v_u_23.CurrentGame.Value == "HideAndSeek" and v_u_1:GetAttribute("IsHider")
	if not v59 then
		if v_u_23.CurrentGame.Value == "HideAndSeek" then
			v59 = v_u_1:GetAttribute("IsHunter")
		else
			v59 = false
		end
	end
	if v_u_2:GetAttribute("WallyWestRun") then
		v_u_10:Create(v_u_3, TweenInfo.new(0.01), {
			["WalkSpeed"] = ((v_u_36.CanRunDuringStun or v_u_2:GetAttribute("WallyWestRun")) + v58) * v_u_18.Value
		}):Play()
		return
	elseif p57 then
		local v60 = v_u_3.Health / v_u_3.MaxHealth
		local v61 = math.clamp(v60, 0, 1) * 0.29999999999999993 + 0.85
		v_u_10:Create(v_u_3, TweenInfo.new(1.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
			["WalkSpeed"] = ((v_u_36.CanRunDuringStun or v_u_46) + v58) * v_u_18.Value * v61
		}):Play()
		return
	elseif v59 then
		local v62
		if v_u_1:GetAttribute("IsHider") then
			local v63 = v_u_3.Health / v_u_3.MaxHealth
			v62 = math.clamp(v63, 0, 1) * 0.14500000000000002 + 0.58
		else
			v62 = 0.785
		end
		v_u_10:Create(v_u_3, TweenInfo.new(0.65, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			["WalkSpeed"] = ((v_u_36.CanRunDuringStun or v_u_46) + v58) * v_u_18.Value * v62
		}):Play()
		return
	elseif p56 then
		v_u_10:Create(v_u_3, TweenInfo.new(0.65, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			["WalkSpeed"] = ((v_u_36.CanRunDuringStun or v_u_46) + v58) * v_u_18.Value
		}):Play()
	else
		v_u_10:Create(v_u_3, TweenInfo.new(0.01), {
			["WalkSpeed"] = ((v_u_36.CanRunDuringStun or v_u_46) + v58) * v_u_18.Value
		}):Play()
	end
end
local function v_u_71(p65)
	-- upvalues: (copy) v_u_18, (copy) v_u_11, (copy) v_u_36
	local v66 = (p65 or 0.8) / v_u_18.Value
	local v67 = 0
	local v68 = 0
	while v67 < v66 do
		local v69 = v_u_11.RenderStepped:Wait()
		if v_u_36.InAir then
			v68 = v68 + v69
		else
			v67 = v67 + v69
		end
		local v70 = v66 - v68 * 0.25
		if math.max(0, v70) <= v67 or not v_u_36.Running then
			break
		end
	end
end
local function v_u_74(p72)
	-- upvalues: (copy) v_u_36, (copy) v_u_16, (copy) v_u_2, (copy) v_u_8, (copy) v_u_44, (copy) v_u_10
	if not v_u_36.FieldOfViewIncreased and (not v_u_16.CheckIfStunned(v_u_2, {
		["running"] = true
	}) and (v_u_8.CameraType ~= v_u_44 and not v_u_36.CantRun)) or p72 and (not v_u_16.CheckIfStunned(v_u_2, {
		["running"] = true
	}) and (v_u_8.CameraType ~= v_u_44 and not v_u_36.CantRun)) then
		v_u_36.FieldOfViewIncreased = tick()
		local v_u_73 = p72 or 10
		v_u_10:Create(v_u_8, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			["FieldOfView"] = shared.BaseFOV + v_u_73 / 2
		}):Play()
		task.delay(0.25, function()
			-- upvalues: (ref) v_u_36, (ref) v_u_16, (ref) v_u_2, (ref) v_u_8, (ref) v_u_44, (ref) v_u_10, (copy) v_u_73
			if v_u_36.FieldOfViewIncreased and tick() - v_u_36.FieldOfViewIncreased >= 0.23 and (not v_u_16.CheckIfStunned(v_u_2, {
				["running"] = true
			}) and v_u_8.CameraType ~= v_u_44) then
				v_u_10:Create(v_u_8, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					["FieldOfView"] = shared.BaseFOV + v_u_73
				}):Play()
			end
		end)
	end
end
local function v_u_76(p75)
	-- upvalues: (copy) v_u_36, (copy) v_u_10, (copy) v_u_8
	if v_u_36.FieldOfViewIncreased then
		v_u_36.FieldOfViewIncreased = nil
		v_u_10:Create(v_u_8, TweenInfo.new(p75 and 0.75 or 0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			["FieldOfView"] = shared.BaseFOV
		}):Play()
	end
end
local function v_u_93()
	-- upvalues: (copy) v_u_36, (copy) v_u_16, (copy) v_u_2, (copy) v_u_1, (copy) v_u_23, (ref) v_u_17, (copy) v_u_3, (copy) v_u_15, (copy) v_u_13, (copy) v_u_18, (copy) v_u_10, (copy) v_u_6, (copy) v_u_64, (copy) v_u_74, (copy) v_u_4, (copy) v_u_71
	if not (v_u_36.Running or v_u_16.CheckIfStunned(v_u_2, {
		["running"] = true
	})) then
		if v_u_36.StaminaVal and (v_u_36.StaminaVal.Value <= 0.05 and (v_u_1:GetAttribute("IsHider") and (v_u_2:FindFirstChild("FASTERSPRINT") and v_u_23.CurrentGame.Value == "HideAndSeek"))) then
			if not v_u_2:FindFirstChild("FASTERSPRINT") then
				return
			end
			v_u_2:FindFirstChild("FASTERSPRINT"):Destroy()
		end
		if v_u_36.StaminaVal and (v_u_36.CantRunUntilFull and v_u_36.StaminaVal.Value < 75) then
			return
		end
		if v_u_36.CantRunUntilFull then
			v_u_36.CantRunUntilFull = nil
		end
		if not v_u_17 then
			v_u_17 = v_u_3:WaitForChild("Animator")
		end
		local v_u_77 = v_u_1:GetAttribute("IsHider") and v_u_2:FindFirstChild("FASTERSPRINT")
		if v_u_77 then
			v_u_77 = v_u_23.CurrentGame.Value == "HideAndSeek"
		end
		v_u_36.AttemptingToRun = true
		v_u_15.ChangedRunningState(true)
		if v_u_36.RecentRunAmount then
			local v78 = v_u_36
			v78.RecentRunAmount = v78.RecentRunAmount + 1
		else
			v_u_36.RecentRunAmount = 1
		end
		local v_u_79 = nil
		local v_u_80
		if v_u_36.RunningAnimCustom and not v_u_77 then
			v_u_79 = true
			v_u_80 = v_u_17:LoadAnimation(v_u_13:FindFirstChild(v_u_36.RunningAnimCustom))
			v_u_36.Running = v_u_80
			v_u_80:Play(0.25)
			if v_u_36.InAir then
				v_u_80:AdjustSpeed(0.25)
			elseif v_u_2:GetAttribute("WallyWestRun") then
				local v81 = v_u_2:GetAttribute("WallyWestRun") / 28
				v_u_80:AdjustSpeed((math.clamp(v81, 1, 2)))
			elseif v_u_18 then
				v_u_80:AdjustSpeed(v_u_18.Value)
			end
			task.spawn(function()
				-- upvalues: (ref) v_u_80, (ref) v_u_36
				for _ = 1, 250 do
					if not (v_u_80 and (v_u_80.IsPlaying and v_u_36.AttemptingToRun)) then
						v_u_80:Stop()
						return
					end
					v_u_36.Running = v_u_80
					task.wait(0.01)
				end
			end)
		else
			local v82 = v_u_13.SprintStartup
			if v_u_77 and v_u_36.StaminaVal then
				local v83 = v_u_36.StaminaVal
				local v84 = v_u_1:GetAttribute("IsHunter") and 150 or 100
				local v85 = v_u_1:GetAttribute("IsHunter") and 3 or 9
				local v86 = v83.Value / v84 * v85
				local v87 = math.max(0.05, v86)
				v_u_36.StartedRunTick = tick()
				v_u_36.StartedFasterRun = true
				v_u_10:Create(v83, TweenInfo.new(v87), {
					["Value"] = 0
				}):Play()
				if v_u_2:FindFirstChild("FASTERSPRINT") then
					v_u_6:Fire(v_u_2:FindFirstChild("FASTERSPRINT"), v87)
				end
			end
			v_u_80 = v_u_17:LoadAnimation(v82)
			v_u_36.Running = v_u_80
			v_u_80:Play()
			if v_u_36.InAir then
				v_u_80:AdjustSpeed(0.25)
			elseif v_u_18 then
				v_u_80:AdjustSpeed(v_u_18.Value)
			end
		end
		v_u_64(true)
		v_u_74()
		if v_u_36.RecentRunAmount <= 2 then
			v_u_16.PlaySound(v_u_4, "rbxassetid://103020120937659", 4)
		end
		if v_u_77 then
			v_u_2:SetAttribute("RunningSound", true)
		end
		if not v_u_79 then
			if v_u_36.CurrentRunAmount then
				local v88 = v_u_36
				v88.CurrentRunAmount = v88.CurrentRunAmount + 1
			else
				v_u_36.CurrentRunAmount = 1
			end
		end
		task.spawn(function()
			-- upvalues: (ref) v_u_79, (copy) v_u_77, (ref) v_u_71, (ref) v_u_36, (ref) v_u_80, (ref) v_u_16, (ref) v_u_2, (ref) v_u_13, (ref) v_u_64, (ref) v_u_74, (ref) v_u_4, (ref) v_u_6, (ref) v_u_17, (ref) v_u_18, (ref) v_u_10
			if v_u_79 then
				task.wait(0.8)
				local v89 = v_u_36
				v89.RecentRunAmount = v89.RecentRunAmount - 1
				goto l23
			end
			v_u_71(v_u_77 and 0.1 or nil)
			local v90 = v_u_36
			v90.RecentRunAmount = v90.RecentRunAmount - 1
			if v_u_77 then
				v_u_80:Stop(0.25)
			else
				v_u_80:Stop()
			end
			if v_u_36.Running and (not v_u_16.CheckIfStunned(v_u_2, {
				["running"] = true
			}) and v_u_36.RecentRunAmount == 0) then
				local v91 = v_u_13.Sprint
				if v_u_77 then
					v_u_64(true, v_u_77)
					v_u_74(25)
					v_u_36.RunLoopSound = v_u_16.PlaySound(v_u_4, "rbxassetid://136737463626709", 5, {
						["Looped"] = true
					})
					v_u_6:Fire(v_u_36.RunLoopSound, 30)
					v91 = v_u_13.HasFootsteps.RunEscapeNormal
				end
				local v92 = v_u_17:LoadAnimation(v91)
				v_u_36.Running = v92
				if v_u_77 then
					v92:Play(0.25)
				else
					v92:Play()
				end
				if v_u_36.InAir then
					v92:AdjustSpeed(0.25)
				elseif v_u_18 then
					v92:AdjustSpeed(v_u_18.Value)
				end
				for _ = 1, 50 do
					if not (v92 and v92.IsPlaying) then
						v92:Stop()
						v_u_2:SetAttribute("RunningSound", nil)
						if v_u_36.RunLoopSound then
							v_u_10:Create(v_u_36.RunLoopSound, TweenInfo.new(0.3), {
								["Volume"] = 0
							}):Play()
							v_u_6:Fire(v_u_36.RunLoopSound, 0.5)
							return
						end
						::l23::
						return
					end
					v_u_36.Running = v92
					task.wait(0.01)
				end
				return
			else
				if v_u_36.RunLoopSound then
					v_u_10:Create(v_u_36.RunLoopSound, TweenInfo.new(0.3), {
						["Volume"] = 0
					}):Play()
					v_u_6:Fire(v_u_36.RunLoopSound, 0.5)
					v_u_2:SetAttribute("RunningSound", nil)
					return
				end
				goto l23
			end
		end)
	end
end
local function v_u_108(p94, _)
	-- upvalues: (copy) v_u_36, (copy) v_u_10, (copy) v_u_6, (copy) v_u_2, (copy) v_u_15, (copy) v_u_1, (copy) v_u_23, (copy) v_u_16, (copy) v_u_4, (copy) v_u_12, (copy) v_u_3, (ref) v_u_45, (copy) v_u_18, (copy) v_u_76
	if v_u_36.AttemptingToRun then
		v_u_36.AttemptingToRun = nil
	end
	if v_u_36.RunLoopSound then
		v_u_10:Create(v_u_36.RunLoopSound, TweenInfo.new(0.2), {
			["Volume"] = 0
		}):Play()
		v_u_6:Fire(v_u_36.RunLoopSound, 0.25)
		v_u_36.RunLoopSound = nil
		v_u_2:SetAttribute("RunningSound", nil)
	end
	if v_u_36.Running then
		v_u_15.ChangedRunningState()
		if p94 then
			v_u_36.Running:Stop(0.25)
		else
			v_u_36.Running:Stop()
		end
		v_u_36.Running = nil
		local v95 = v_u_1:GetAttribute("IsHider")
		if v95 then
			v95 = v_u_23.CurrentGame.Value == "HideAndSeek"
		end
		local v96 = nil
		if not v_u_36.IsStunned and (v95 and (not v_u_2:FindFirstChild("Dead") and v_u_36.StartedFasterRun)) then
			if v_u_36.StaminaVal then
				v_u_10:Create(v_u_36.StaminaVal, TweenInfo.new(0.01), {
					["Value"] = v_u_36.StaminaVal.Value
				}):Play()
			end
			if not v_u_36.RecentBVForStop and (v_u_36.StartedRunTick and tick() - v_u_36.StartedRunTick >= 0.5) then
				local _ = not v_u_1:GetAttribute("IsHunter")
			end
			if tick() - v_u_36.StartedRunTick >= 0.6 then
				local v97 = {}
				local v98 = v_u_1:GetAttribute("IsHunter")
				local v99 = v_u_16.PlaySound
				local v100 = v_u_4
				table.insert(v97, v99(v100, v98 and "rbxassetid://109544967780407" or "rbxassetid://125754880017796", 6))
				local v101 = v_u_16.StartupAbility
				local v102 = v_u_2
				local v103 = {
					["DontStun"] = true,
					["CanCreateFootsteps"] = true,
					["StunInterruption"] = true,
					["TimeLength"] = 1,
					["StunTime"] = 1,
					["CharacterAnimation"] = {
						["Track"] = v98 and v_u_12.Animations.HasFootsteps.RunEscapeKnifeStop or v_u_12.Animations:FindFirstChild("RunEscapeStop")
					},
					["DestroyTblIfInterrupted"] = v97,
					["StunAttributes"] = {
						["DisableHeadLookAt"] = true,
						["DoesntDisableLegsForASec"] = true
					}
				}
				local _, _, _ = v101(v102, v103)
				v_u_36.StartedFasterRun = nil
				v96 = true
			end
		end
		if v_u_36.IsStunned then
			local v104 = 999999999
			for _, v105 in pairs(v_u_2:GetChildren()) do
				if v105.Name == "Stun" and (v105:GetAttribute("CanRunDuringStun") and (v105:GetAttribute("Speed") and v105:GetAttribute("Speed") < v104)) then
					v104 = v105:GetAttribute("Speed")
				end
			end
			if v104 < 99999 then
				local v106 = v_u_16.GetBoosts(v_u_1, "Faster Sprint")
				v_u_10:Create(v_u_3, TweenInfo.new(0.01), {
					["WalkSpeed"] = (v104 + v106) * v_u_18.Value
				}):Play()
			end
		else
			local v107 = v_u_16.GetBoosts(v_u_1, "Faster Sprint")
			v_u_10:Create(v_u_3, TweenInfo.new(v96 and 1 or 0.01), {
				["WalkSpeed"] = (v_u_45 + v107) * v_u_18.Value
			}):Play()
		end
		v_u_76(v96)
	end
end
local function v_u_109()
	-- upvalues: (copy) v_u_36, (copy) v_u_23, (copy) v_u_15
	if not v_u_36.InAir then
		v_u_36.InAir = true
		shared.InAir = true
		if v_u_36.LandedAnim and v_u_23.CurrentGame.Value ~= "HideAndSeek" then
			if v_u_36.LandedAnim.IsPlaying then
				v_u_36.LandedAnim:Stop()
			end
			v_u_36.LandedAnim = nil
		end
		v_u_15.ChangeNeckLerpSpeed(0.01)
		if v_u_36.Running then
			v_u_36.Running:AdjustSpeed(0.25)
		end
	end
end
local function v_u_113()
	-- upvalues: (copy) v_u_36, (copy) v_u_23, (ref) v_u_17, (copy) v_u_13, (copy) v_u_18, (copy) v_u_15, (copy) v_u_2
	if v_u_36.InAir then
		v_u_36.InAir = nil
		shared.InAir = nil
		if not v_u_36.LandedAnim and v_u_23.CurrentGame.Value ~= "HideAndSeek" then
			local v110 = v_u_17:LoadAnimation(v_u_13.Land)
			v110:Play()
			v110:AdjustSpeed(v_u_18.Value)
			v_u_36.LandedAnim = v110
		end
		v_u_15.ChangeNeckLerpSpeed(nil)
		if v_u_36.Running then
			if v_u_2:GetAttribute("WallyWestRun") then
				local v111 = v_u_36.Running
				local v112 = v_u_2:GetAttribute("WallyWestRun") / 28
				v111:AdjustSpeed((math.clamp(v112, 1, 2)))
				return
			end
			v_u_36.Running:AdjustSpeed(v_u_18 and v_u_18.Value or 1)
		end
	end
end
local function v_u_114(_) end
local function v_u_122(p115)
	-- upvalues: (copy) v_u_8, (copy) v_u_3
	local v116 = v_u_8.CFrame.LookVector
	local v117 = (v116 - Vector3.new(0, 1, 0) * v116.Y).Unit
	local v118 = CFrame.new(Vector3.new(0, 0, 0), v117)
	local v119 = v_u_3.MoveDirection:Dot(v118.RightVector) > 0.75 and "Right" or not p115 and "Forward"
	local v120 = v_u_3.MoveDirection:Dot(-v118.RightVector) > 0.75 and "Left" or v119
	local v121 = v_u_3.MoveDirection:Dot(v118.LookVector) > 0.6 and "Forward" or v120
	return v_u_3.MoveDirection:Dot(-v118.LookVector) > 0.6 and "Backwards" or v121
end
local function v_u_133(_)
	-- upvalues: (copy) v_u_16, (copy) v_u_2, (copy) v_u_1, (copy) v_u_36, (copy) v_u_24, (copy) v_u_4, (copy) v_u_23, (copy) v_u_9, (copy) v_u_122, (copy) v_u_15
	if not v_u_16.CheckIfStunned(v_u_2, {
		["ignoregettingshot"] = true
	}) then
		if (not v_u_1:FindFirstChild("Boosts") or (not v_u_1:FindFirstChild("Boosts"):FindFirstChild("Faster Sprint") or v_u_1:FindFirstChild("Boosts"):FindFirstChild("Faster Sprint").Value < 5)) and (not v_u_1:GetAttribute("_EquippedPower") or v_u_1:GetAttribute("_EquippedPower") ~= "PHANTOM STEP") then
			return
		end
		local v123 = nil
		local v124 = v_u_1:GetAttribute("_EquippedPower")
		local v125
		if v124 and v124 == "PHANTOM STEP" then
			v125 = v_u_36.CDDASHSTACKS >= 2
		else
			v125 = v_u_36.DashCD and true or v123
		end
		if v125 then
			return
		end
		local v126 = v_u_24.CheckBVAndCreate(v_u_2, 1, {
			["Velocity"] = v_u_4.CFrame.LookVector * 1,
			["MaxForce"] = Vector3.new(55000, 0, 55000),
			["Parent"] = v_u_4,
			["DebrisTime"] = 0.63
		})
		if not v126 then
			return
		end
		local v127 = v_u_23.CurrentGame.Value == "HideAndSeek" and (v_u_1:GetAttribute("IsHider") and 2.75 or 3) or 1.5
		if v124 and v124 == "PHANTOM STEP" then
			local v_u_128 = 1
			if v_u_36.CDDASHSTACKS >= 2 or (v_u_23.CurrentGame.Value == "SquidGame" or v_u_23.CurrentGame.Value == "HideAndSeek") then
				v_u_16.CreateFolder(v_u_2, "CDDASHSTACKSCD", v127)
				v_u_128 = 2
			else
				v_u_16.CreateFolder(v_u_2, "CDDASHSTACKSCD", v127 / 2)
			end
			local v129 = v_u_36
			v129.CDDASHSTACKS = v129.CDDASHSTACKS + v_u_128
			task.delay(0.2 * v_u_36.CDDASHSTACKS, function()
				-- upvalues: (ref) v_u_2, (ref) v_u_36, (ref) v_u_128
				repeat
					task.wait(0.1)
				until not v_u_2:FindFirstChild("CDDASHSTACKSCD")
				local v130 = v_u_36
				v130.CDDASHSTACKS = v130.CDDASHSTACKS - v_u_128
			end)
		else
			v_u_36.DashCD = true
			task.delay(v127, function()
				-- upvalues: (ref) v_u_36
				v_u_36.DashCD = nil
			end)
		end
		local v131 = "Forward"
		local v132
		if v_u_9.TouchEnabled or (shared.controllerpressed or not shared.InShiftLock) then
			v132 = v_u_122()
		else
			v132 = v_u_36.SPressed and "Backwards" or (v_u_36.DPressed and "Right" or (v_u_36.APressed and "Left" or v131))
		end
		v_u_15.Roll(v126, v132)
	end
end
v19.Event:Connect(function(p134)
	-- upvalues: (copy) v_u_36, (copy) v_u_76, (copy) v_u_108, (copy) v_u_114, (copy) v_u_133
	if p134.RunningEnabled then
		v_u_36.ShiftPressed = p134.State
		if not p134.State then
			v_u_76()
			v_u_108(nil, true)
			return
		end
	else
		if p134.Crouching then
			v_u_114(p134.CrouchingState)
			return
		end
		if p134.Dashing then
			v_u_133()
		end
	end
end)
v_u_3.StateChanged:Connect(function(p135, p136)
	-- upvalues: (copy) v_u_3, (copy) v_u_41, (copy) v_u_36, (copy) v_u_109, (copy) v_u_42, (copy) v_u_113
	local v137 = string.gsub
	local v138 = v_u_3.FloorMaterial
	v137(tostring(v138), "Enum.Material.", "")
	if p136 == v_u_41 and not v_u_36.Ragdolled then
		v_u_109()
		return
	elseif p136 == v_u_42 and p135 == v_u_41 then
		v_u_113()
		return
	elseif p136 == v_u_42 and v_u_36.InAir or v_u_3.FloorMaterial ~= Enum.Material.Air and v_u_36.InAir then
		v_u_113()
	end
end)
v_u_9.TouchTapInWorld:Connect(function(_, p139)
	-- upvalues: (copy) v_u_21, (copy) v_u_36, (copy) v_u_22
	if not p139 then
		v_u_21:FireServer("Clicked")
		if v_u_36.ToolInChar then
			v_u_22:FireServer("UsingMoveCustom", v_u_36.ToolInChar, nil, {
				["Clicked"] = true,
				["IsRunning"] = v_u_36.Running and true
			})
		end
	end
end)
local function v_u_141(p140)
	-- upvalues: (copy) v_u_21, (copy) v_u_36, (copy) v_u_22, (copy) v_u_20, (copy) v_u_30, (copy) v_u_114, (copy) v_u_133, (copy) v_u_1, (copy) v_u_74
	if p140.UserInputType == Enum.UserInputType.MouseButton1 or p140.KeyCode == Enum.KeyCode.ButtonX then
		v_u_21:FireServer("Clicked")
		if v_u_36.ToolInChar then
			v_u_22:FireServer("UsingMoveCustom", v_u_36.ToolInChar, nil, {
				["Clicked"] = true,
				["IsRunning"] = v_u_36.Running and true
			})
		end
		v_u_20:Fire("Action")
		v_u_36.HoldingAction = true
		while task.wait() and v_u_36.HoldingAction do
			v_u_20:Fire("Action")
		end
		return
	else
		if table.find(v_u_30, p140.KeyCode) then
			v_u_36[p140.KeyCode == Enum.KeyCode.S and "SPressed" or (p140.KeyCode == Enum.KeyCode.D and "DPressed" or (p140.KeyCode == Enum.KeyCode.A and "APressed" or false))] = true
		end
		if p140.KeyCode == Enum.KeyCode.C then
			v_u_114(true)
		end
		if p140.KeyCode == Enum.KeyCode.Q or p140.KeyCode == Enum.KeyCode.ButtonY then
			v_u_133()
		end
		if p140.UserInputType == Enum.UserInputType.MouseButton2 or p140.KeyCode == Enum.KeyCode.ButtonL2 then
			v_u_20:Fire("ScopingIn")
		end
		if p140.KeyCode == Enum.KeyCode.F2 and v_u_1.Name == "adjute" then
			v_u_21:FireServer("AttemptToEnableExplorer")
		end
		if p140.KeyCode == Enum.KeyCode.LeftShift or p140.KeyCode == Enum.KeyCode.ButtonL3 then
			v_u_74()
			v_u_36.ShiftPressed = true
			return
		elseif p140.KeyCode == Enum.KeyCode.R or p140.KeyCode == Enum.KeyCode.ButtonB then
			v_u_20:Fire("Reload")
		end
	end
end
local function v_u_143(p142, _)
	-- upvalues: (copy) v_u_76, (copy) v_u_108, (copy) v_u_36, (copy) v_u_30, (copy) v_u_114, (copy) v_u_22, (copy) v_u_20
	if p142.KeyCode == Enum.KeyCode.LeftShift or p142.KeyCode == Enum.KeyCode.ButtonL3 then
		v_u_76()
		v_u_108(nil, true)
		v_u_36.ShiftPressed = nil
	end
	if table.find(v_u_30, p142.KeyCode) then
		v_u_36[p142.KeyCode == Enum.KeyCode.S and "SPressed" or (p142.KeyCode == Enum.KeyCode.D and "DPressed" or (p142.KeyCode == Enum.KeyCode.A and "APressed" or false))] = nil
	end
	if p142.KeyCode == Enum.KeyCode.C then
		v_u_114()
	end
	if p142.UserInputType == Enum.UserInputType.MouseButton1 or (p142.UserInputType == Enum.UserInputType.Touch or p142.KeyCode == Enum.KeyCode.ButtonX) then
		if v_u_36.ToolInChar then
			v_u_22:FireServer("UsingMoveCustom", v_u_36.ToolInChar, true, {
				["Clicked"] = true,
				["IsRunning"] = v_u_36.Running and true
			})
		end
		v_u_36.HoldingAction = false
	elseif p142.UserInputType == Enum.UserInputType.MouseButton2 or p142.KeyCode == Enum.KeyCode.ButtonL2 then
		v_u_20:Fire("ScopingInLetGo")
	end
end
v_u_9.InputBegan:Connect(function(p144, p145)
	-- upvalues: (copy) v_u_141
	if not p145 then
		v_u_141(p144)
	end
end)
v_u_9.JumpRequest:Connect(function()
	-- upvalues: (copy) v_u_21
	v_u_21:FireServer("AttempingToJump")
end)
v_u_9.InputEnded:Connect(function(p146, p147)
	-- upvalues: (copy) v_u_143
	v_u_143(p146, p147)
end)
local function v148()
	-- upvalues: (copy) v_u_1, (copy) v_u_36, (copy) v_u_16, (copy) v_u_4, (copy) v_u_15
	if v_u_1:GetAttribute("InQueue") and not v_u_36.InQueue then
		v_u_36.InQueue = true
		v_u_16.PlaySound(v_u_4, "rbxassetid://75207716801280", 10)
		v_u_15.QueueStateChanged(true)
	elseif not v_u_1:GetAttribute("InQueue") and v_u_36.InQueue then
		v_u_36.InQueue = nil
		v_u_16.PlaySound(v_u_4, "rbxassetid://133024109651816", 10)
		v_u_15.QueueStateChanged(nil)
	end
end
local function v149()
	-- upvalues: (copy) v_u_2, (copy) v_u_36, (copy) v_u_15
	if v_u_2:GetAttribute("DisableCameraLerp") and not v_u_36.DisableCameraLerp then
		v_u_36.DisableCameraLerp = true
		v_u_15.UpdateTBLForVariables("DisableCameraLerp", true)
	elseif not v_u_2:GetAttribute("DisableCameraLerp") and v_u_36.DisableCameraLerp then
		v_u_36.DisableCameraLerp = nil
		v_u_15.UpdateTBLForVariables("DisableCameraLerp", nil)
	end
end
v148()
v149()
v_u_1.AttributeChanged:Connect(v148)
v_u_2.AttributeChanged:Connect(v149)
shared.IsDead = nil
local v_u_150 = {}
local function v_u_156()
	-- upvalues: (ref) v_u_32, (copy) v_u_150, (copy) v_u_36, (copy) v_u_114, (copy) v_u_108, (copy) v_u_7, (copy) v_u_33, (copy) v_u_10, (copy) v_u_6, (copy) v_u_9, (copy) v_u_2, (copy) v_u_29
	if not v_u_32 then
		v_u_32 = true
		shared.IsDead = true
		for _, v151 in pairs(v_u_150) do
			if v151 then
				v151:Disconnect()
			end
		end
		if v_u_36.MoveAnimCustom then
			v_u_36.MoveAnimCustom:Stop(0)
		end
		if v_u_36.NumberChangedSpeed then
			v_u_36.NumberChangedSpeed:Destroy()
		end
		v_u_114()
		v_u_108()
		if shared.ProximityPrompts then
			for _, v152 in pairs(shared.ProximityPrompts) do
				if v152 then
					v152.Enabled = false
				end
			end
		end
		local v153 = v_u_7:FindFirstChild("ConsoleSupport"):FindFirstChild("GamepadControlsGui")
		if v153 then
			v153:FindFirstChild("Reload").Visible = false
		end
		if v_u_33 then
			v_u_7:FindFirstChild("MobileSupport"):FindFirstChild("ReloadButton").Visible = false
			v_u_7:FindFirstChild("MobileSupport"):FindFirstChild("ShootButton").Visible = false
			v_u_7:FindFirstChild("MobileSupport"):FindFirstChild("ZoomInButton").Visible = false
			if v_u_7:FindFirstChild("ImpactFrames"):FindFirstChild("MobileCrossHairEnabled") then
				v_u_7:FindFirstChild("ImpactFrames"):FindFirstChild("MobileCrossHairEnabled").Name = "MobileCrossHairEnabled"
				v_u_10:Create(v_u_7:FindFirstChild("ImpactFrames"):FindFirstChild("MobileCrossHairEnabled"), TweenInfo.new(0.5, Enum.EasingStyle.Circular, Enum.EasingDirection.InOut), {
					["Rotation"] = 360,
					["ImageTransparency"] = 1
				}):Play()
				v_u_6:Fire(v_u_7:FindFirstChild("ImpactFrames"):FindFirstChild("MobileCrossHairEnabled"), 0.6)
			end
		end
		if not v_u_9.TouchEnabled then
			v_u_9.MouseIconEnabled = true
		end
		for _, v154 in pairs(v_u_2:GetChildren()) do
			if v154:IsA("BasePart") and (table.find(v_u_29, v154.Name) and v154.Name ~= "HumanoidRootPart") then
				local v155 = v_u_10:Create(v154, TweenInfo.new(0.01, Enum.EasingStyle.Linear), {
					["LocalTransparencyModifier"] = 0
				})
				v155:Play()
				v155:Destroy()
			end
		end
	end
end
local v158 = v_u_3.HealthChanged:Connect(function(p157)
	-- upvalues: (copy) v_u_156
	if p157 <= 0 then
		v_u_156()
	end
end)
local v159 = v_u_3.Died:Connect(function()
	-- upvalues: (copy) v_u_156
	v_u_156()
end)
table.insert(v_u_150, v158)
table.insert(v_u_150, v159)
local function v_u_164(p160)
	-- upvalues: (copy) v_u_2, (copy) v_u_36, (copy) v_u_10, (copy) v_u_3, (copy) v_u_18
	local v161 = nil
	for _, v162 in pairs(v_u_2:GetChildren()) do
		if v162.Name == "Stun" and v162:GetAttribute("Speed") then
			if v162:GetAttribute("ForceThisSpeed") then
				v161 = v162:GetAttribute("Speed")
				break
			end
			v161 = v161 or v162:GetAttribute("Speed")
			if v162:GetAttribute("Speed") < v161 then
				v161 = v162:GetAttribute("Speed")
			end
		end
	end
	local v163 = p160 and p160:GetAttribute("CanRunDuringStun")
	if v163 then
		v163 = v_u_36.Running
	end
	if v161 and not v163 then
		v_u_10:Create(v_u_3, TweenInfo.new(0.01), {
			["WalkSpeed"] = v161 * v_u_18.Value
		}):Play()
		if v161 <= 0 then
			if v_u_2:FindFirstChild("RotateDisabled") or not p160:GetAttribute("DoesntDisableLegsForASec") then
				shared.WalkSpeedChangeTick = tick() - 1
			else
				shared.WalkSpeedChangeTick = tick()
			end
		end
		shared.WalkSpeedChangeTick = nil
	end
end
local function v167()
	-- upvalues: (copy) v_u_2
	for _, v165 in game:GetService("CollectionService"):GetTagged("DuoProximityPrompt") do
		local v166 = not v165:IsDescendantOf(v_u_2)
		if v_u_2:GetAttribute("CurrentEmote") then
			v166 = false
		end
		if v_u_2 and v_u_2:GetAttribute("Dead") then
			v166 = false
		end
		v165.Enabled = v166
	end
end
game:GetService("CollectionService"):GetInstanceAddedSignal("DuoProximityPrompt"):Connect(v167)
v_u_2:GetAttributeChangedSignal("CurrentEmote"):Connect(v167)
v167()
local function v_u_169(p168)
	-- upvalues: (copy) v_u_164, (copy) v_u_15, (copy) v_u_36, (copy) v_u_3
	v_u_164(p168)
	if p168:GetAttribute("NoLeaning") then
		v_u_15.UpdateTBLForVariables("NoLeaning", true)
	end
	if p168:GetAttribute("DisableHeadLookAt") then
		v_u_36.DisableHeadLookAtExists = true
		v_u_15.UpdateTBLForVariables("DisableHeadLookAt", true)
	end
	v_u_3.JumpPower = p168:GetAttribute("JumpPower") or 0
end
local function v_u_175()
	-- upvalues: (copy) v_u_36, (copy) v_u_16, (copy) v_u_1, (copy) v_u_10, (copy) v_u_3, (ref) v_u_45, (copy) v_u_18, (copy) v_u_15, (copy) v_u_2, (copy) v_u_27
	if not v_u_36.Running then
		local v170 = v_u_16.GetBoosts(v_u_1, "Faster Sprint")
		v_u_10:Create(v_u_3, TweenInfo.new(0.01), {
			["WalkSpeed"] = (v_u_45 + v170) * v_u_18.Value
		}):Play()
	end
	shared.WalkSpeedChangeTick = nil
	v_u_15.UpdateTBLForVariables("NoLeaning", nil)
	local v171 = v_u_36.DisableHeadLookAt
	for _, v172 in pairs(v_u_2:GetChildren()) do
		if v172.ClassName == "Tool" and v172:GetAttribute("DisableHeadLookAt") then
			v171 = true
			break
		end
	end
	if not v171 then
		v_u_15.UpdateTBLForVariables("DisableHeadLookAt", nil)
	end
	local v173 = v_u_3
	local v174 = v_u_27.Value
	v173.JumpPower = math.max(v174, 0)
end
local v_u_176 = {
	16,
	28,
	50,
	68,
	86
}
local v_u_177 = 0
local v_u_178 = {}
v_u_2:GetAttributeChangedSignal("WallyWestRun"):Connect(function()
	-- upvalues: (copy) v_u_2, (copy) v_u_64, (copy) v_u_176, (ref) v_u_178, (ref) v_u_177, (copy) v_u_12, (copy) v_u_36, (copy) v_u_108
	local v179 = v_u_2:GetAttribute("WallyWestRun")
	if v179 then
		v_u_64()
		for v180, v181 in ipairs(v_u_176) do
			if v181 <= v179 and not v_u_178[v180] then
				v_u_177 = v180
				v_u_178[v180] = true
				local v182 = {
					["name"] = "SpeedsterVFX",
					["data"] = {
						["speed_level"] = v180
					}
				}
				v_u_12.Replication.Replicate:FireServer(v182)
			end
		end
		if v_u_36.Running then
			if v_u_36.InAir then
				v_u_36.Running:AdjustSpeed(0.25)
			else
				local v183 = v_u_36.Running
				local v184 = v179 / 28
				v183:AdjustSpeed((math.clamp(v184, 1, 2)))
			end
		end
	else
		if v_u_177 > 0 then
			v_u_177 = 0
			v_u_178 = {}
			local v185 = {
				["name"] = "SpeedsterVFX",
				["data"] = {
					["speed_level"] = v_u_177
				}
			}
			v_u_12.Replication.Replicate:FireServer(v185)
		end
		task.wait(0.01)
		v_u_108()
	end
end)
local function v212(p_u_186)
	-- upvalues: (copy) v_u_13, (copy) v_u_36, (copy) v_u_2, (copy) v_u_7, (copy) v_u_33, (ref) v_u_34, (copy) v_u_108, (ref) v_u_45, (ref) v_u_46, (copy) v_u_1, (copy) v_u_10, (copy) v_u_3, (copy) v_u_47, (copy) v_u_18, (copy) v_u_29, (copy) v_u_11, (ref) v_u_32, (copy) v_u_15, (copy) v_u_16, (copy) v_u_114, (copy) v_u_64, (copy) v_u_169, (copy) v_u_28, (copy) v_u_37, (ref) v_u_17, (copy) v_u_4, (copy) v_u_40, (copy) v_u_5
	if p_u_186:GetAttribute("Gun") and v_u_13:FindFirstChild("Run" .. p_u_186.Name) then
		v_u_36.RunningAnimCustom = "Run" .. p_u_186.Name
		if v_u_13:FindFirstChild("Walk" .. p_u_186.Name) then
			v_u_2:FindFirstChild("Animate"):FindFirstChild("walk"):FindFirstChild("WalkAnim").AnimationId = v_u_13:FindFirstChild("Walk" .. p_u_186.Name).AnimationId
		end
		local v187 = v_u_7:FindFirstChild("ConsoleSupport"):FindFirstChild("GamepadControlsGui")
		if v187 and not v_u_2:FindFirstChild("Dead") then
			v187:FindFirstChild("Reload").Visible = true
		end
		if v_u_33 and not v_u_2:FindFirstChild("Dead") then
			v_u_7:FindFirstChild("MobileSupport"):FindFirstChild("ReloadButton").Visible = true
			v_u_7:FindFirstChild("MobileSupport"):FindFirstChild("ShootButton").Visible = true
			v_u_7:FindFirstChild("MobileSupport"):FindFirstChild("ZoomInButton").Visible = true
		end
		if v_u_36.Running and v_u_36.Running.IsPlaying then
			v_u_34 = tick()
			v_u_108(true)
		end
	elseif p_u_186.ClassName == "Tool" and v_u_13:FindFirstChild("Walk" .. p_u_186.Name) then
		v_u_2:FindFirstChild("Animate"):FindFirstChild("walk"):FindFirstChild("WalkAnim").AnimationId = v_u_13:FindFirstChild("Walk" .. p_u_186.Name).AnimationId
		if v_u_13:FindFirstChild("Idle" .. p_u_186.Name) then
			v_u_2:FindFirstChild("Animate"):FindFirstChild("idle"):FindFirstChild("Animation1").AnimationId = v_u_13:FindFirstChild("Idle" .. p_u_186.Name).AnimationId
		end
		if v_u_13:FindFirstChild("Run" .. p_u_186.Name) then
			v_u_36.RunningAnimCustom = "Run" .. p_u_186.Name
			if v_u_36.Running and v_u_36.Running.IsPlaying then
				v_u_34 = tick()
				v_u_108(true)
			end
		end
	elseif p_u_186.ClassName == "Tool" and v_u_13:FindFirstChild("Run" .. p_u_186.Name) then
		v_u_36.RunningAnimCustom = "Run" .. p_u_186.Name
		if v_u_36.Running and v_u_36.Running.IsPlaying then
			v_u_34 = tick()
			v_u_108(true)
		end
	end
	if p_u_186.Name == "NewBaseWalkSpeed" then
		v_u_45 = p_u_186.Value
		v_u_46 = 30 + p_u_186.Value
		if not v_u_36.StaminaVal then
			v_u_36.StaminaVal = Instance.new("NumberValue")
			v_u_36.StaminaVal.Name = "StaminaVal"
			v_u_36.StaminaVal.Parent = v_u_2
			v_u_36.StaminaVal.Value = 100
			local v_u_188 = true
			local v_u_189 = 0
			v_u_36.StaminaVal.Changed:Connect(function(p190)
				-- upvalues: (ref) v_u_189, (ref) v_u_36, (ref) v_u_34, (ref) v_u_108, (ref) v_u_1, (ref) v_u_10, (ref) v_u_188
				v_u_189 = v_u_189 + 1
				local v191 = v_u_189
				if p190 <= 0.01 and v_u_36.Running then
					v_u_34 = tick()
					v_u_108()
					if v_u_1:FindFirstChild("PlayerGui"):FindFirstChild("ImpactFrames"):FindFirstChild("StaminaBar") then
						v_u_10:Create(v_u_1:FindFirstChild("PlayerGui"):FindFirstChild("ImpactFrames"):FindFirstChild("StaminaBar"):FindFirstChild("ShowingWhatsNeeded"), TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
							["BackgroundTransparency"] = 0
						}):Play()
					end
				end
				if v_u_1:FindFirstChild("PlayerGui"):FindFirstChild("ImpactFrames"):FindFirstChild("StaminaBar") then
					v_u_10:Create(v_u_1:FindFirstChild("PlayerGui"):FindFirstChild("ImpactFrames"):FindFirstChild("StaminaBar"):FindFirstChild("Bar"), TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
						["Size"] = UDim2.new(p190 / 100, 0, 1, -3)
					}):Play()
				end
				if not v_u_188 and v_u_1:FindFirstChild("PlayerGui"):FindFirstChild("ImpactFrames"):FindFirstChild("StaminaBar") then
					v_u_188 = true
					for _, v192 in pairs(v_u_1:FindFirstChild("PlayerGui"):FindFirstChild("ImpactFrames"):FindFirstChild("StaminaBar"):GetDescendants()) do
						if v192:IsA("Frame") and v192:GetAttribute("SaveTransparency") then
							v_u_10:Create(v192, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["BackgroundTransparency"] = v192:GetAttribute("SaveTransparency")
							}):Play()
						elseif v192:IsA("ImageLabel") and v192:GetAttribute("ImageTransparency") then
							v_u_10:Create(v192, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["ImageTransparency"] = v192:GetAttribute("ImageTransparency")
							}):Play()
						elseif v192:IsA("UIStroke") and v192:GetAttribute("SavedStroke") then
							v_u_10:Create(v192, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["Transparency"] = v192:GetAttribute("SavedStroke")
							}):Play()
						end
					end
				end
				task.wait(3)
				if v191 == v_u_189 then
					v_u_10:Create(v_u_36.StaminaVal, TweenInfo.new(6, Enum.EasingStyle.Quad), {
						["Value"] = v_u_1:GetAttribute("IsHunter") and 150 or 100
					}):Play()
					if v_u_1:FindFirstChild("PlayerGui"):FindFirstChild("ImpactFrames"):FindFirstChild("StaminaBar") then
						v_u_10:Create(v_u_1:FindFirstChild("PlayerGui"):FindFirstChild("ImpactFrames"):FindFirstChild("StaminaBar"):FindFirstChild("ShowingWhatsNeeded"), TweenInfo.new(7, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
							["BackgroundTransparency"] = 1
						}):Play()
					end
					if v_u_1:FindFirstChild("PlayerGui"):FindFirstChild("ImpactFrames"):FindFirstChild("StaminaBar") then
						v_u_188 = false
						for _, v193 in pairs(v_u_1:FindFirstChild("PlayerGui"):FindFirstChild("ImpactFrames"):FindFirstChild("StaminaBar"):GetDescendants()) do
							if v193:IsA("Frame") and v193:GetAttribute("SaveTransparency") then
								v_u_10:Create(v193, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
									["BackgroundTransparency"] = 1
								}):Play()
							elseif v193:IsA("ImageLabel") and v193:GetAttribute("ImageTransparency") then
								v_u_10:Create(v193, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
									["ImageTransparency"] = 1
								}):Play()
							elseif v193:IsA("UIStroke") and v193:GetAttribute("SavedStroke") then
								v_u_10:Create(v193, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
									["Transparency"] = 1
								}):Play()
							end
						end
					end
				end
			end)
		end
		if not (v_u_36.IsStunned or v_u_36.Running) then
			v_u_3.WalkSpeed = (v_u_45 + v_u_47) * v_u_18.Value
		end
	end
	if p_u_186:GetAttribute("IsGunModel") then
		local v_u_194 = {}
		for _, v195 in pairs(p_u_186:GetDescendants()) do
			if v195:IsA("BasePart") then
				table.insert(v_u_194, v195)
			end
		end
		for _, v196 in pairs(v_u_2:GetChildren()) do
			if v196:IsA("BasePart") and (table.find(v_u_29, v196.Name) and (v196.Name ~= "HumanoidRootPart" and v196.Name ~= "Head")) then
				table.insert(v_u_194, v196)
			end
		end
		local v_u_197 = tick()
		local v_u_198 = 0
		local v_u_199 = nil
		v_u_199 = v_u_11.RenderStepped:Connect(function()
			-- upvalues: (copy) p_u_186, (ref) v_u_2, (ref) v_u_32, (ref) v_u_198, (ref) v_u_194, (copy) v_u_197, (ref) v_u_10, (ref) v_u_199
			if p_u_186 and (p_u_186.Parent and (v_u_2 and (v_u_2.Parent and (p_u_186.Parent == v_u_2 and (not v_u_32 and v_u_198 <= 30))))) then
				local v200 = nil
				for _, v201 in pairs(v_u_194) do
					if v201 and v201.Parent then
						v200 = v201.Name == "FireFrom" and true or v200
						if tick() - v_u_197 <= 1 then
							local v202 = v_u_10:Create(v201, TweenInfo.new(0.01, Enum.EasingStyle.Linear), {
								["LocalTransparencyModifier"] = 0
							})
							v202:Play()
							v202:Destroy()
						else
							v201.LocalTransparencyModifier = 0
						end
					end
				end
				if not v200 then
					v_u_198 = v_u_198 + 1
					for _, v203 in pairs(v_u_2:GetChildren()) do
						if v203:GetAttribute("IsGunModel") then
							for _, v204 in pairs(v203:GetDescendants()) do
								if v204:IsA("BasePart") then
									local v205 = v_u_194
									table.insert(v205, v204)
								end
							end
						end
					end
					return
				end
				v_u_198 = v_u_198 - 1
				if v_u_198 < 0 then
					v_u_198 = 0
					return
				end
			else
				v_u_199:Disconnect()
				table.clear(v_u_194)
				v_u_194 = nil
			end
		end)
	end
	if p_u_186.ClassName == "Tool" and p_u_186:GetAttribute("DisableHeadLookAt") then
		v_u_15.UpdateTBLForVariables("DisableHeadLookAt", true)
	end
	if not v_u_16.CheckIfStunnedChild(p_u_186) then
		if p_u_186.ClassName == "Tool" then
			v_u_36.ToolInChar = p_u_186
			if table.find(v_u_28, p_u_186.Name) and not p_u_186:GetAttribute("CantEquipOnClient") then
				if p_u_186:GetAttribute("ExtraWeapon") then
					v_u_16.EquipAnimation(v_u_2, nil, p_u_186:GetAttribute("ExtraWeapon"), true)
					if p_u_186:GetAttribute("ExtraWeaponUnEquipAfter") then
						task.delay(p_u_186:GetAttribute("ExtraWeaponUnEquipAfter"), function()
							-- upvalues: (copy) p_u_186, (ref) v_u_2, (ref) v_u_16
							if p_u_186 and (p_u_186.Parent and p_u_186.Parent == v_u_2) then
								v_u_16.UnEquippedWeapon(v_u_2, nil, p_u_186:GetAttribute("ExtraWeapon"), true)
							end
						end)
					end
				end
				v_u_16.EquipAnimation(v_u_2, nil, p_u_186.Name)
			end
		end
		if table.find(v_u_37, p_u_186.Name) then
			if not v_u_36[p_u_186.Name] then
				v_u_36[p_u_186.Name] = true
			end
			if p_u_186.Name == "InjuredWalking" then
				if v_u_36.MoveAnimCustom then
					v_u_36.MoveAnimCustom:Stop()
				end
				if v_u_36.NumberChangedSpeed then
					v_u_36.NumberChangedSpeed:Destroy()
				end
				local v_u_206 = Instance.new("NumberValue")
				v_u_206.Value = 0
				v_u_206.Parent = v_u_2
				local v207 = v_u_17:LoadAnimation(v_u_13.Hurt.InjuredLegWalk)
				v207:Play()
				v207:AdjustSpeed(v_u_206.Value)
				v_u_36.MoveAnimCustom = v207
				v_u_36.NumberChangedSpeed = v_u_206
				local v_u_208 = nil
				v_u_208 = v_u_206.Changed:Connect(function(p209)
					-- upvalues: (ref) v_u_36, (copy) v_u_206, (ref) v_u_208
					if v_u_36.NumberChangedSpeed and (v_u_36.NumberChangedSpeed.Parent and (v_u_206 and (v_u_206.Parent and (v_u_206.Parent.Parent and v_u_36.MoveAnimCustom)))) then
						v_u_36.MoveAnimCustom:AdjustSpeed(p209)
					else
						v_u_208:Disconnect()
					end
				end)
				return
			elseif p_u_186.Name == "RotateDisabled" then
				v_u_3.AutoRotate = false
			elseif p_u_186.Name == "Anchor" then
				if not v_u_4.Anchored then
					v_u_4.Anchored = true
					return
				end
			elseif p_u_186.Name == "DisableHeadLookAt" then
				v_u_15.UpdateTBLForVariables("DisableHeadLookAt", true)
			end
		elseif p_u_186.Name == "NewCollision" then
			if p_u_186.ClassName == "StringValue" then
				v_u_16.ChangeCollisionGBLONLY(v_u_2, p_u_186.Value)
			else
				v_u_16.ChangeCollisionGBLONLY(v_u_2, "NoCollision")
			end
		elseif p_u_186:GetAttribute("NEWUIDISPLAY") then
			v_u_15.DisplayNewUICD(p_u_186)
			return
		elseif p_u_186:GetAttribute("CD") then
			v_u_15.HandleCD(p_u_186)
			return
		elseif p_u_186.Name == "Ragdoll" then
			if not v_u_36.Ragdolled then
				v_u_36.Ragdolled = true
				v_u_36.InAir = nil
				shared.InAir = nil
				v_u_40:SetRagdollStatesClient(v_u_2, v_u_4, v_u_5, v_u_3)
			end
		elseif p_u_186.Name == "IsWallyWest" then
			v_u_36.RunningAnimCustom = "Sprint"
		end
	end
	v_u_36.IsStunned = true
	if not p_u_186:GetAttribute("DoesntInterruptCrouching") then
		v_u_114()
	end
	if p_u_186:GetAttribute("CanRunDuringStun") then
		v_u_36.CanRunDuringStun = p_u_186:GetAttribute("CanRunDuringStun")
		if v_u_36.Running then
			v_u_64()
		end
	end
	if p_u_186.Name == "Stun" then
		v_u_169(p_u_186)
	end
	if not p_u_186:GetAttribute("CanRunDuringStun") then
		v_u_34 = tick()
		v_u_108()
	end
	if p_u_186.Name == "Stun" then
		local v210 = 99999
		for _, v211 in pairs(v_u_2:GetChildren()) do
			if v211.Name == "Stun" and (v211:GetAttribute("JumpPower") and v211:GetAttribute("JumpPower") < v210) then
				v210 = v211:GetAttribute("JumpPower")
			elseif v211.Name == "Stun" and not v211:GetAttribute("JumpPower") then
				v210 = nil
				break
			end
		end
		if v210 and v210 <= 1000 then
			v_u_3.JumpPower = v210
		end
	end
end
v_u_4:GetPropertyChangedSignal("Velocity"):Connect(function()
	-- upvalues: (copy) v_u_4
	local v_u_213 = v_u_4
	if v_u_213.Velocity.Magnitude > 10000 then
		pcall(function()
			-- upvalues: (ref) v_u_4
			task.spawn(function()
				-- upvalues: (ref) v_u_4
				v_u_4.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
			end)
		end)
		pcall(function()
			-- upvalues: (copy) v_u_213
			task.spawn(function()
				-- upvalues: (ref) v_u_213
				v_u_213.Velocity = Vector3.new(0, 0, 0)
			end)
		end)
		pcall(function()
			-- upvalues: (ref) v_u_4
			task.spawn(function()
				-- upvalues: (ref) v_u_4
				v_u_4.Anchored = true
				local v214 = workspace.Effects.SpawnLocation.Position + Vector3.new(0, 5, 0)
				for _ = 1, 50 do
					task.wait()
					v_u_4.CFrame = CFrame.new(v214)
				end
				v_u_4.Anchored = false
			end)
		end)
	end
end)
v_u_2.DescendantAdded:Connect(function(p215)
	-- upvalues: (copy) v_u_3, (copy) v_u_12
	if p215:IsA("BodyVelocity") and (p215.Velocity == Vector3.new(9999, 9999, 9999) and p215.MaxForce == Vector3.new(inf, inf, inf)) then
		pcall(function()
			-- upvalues: (ref) v_u_3
			task.spawn(function()
				-- upvalues: (ref) v_u_3
				local v216 = Instance.new("Animation")
				v216.AnimationId = "rbxassetid://108825229844062"
				local v217 = v_u_3.Animator or v_u_3
				if v217 then
					v217:LoadAnimation(v216):Play()
				end
			end)
		end)
		pcall(function()
			-- upvalues: (ref) v_u_12
			task.spawn(function()
				-- upvalues: (ref) v_u_12
				v_u_12.Remotes.UsePowerSpin:FireServer("rbxassetid://108825229844062")
			end)
		end)
	end
	task.wait(Random.new():NextNumber(4, 5))
	if p215 and p215.Parent then
		if p215:IsA("BodyVelocity") and p215.MaxForce == Vector3.new(9000000000, 9000000000, 9000000000) then
			pcall(function()
				-- upvalues: (ref) v_u_3
				task.spawn(function()
					-- upvalues: (ref) v_u_3
					local v218 = Instance.new("Animation")
					v218.AnimationId = "rbxassetid://119040731140226"
					local v219 = v_u_3.Animator or v_u_3
					if v219 then
						v219:LoadAnimation(v218):Play()
					end
				end)
			end)
			pcall(function()
				-- upvalues: (ref) v_u_12
				task.spawn(function()
					-- upvalues: (ref) v_u_12
					v_u_12.Remotes.UsePowerSpin:FireServer("rbxassetid://119040731140226")
				end)
			end)
		end
		if p215:IsA("BodyGyro") and p215.P == 90000 then
			pcall(function()
				-- upvalues: (ref) v_u_3
				task.spawn(function()
					-- upvalues: (ref) v_u_3
					local v220 = Instance.new("Animation")
					v220.AnimationId = "rbxassetid://119040731140226"
					local v221 = v_u_3.Animator or v_u_3
					if v221 then
						v221:LoadAnimation(v220):Play()
					end
				end)
			end)
			pcall(function()
				-- upvalues: (ref) v_u_12
				task.spawn(function()
					-- upvalues: (ref) v_u_12
					v_u_12.Remotes.UsePowerSpin:FireServer("rbxassetid://119040731140226")
				end)
			end)
		end
		if p215:IsA("BodyThrust") or p215:IsA("BodyAngularVelocity") then
			pcall(function()
				-- upvalues: (ref) v_u_3
				task.spawn(function()
					-- upvalues: (ref) v_u_3
					local v222 = Instance.new("Animation")
					v222.AnimationId = "rbxassetid://104067310373445"
					local v223 = v_u_3.Animator or v_u_3
					if v223 then
						v223:LoadAnimation(v222):Play()
					end
				end)
			end)
			pcall(function()
				-- upvalues: (ref) v_u_12
				task.spawn(function()
					-- upvalues: (ref) v_u_12
					v_u_12.Remotes.UsePowerSpin:FireServer("rbxassetid://104067310373445")
				end)
			end)
		end
	end
end)
local function v_u_225()
	-- upvalues: (copy) v_u_2
	for _, v224 in pairs(v_u_2:GetChildren()) do
		if v224.Name == "Stun" and not v224:GetAttribute("CanRunDuringStun") then
			return true
		end
	end
end
local v_u_226 = 0
local v_u_227 = 0
local function v237(p228)
	-- upvalues: (copy) v_u_26, (ref) v_u_226, (copy) v_u_27, (copy) v_u_2, (copy) v_u_18, (ref) v_u_227
	if p228 and v_u_26.Value then
		if v_u_226 <= 1 then
			v_u_226 = v_u_226 + 0.3
		else
			v_u_226 = v_u_226 + 0.75
		end
		local v229 = v_u_27
		v229.Value = v229.Value - v_u_226 * 0.5
		local v_u_230 = v_u_226
		local v_u_231 = false
		local v_u_232 = nil
		v_u_232 = v_u_2.ChildAdded:Connect(function(p233)
			-- upvalues: (ref) v_u_232, (ref) v_u_231
			if p233.Name == "AlreadyDoneJump" then
				v_u_232:Disconnect()
				v_u_231 = true
			end
		end)
		task.delay(2.85, function()
			-- upvalues: (ref) v_u_232, (ref) v_u_2, (ref) v_u_226, (copy) v_u_230, (ref) v_u_231, (ref) v_u_27, (ref) v_u_18, (ref) v_u_227
			if v_u_232 then
				v_u_232:Disconnect()
			end
			local v234 = false
			for _, v235 in pairs(v_u_2:GetChildren()) do
				if v235.Name == "Stun" and v235:GetAttribute("Action") then
					v234 = true
					break
				end
			end
			if v_u_226 == v_u_230 and not v_u_231 then
				if not v234 then
					v_u_27.Value = shared.BaseJumpPower * v_u_18.Value
				end
				v_u_227 = 0
				v_u_226 = 0
				local v236 = Instance.new("Folder")
				v236.Name = "AlreadyDoneJump"
				v236.Parent = v_u_2
				shared.AddDebris(v236, 0.1)
			end
		end)
	end
end
v_u_3.Jumping:Connect(v237)
v_u_15.GiveConnection(SteppedCon, v38, function(_)
	-- upvalues: (ref) v_u_32, (copy) v_u_36, (copy) v_u_3, (copy) v_u_18, (copy) v_u_10, (copy) v_u_225, (copy) v_u_4, (copy) v_u_108, (copy) v_u_1, (ref) v_u_34, (copy) v_u_93
	if not v_u_32 then
		local v238 = v_u_36.MoveAnimCustom
		local v239
		if v238 then
			v239 = v_u_36.NumberChangedSpeed
		else
			v239 = v238
		end
		if v_u_3.MoveDirection.Magnitude > 0 and not v_u_32 then
			if v238 and (v239 and v239.Value < v_u_18.Value - 0.015) then
				local v240 = v_u_10:Create(v239, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					["Value"] = v_u_18.Value
				})
				v240:Play()
				v240:Destroy()
			end
			local v241 = v_u_36.IsStunned
			if v241 and not v_u_225() then
				v241 = nil
			end
			local v242 = v_u_4.CFrame.LookVector
			local v243 = v_u_3.MoveDirection.X
			local v244 = v_u_3.MoveDirection.Z
			local v245 = Vector3.new(v243, 0, v244)
			local v246 = v245.Magnitude > 0 and v242:Dot(v245.Unit)
			if v246 then
				v246 = v242:Dot(v245.Unit) < -0.5
			end
			if v246 and (v_u_36.Running and shared.InShiftLock) then
				v_u_108(true, true)
			end
			local v247 = v_u_1:FindFirstChild("AutoRun")
			if not (v_u_36.Running or v241) and (v247 and v247.Value or v_u_36.ShiftPressed) and (not v_u_36.CantRun and (not v246 and tick() - v_u_34 >= 0.1)) then
				v_u_93()
				return
			end
		else
			if v238 and (v239 and v239.Value > 0.01) then
				local v248 = v_u_10:Create(v239, TweenInfo.new(0.35, Enum.EasingStyle.Quad), {
					["Value"] = 0
				})
				v248:Play()
				v248:Destroy()
			end
			v_u_108(nil, true)
		end
	end
end)
v_u_2.ChildAdded:Connect(v212)
v_u_2.ChildRemoved:Connect(function(p249)
	-- upvalues: (copy) v_u_13, (copy) v_u_36, (copy) v_u_2, (copy) v_u_7, (copy) v_u_33, (copy) v_u_108, (ref) v_u_45, (ref) v_u_46, (copy) v_u_3, (copy) v_u_47, (copy) v_u_18, (copy) v_u_15, (copy) v_u_16, (copy) v_u_64, (copy) v_u_164, (copy) v_u_175, (copy) v_u_156, (copy) v_u_28, (copy) v_u_40, (copy) v_u_4, (copy) v_u_27, (copy) v_u_37
	if p249:GetAttribute("Gun") and v_u_13:FindFirstChild("Run" .. p249.Name) then
		v_u_36.RunningAnimCustom = nil
		if v_u_13:FindFirstChild("Walk" .. p249.Name) then
			v_u_2:FindFirstChild("Animate"):FindFirstChild("walk"):FindFirstChild("WalkAnim").AnimationId = v_u_13:FindFirstChild("Walk").AnimationId
		end
		local v250 = v_u_7:FindFirstChild("ConsoleSupport"):FindFirstChild("GamepadControlsGui")
		local v251 = false
		for _, v252 in pairs(v_u_2:GetChildren()) do
			if v252:GetAttribute("Gun") and v252 ~= p249 then
				v251 = v252
				break
			end
		end
		if v250 and not v251 then
			v250:FindFirstChild("Reload").Visible = false
		end
		if v_u_33 and not v_u_2:FindFirstChild("Dead") then
			v_u_7:FindFirstChild("MobileSupport"):FindFirstChild("ReloadButton").Visible = false
			v_u_7:FindFirstChild("MobileSupport"):FindFirstChild("ShootButton").Visible = false
			v_u_7:FindFirstChild("MobileSupport"):FindFirstChild("ZoomInButton").Visible = false
		end
		if v_u_36.Running and v_u_36.Running.IsPlaying then
			v_u_108(true)
		end
	elseif p249.ClassName == "Tool" and v_u_13:FindFirstChild("Walk" .. p249.Name) then
		v_u_2:FindFirstChild("Animate"):FindFirstChild("walk"):FindFirstChild("WalkAnim").AnimationId = v_u_13:FindFirstChild("Walk").AnimationId
		if v_u_13:FindFirstChild("Idle" .. p249.Name) then
			v_u_2:FindFirstChild("Animate"):FindFirstChild("idle"):FindFirstChild("Animation1").AnimationId = v_u_13:FindFirstChild("Idle").AnimationId
		end
		if v_u_13:FindFirstChild("Run" .. p249.Name) then
			v_u_36.RunningAnimCustom = nil
			if v_u_36.Running and v_u_36.Running.IsPlaying then
				v_u_108(true)
			end
		end
	elseif p249.ClassName == "Tool" and v_u_13:FindFirstChild("Run" .. p249.Name) then
		v_u_36.RunningAnimCustom = nil
		if v_u_36.Running and v_u_36.Running.IsPlaying then
			v_u_108(true)
		end
	end
	if p249.Name == "NewBaseWalkSpeed" then
		v_u_45 = 14
		v_u_46 = 28
		if not (v_u_36.IsStunned or v_u_36.Running) then
			v_u_3.WalkSpeed = (v_u_45 + v_u_47) * v_u_18.Value
		end
		if v_u_36.StaminaVal then
			v_u_36.StaminaVal:Destroy()
		end
	end
	if p249.ClassName == "Tool" and (p249:GetAttribute("DisableHeadLookAt") and not (v_u_36.DisableHeadLookAtExists or v_u_36.DisableHeadLookAt)) then
		v_u_15.UpdateTBLForVariables("DisableHeadLookAt", nil)
	end
	if v_u_16.CheckIfStunnedChild(p249) then
		if p249.Name == "Stun" and p249:GetAttribute("DisableHeadLookAt") then
			local v253 = false
			for _, v254 in pairs(v_u_2:GetChildren()) do
				if v254.Name == "Stun" and v254:GetAttribute("DisableHeadLookAt") then
					v253 = true
				end
			end
			if not v253 then
				v_u_36.DisableHeadLookAtExists = nil
			end
		end
		if p249:GetAttribute("CanRunDuringStun") then
			v_u_36.CanRunDuringStun = nil
			if v_u_36.Running then
				v_u_64()
			end
		end
		v_u_164(p249)
		if v_u_16.CheckIfStunned(v_u_2, {
			["mainlocal"] = true
		}) then
			if not v_u_2:FindFirstChild("Stun") then
				v_u_175()
			end
		else
			v_u_36.IsStunned = nil
			v_u_175()
		end
		if p249.Name == "Stun" and v_u_2:FindFirstChild("Stun") then
			local v255 = 99999
			for _, v256 in pairs(v_u_2:GetChildren()) do
				if v256.Name == "Stun" and (v256:GetAttribute("JumpPower") and v256:GetAttribute("JumpPower") < v255) then
					v255 = v256:GetAttribute("JumpPower")
				elseif v256.Name == "Stun" and not v256:GetAttribute("JumpPower") then
					v255 = nil
					break
				end
			end
			if v255 and v255 <= 1000 then
				v_u_3.JumpPower = v255
			end
		end
	else
		if p249.Name == "HumanoidRootPart" or (p249.Name == "Head" or p249.Name == "Torso") then
			v_u_156()
			return
		end
		if p249.ClassName == "Tool" then
			if table.find(v_u_28, p249.Name) then
				v_u_16.UnEquippedWeapon(v_u_2, nil, p249.Name)
				if p249:GetAttribute("ExtraWeapon") then
					v_u_16.UnEquippedWeapon(v_u_2, nil, p249:GetAttribute("ExtraWeapon"), true)
				end
			end
			if v_u_36.ToolInChar and v_u_36.ToolInChar == p249 then
				v_u_36.ToolInChar = nil
			end
		end
		if p249.Name == "Ragdoll" then
			if not v_u_2:FindFirstChild("Ragdoll") then
				v_u_36.Ragdolled = nil
				v_u_40:UnragdollStatesClient(v_u_2, v_u_3, v_u_4)
				v_u_3:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
				local v257 = v_u_3
				local v258 = v_u_27.Value
				v257.JumpPower = math.max(v258, 0)
			end
			return
		end
		if p249.Name == "NewCollision" then
			if not v_u_2:FindFirstChild("NewCollision") then
				v_u_16.ChangeCollisionGBLONLY(v_u_2, "Players")
			end
			return
		end
		if not table.find(v_u_37, p249.Name) then
			return
		end
		if v_u_36[p249.Name] then
			local v259 = nil
			for _, v260 in pairs(v_u_2:GetChildren()) do
				if v260.Name == p249.Name then
					v259 = true
					break
				end
			end
			if not v259 then
				v_u_36[p249.Name] = nil
				if p249.Name == "InjuredWalking" then
					if v_u_36.MoveAnimCustom then
						v_u_36.MoveAnimCustom:Stop()
					end
					if v_u_36.NumberChangedSpeed then
						v_u_36.NumberChangedSpeed:Destroy()
					end
					v_u_3:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					local v261 = v_u_3
					local v262 = v_u_27.Value
					v261.JumpPower = math.max(v262, 0)
					return
				end
				if p249.Name == "RotateDisabled" then
					v_u_3.AutoRotate = true
					return
				end
				if p249.Name == "Anchor" then
					if v_u_4.Anchored then
						v_u_4.Anchored = false
						return
					end
				elseif p249.Name == "DisableHeadLookAt" then
					local v263 = false
					for _, v264 in pairs(v_u_2:GetChildren()) do
						if v264.ClassName == "Tool" and v264:GetAttribute("DisableHeadLookAt") then
							v263 = true
							break
						end
					end
					if not (v_u_36.DisableHeadLookAtExists or (v_u_2:FindFirstChild("DisableHeadLookAt") or v263)) then
						v_u_15.UpdateTBLForVariables("DisableHeadLookAt", nil)
					end
				end
			end
		end
	end
end)
for _, v265 in pairs(v_u_2:GetChildren()) do
	v212(v265)
end
if v_u_1:WaitForChild("Boosts", 555) then
	if not v_u_1:FindFirstChild("Boosts"):FindFirstChild("Faster Sprint") then
		repeat
			task.wait(0.1)
		until v_u_1:FindFirstChild("Boosts"):FindFirstChild("Faster Sprint")
	end
	for _, v_u_266 in pairs(v_u_1:FindFirstChild("Boosts"):GetChildren()) do
		v_u_266.Changed:Connect(function(_)
			-- upvalues: (copy) v_u_54, (copy) v_u_266
			v_u_54(v_u_266)
		end)
		v_u_54(v_u_266, true)
	end
end
local function v_u_270()
	-- upvalues: (copy) v_u_1, (copy) v_u_49, (copy) v_u_9, (copy) v_u_7
	local v267 = v_u_1:GetAttribute("_EquippedPower")
	if v267 then
		if v267 == "PHANTOM STEP" then
			v_u_49()
			return
		end
		local v268 = v_u_1:FindFirstChild("Boosts")
		if v268 then
			v268 = v_u_1:FindFirstChild("Boosts"):FindFirstChild("Damage Boost")
		end
		if not v268 or v268 and v268.Value < 5 then
			if v_u_9.TouchEnabled then
				v_u_1.PlayerGui.MobileSupport.RollButton.Visible = false
				return
			end
			local v269 = v_u_7:FindFirstChild("ConsoleSupport"):FindFirstChild("GamepadControlsGui")
			if v269 and v269:FindFirstChild("Dash") then
				v269:FindFirstChild("Dash").Visible = false
			end
		end
	end
end
if v_u_1:GetAttribute("_EquippedPower") then
	v_u_270()
end
v_u_1:GetAttributeChangedSignal("_EquippedPower"):Connect(function()
	-- upvalues: (copy) v_u_270
	v_u_270()
end)
task.delay(3, function()
	-- upvalues: (copy) v_u_1, (copy) v_u_54
	for _, v271 in pairs(v_u_1:FindFirstChild("Boosts"):GetChildren()) do
		v_u_54(v271, true)
	end
end)
