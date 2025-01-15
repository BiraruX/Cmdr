local Players = game:GetService("Players")

return function (_, players, reason, privateReason, excludeAltAccounts)
	Players:BanAsync({
		UserIds = players,
		Duration = -1,
		DisplayReason = reason,
		PrivateReason = privateReason or reason,
		ExcludeAltAccounts = excludeAltAccounts or false,
		ApplyToUniverse = true,
	})

	return ("Banned %d players."):format(#players)
end