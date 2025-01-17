local Util = require(script.Parent.Parent.Shared.Util)

local storedKeyType = {
	Validate = function(text)
		if text:match("^https?://.+$") then
			return true
		end

		return false, "URLs must begin with http:// or https://"
	end,

	Parse = function(text)
		return text
	end,
}

return function(CmdrX)
	CmdrX:RegisterType("url", storedKeyType)
	CmdrX:RegisterType("urls", Util.MakeListableType(storedKeyType))
end
