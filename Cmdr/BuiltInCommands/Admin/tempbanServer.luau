local Players = game:GetService("Players")

return function(_, players, duration, reason, privateReason, excludeAltAccounts)
	if duration <= 0 then
		return "Invalid duration."
	end

	local response = Players:BanAsync({
		UserIds = players,
		Duration = duration,
		DisplayReason = reason,
		PrivateReason = privateReason or reason,
		ExcludeAltAccounts = excludeAltAccounts or false,
		ApplyToUniverse = true,
	})

	if response then
		return response
	end

	return if #players <= 2 then `Tempbanned {#players} players` else `Tempbanned {#players} player`
end
