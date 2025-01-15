local Players = game:GetService("Players")

return function (_, players, duration, reason, privateReason, excludeAltAccounts)
	if duration <= 0 then
		return "Invalid duration."
	end

	Players:BanAsync({
		UserIds = players,
		Duration = duration,
		DisplayReason = reason,
		PrivateReason = privateReason or reason,
		ExcludeAltAccounts = excludeAltAccounts or false,
		ApplyToUniverse = true,
	})

	return ("Temporarily banned %d players."):format(#players)
end