local Util = require(script.Parent.Parent.Shared.Util)

local stringType = {
	Validate = function(value)
		return value ~= nil
	end,

	Parse = function(value)
		return tostring(value)
	end,
}

local numberType = {
	Transform = function(text)
		return tonumber(text)
	end,

	Validate = function(value)
		return value ~= nil
	end,

	Parse = function(value)
		return value
	end,
}

local intType = {
	Transform = function(text)
		return tonumber(text)
	end,

	Validate = function(value)
		return value ~= nil and value == math.floor(value), "Only whole numbers are valid."
	end,

	Parse = function(value)
		return value
	end,
}

local positiveIntType = {
	Transform = function(text)
		return tonumber(text)
	end,

	Validate = function(value)
		return value ~= nil and value == math.floor(value) and value > 0, "Only positive whole numbers are valid."
	end,

	Parse = function(value)
		return value
	end,
}

local nonNegativeIntType = {
	Transform = function(text)
		return tonumber(text)
	end,

	Validate = function(value)
		return value ~= nil and value == math.floor(value) and value >= 0, "Only non-negative whole numbers are valid."
	end,

	Parse = function(value)
		return value
	end,
}

local byteType = {
	Transform = function(text)
		return tonumber(text)
	end,

	Validate = function(value)
		return value ~= nil and value == math.floor(value) and value >= 0 and value <= 255, "Only bytes are valid."
	end,

	Parse = function(value)
		return value
	end,
}

local digitType = {
	Transform = function(text)
		return tonumber(text)
	end,

	Validate = function(value)
		return value ~= nil and value == math.floor(value) and value >= 0 and value <= 9, "Only digits are valid."
	end,

	Parse = function(value)
		return value
	end,
}

local boolType
do
	local truthy = Util.MakeDictionary({ "true", "t", "yes", "y", "on", "enable", "enabled", "1", "+" })
	local falsy = Util.MakeDictionary({ "false", "f", "no", "n", "off", "disable", "disabled", "0", "-" })

	boolType = {
		Transform = function(text)
			return text:lower()
		end,

		Validate = function(value)
			return truthy[value] ~= nil or falsy[value] ~= nil, "Please use true/yes/on or false/no/off."
		end,

		Parse = function(value)
			if truthy[value] then
				return true
			elseif falsy[value] then
				return false
			else
				return nil
			end
		end,
	}
end

return function(CmdrX)
	CmdrX:RegisterType("string", stringType)
	CmdrX:RegisterType("number", numberType)
	CmdrX:RegisterType("integer", intType)
	CmdrX:RegisterType("positiveInteger", positiveIntType)
	CmdrX:RegisterType("nonNegativeInteger", nonNegativeIntType)
	CmdrX:RegisterType("byte", byteType)
	CmdrX:RegisterType("digit", digitType)
	CmdrX:RegisterType("boolean", boolType)

	CmdrX:RegisterType("strings", Util.MakeListableType(stringType))
	CmdrX:RegisterType("numbers", Util.MakeListableType(numberType))
	CmdrX:RegisterType("integers", Util.MakeListableType(intType))
	CmdrX:RegisterType("positiveIntegers", Util.MakeListableType(positiveIntType))
	CmdrX:RegisterType("nonNegativeIntegers", Util.MakeListableType(nonNegativeIntType))
	CmdrX:RegisterType("bytes", Util.MakeListableType(byteType))
	CmdrX:RegisterType("digits", Util.MakeListableType(digitType))
	CmdrX:RegisterType("booleans", Util.MakeListableType(boolType))
end
