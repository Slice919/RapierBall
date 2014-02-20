-- Constants
MAX_PLAYERS = 10
STARTING_GOLD = 625
-- game end states
NOT_ENDED = 0
GOODGUYS = 1
BADGUYS = 2

-- Reload support apparently
if RapierballGameMode == nil then
    RapierballGameMode = {}
    RapierballGameMode.szEntityClassName = "Rapierball"
    RapierballGameMode.szNativeClassName = "dota_base_game_mode"
    RapierballGameMode.__index = RapierballGameMode
	print('Game mode loads here.')
end



EntityFramework:RegisterScriptClass( RapierballGameMode )