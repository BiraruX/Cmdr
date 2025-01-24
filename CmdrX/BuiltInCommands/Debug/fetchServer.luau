local HttpService = game:GetService("HttpService")

return function(_, url)
	local _, response = pcall(function()
		return HttpService:GetAsync(url)
	end)

	return response
end
