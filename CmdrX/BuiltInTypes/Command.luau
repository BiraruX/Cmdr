local Util = require(script.Parent.Parent.Shared.Util)

return function(CmdrX)
	local commandType = {
		Transform = function(text)
			local findCommand = Util.MakeFuzzyFinder(CmdrX:GetCommandNames())

			return findCommand(text)
		end,

		Validate = function(commands)
			return #commands > 0, "No command with that name could be found."
		end,

		Autocomplete = function(commands)
			return commands
		end,

		Parse = function(commands)
			return commands[1]
		end,
	}

	CmdrX:RegisterType("command", commandType)
	CmdrX:RegisterType("commands", Util.MakeListableType(commandType))
end
