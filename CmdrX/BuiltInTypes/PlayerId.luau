local Util = require(script.Parent.Parent.Shared.Util)
local Players = game:GetService("Players")

local nameCache = {}
local function getUserId(name)
	local extractedUsername = name:match("%((.-)%)") or name

	if nameCache[extractedUsername] then
		return nameCache[extractedUsername]
	elseif Players:FindFirstChild(extractedUsername) then
		nameCache[extractedUsername] = Players[extractedUsername].UserId
		return Players[extractedUsername].UserId
	else
		local ok, userid = pcall(Players.GetUserIdFromNameAsync, Players, extractedUsername)

		if not ok then
			return nil
		end

		nameCache[extractedUsername] = userid
		return userid
	end
end

local playerIdType = {
	DisplayName = "Full Player Name",
	Prefixes = "# positiveInteger",

	Transform = function(text)
		local findPlayer = Util.MakeFuzzyFinder(Players:GetPlayers())

		return text, findPlayer(text)
	end,

	ValidateOnce = function(text)
		return getUserId(text) ~= nil, "No player with that name could be found."
	end,

	Autocomplete = function(_, players)
		return Util.GetNames(players)
	end,

	Parse = function(text)
		return getUserId(text)
	end,

	Default = function(player)
		return player.Name
	end,

	ArgumentOperatorAliases = {
		me = ".",
		all = "*",
		others = "**",
		random = "?",
	},
}

return function(CmdrX)
	CmdrX:RegisterType("playerId", playerIdType)
	CmdrX:RegisterType(
		"playerIds",
		Util.MakeListableType(playerIdType, {
			Prefixes = "# positiveIntegers",
		})
	)
end
