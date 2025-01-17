local CollectionService = game:GetService("CollectionService")
local TweenService = game:GetService("TweenService")

for _, instance in workspace:GetDescendants() do
	if instance:IsA("BasePart") and not instance.CanCollide then
		instance:AddTag("RayBlacklist")
	end
end

workspace.DescendantAdded:Connect(function(descendant)
	if descendant:IsA("BasePart") and not descendant.CanCollide then
		descendant:AddTag("RayBlacklist")
	end
end)

return {
	Name = "blink",
	Aliases = { "b" },
	Description = "Teleports you to where your mouse is hovering.",
	Group = "DefaultDebug",
	Args = {},

	ClientRun = function(context)
		-- We implement this here because player position is owned by the client.
		-- No reason to bother the server for this!

		local mouse = context.Executor:GetMouse()
		local character = context.Executor.Character

		if not (character and character:FindFirstChild("HumanoidRootPart")) then
			return "You don't have a character."
		end

		local playerGui = context.Executor.PlayerGui

		local blinkGUI = Instance.new("ScreenGui")
		blinkGUI.Name = "BlinkGUI"
		blinkGUI.IgnoreGuiInset = true
		blinkGUI.ResetOnSpawn = false
		blinkGUI.Parent = playerGui

		local upper = Instance.new("Frame")
		upper.Name = "Upper"
		upper.AnchorPoint = Vector2.new(0.5, 0)
		upper.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		upper.Position = UDim2.fromScale(0.5, -0.5)
		upper.Size = UDim2.fromScale(1, 0.5)
		upper.Parent = blinkGUI

		local lower = Instance.new("Frame")
		lower.Name = "Lower"
		lower.AnchorPoint = Vector2.new(0.5, 0)
		lower.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		lower.Position = UDim2.fromScale(0.5, 1)
		lower.Size = UDim2.fromScale(1, 0.5)
		lower.Parent = blinkGUI

		local tweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, true)
		local upperTween, lowerTween =
			TweenService:Create(upper, tweenInfo, { Position = UDim2.fromScale(0.5, 0) }),
			TweenService:Create(lower, tweenInfo, { Position = UDim2.fromScale(0.5, 0.5) })

		character:AddTag("RayBlacklist")

		local raycastParams = RaycastParams.new()
		raycastParams.FilterType = Enum.RaycastFilterType.Exclude
		raycastParams.FilterDescendantsInstances = CollectionService:GetTagged("RayBlacklist")
		raycastParams.IgnoreWater = true
		raycastParams.CollisionGroup = "Default"

		local raycastResult = workspace:Raycast(mouse.UnitRay.Origin, mouse.UnitRay.Direction * 1000, raycastParams)

		upperTween:Play()
		lowerTween:Play()
		character:MoveTo(if raycastResult then raycastResult.Position else mouse.Hit.Position)

		lowerTween.Completed:Wait()
		blinkGUI:Destroy()

		return "Blinked!"
	end,
}
