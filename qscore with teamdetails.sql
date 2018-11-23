
SELECT gameid, gamehometeamid as HT,
GameVisitingTeamID as VT,
team1.TeamName as HTName,
team2.teamname as VTName,
qscoret1.Qscoreperiod as period,
qscoret1.qscore as HScore,
qscoret2.qscore as VScore


FROM
gameinformation,
quarterscore as qscoret1,
quarterscore as qscoret2,
team as team1,
team as team2

where
(gameid = qscoret1.qscoregameid
and
qscoret1.qscoreHV = "H")
and
(gameid = qscoret2.qscoregameid
and
qscoret2.qscoreHV = "V")
and
qscoret1.qscoreperiod =qscoret2.qscoreperiod
and (team1.teamid=gameinformation.gamehometeamid
and team2.teamid=gameinformation.gamevisitingteamid)
#and
#(qscoret1.Qscoreperiod =5 and qscoret1.qscore<>0)

order by gameid, period asc;
