return {
	Name = "tempban",
	Aliases = { "tb" },
	Description = "Temporarily Bans a player or set of players.",
	Group = "DefaultAdmin",
	Args = {
		{
			Type = "playerIds",
			Name = "players",
			Description = "The players to ban.",
		},
		{
			Type = "duration",
			Name = "duration",
			Description = "How long the ban should last. A negative value means a permanent ban.",
		},
		{
			Type = "string",
			Name = "reason",
			Description = "The reason for the ban. This is shown to the player(s) and saved in history.",
		},
		{
			Type = "string",
			Name = "privateReason",
			Description = "The private reason for the ban. This is not shown to the player(s) but is saved in history.",
			Optional = true,
		},
		{
			Type = "boolean",
			Name = "excludeAltAccounts",
			Description = "Whether to exclude alt accounts from the ban.",
			Optional = true,
		},
	},
}
