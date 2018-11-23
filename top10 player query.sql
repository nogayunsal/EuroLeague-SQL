SELECT distinct careerplayerid, CONCAT( player. playername," ",player.playersurname) as PLYR, player.playerteamid, sum(playercareer.CareerAssist) as ASST
FROM euroleague.playercareer
join player
on careerplayerid = player.playerid
#where playernplayerationality = "TUR"
group by playerid
order by SUM(playercareer.careerassist) desc
limit 10;