local Players = game:GetService("Players")

return function(_, players)
	local response = Players:UnbanAsync({
		UserIds = players,
		ApplyToUniverse = true,
	})

	if response then
		return response
	end

	return if #players <= 2 then `Unbanned {#players} players` else `Unbanned {#players} player`
end
