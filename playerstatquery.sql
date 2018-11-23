SELECT player.playersurname,
player.playername,
player.playerposition,
team.teamname,
sum(playerstat.pstattotalpoint) as TPT,
SUM(playerstat.pstatassist) as AST,
sum(playerstat.pstattotalpoint+playerstat.pstatassist) as SCREFF,
round(avg(playerstat.pstatassist/playerstat.pstattotalpoint),2) as ASPTRatio
FROM player, euroleague.playerstat, team
where player.playerid = playerstat.pstatplayerid
and player.playerteamid = team.TeamID
and player.playerposition = "guard"
#and player.playerteamid ="ULK"
group by player.playerid
order by SCREFF desc
LIMIT 10;