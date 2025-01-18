local HttpService = game:GetService("HttpService")

return function(_, url)
	local success, response = pcall(function()
		return HttpService:GetAsync(url)
	end)

	return response
end
