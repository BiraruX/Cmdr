local Players = game:GetService("Players")

return function(_, players, reason, privateReason, excludeAltAccounts)
	local response = Players:BanAsync({
		UserIds = players,
		Duration = -1,
		DisplayReason = reason,
		PrivateReason = privateReason or reason,
		ExcludeAltAccounts = excludeAltAccounts or false,
		ApplyToUniverse = true,
	})

	if response then
		return response
	end

	return if #players <= 2 then `Banned {#players} players` else `Banned {#players} player`
end
