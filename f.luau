local ReGui = loadstring(game:HttpGet('https://raw.githubusercontent.com/depthso/Dear-ReGui/refs/heads/main/ReGui.lua'))()
local Window = ReGui:Window({
	Title = "Internal Desync...",
	Size = UDim2.fromOffset(300, 200)
}) --> Canvas & WindowClass

Window:Button({
	Text = "Start Desync",
	Callback = function()
		if getgenv().hi == nil then getgenv().hi = false end
		getgenv().hi = not getgenv().hi

		setfflag('NextGenReplicatorEnabledWrite4', tostring(hi))
	end,
})
