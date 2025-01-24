local HttpService = game:GetService("HttpService")

local url = "https://api.github.com/repos/BiraruX/CmdrX/releases/latest"
local version = "v1.13.1"

return {
	Name = "version",
	Args = {},
	Description = "Shows the current version of CmdrX",
	Group = "DefaultDebug",

	ClientRun = function(context)
		if HttpService.HttpEnabled then
			local success, response = pcall(function()
				return HttpService:GetAsync(url, true)
			end)

			if success then
				local data = HttpService:JSONDecode(response)
				context:Reply(`A Latest Version Of CmdrX Is Available: {data.tag_name}`)
			end
		end

		return `CmdrX Version {version}`
	end,
}
