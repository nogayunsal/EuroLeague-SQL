
SELECT

playerstat.pstatplayerid as PlyrID,
concat(player.Playername," ",player.playersurname) as PLYR,
player.PlayerTeamID,
playerstat.pstatgameid as GameNo,
indexcoefficient.IndexAlias,


round(((IndexCMinute * PstatMinute)+
(IndexCTotalPoint * PStatTotalPoint)+
(IndexC2PTSuccess * PStat2PTSuccess)+
(IndexC2PTFailure * Pstat2PTFailure)+
(IndexC3PTSuccess * PStat3PTSuccess)+
(IndexC3PTFailure * PStat3PTFailure)+
(IndexCFTSuccess * PStatFTSuccess)+
(IndexCFTFailure * PStatFTFailure)+
(IndexCOffRebound * PStatOffRebound)+
(IndexCDefRebound * PStatDefRebound)+
(IndexCAssist * PStatAssist)+
(IndexCSteal * PStatSteal)+
(IndexCTurnover * PStatTurnover)+
(IndexCBlockinFavor * PStatBlockinFavor)+
(IndexCBlockAgainst * PStatBlockAgainst)+
(IndexCFaulCommitted * PStatFaulCommitted)+
(IndexCFaulReceived * PstatFaulReceived)),2) as IdxSCr,

round((indexcoefficient.IndexCMinute * playerstat.PstatMinute),2) AS MinuteComp,
(indexcoefficient.IndexCTotalPoint * playerstat.PStatTotalPoint) AS TotalPointComp,
(indexcoefficient.IndexC2PTSuccess * playerstat.PStat2PTSuccess) AS 2PTSuccessComp,
(indexcoefficient.IndexC2PTFailure * playerstat.Pstat2PTFailure) AS 2PTFailureComp,
(indexcoefficient.IndexC3PTSuccess * playerstat.PStat3PTSuccess) AS 3PTSuccessComp,
(indexcoefficient.IndexC3PTFailure * playerstat.PStat3PTFailure) AS 3PTFailureComp,
(indexcoefficient.IndexCFTSuccess * playerstat.PStatFTSuccess) AS FTSuccessComp,
(indexcoefficient.IndexCFTFailure * playerstat.PStatFTFailure) AS FTFailureComp,
(indexcoefficient.IndexCOffRebound * playerstat.PStatOffRebound) AS OffReboundComp,
(indexcoefficient.IndexCDefRebound * playerstat.PStatDefRebound) AS DefReboundComp,
(indexcoefficient.IndexCAssist * playerstat.PStatAssist) AS AssistComp,
(indexcoefficient.IndexCSteal * playerstat.PStatSteal) AS StealComp,
(indexcoefficient.IndexCTurnover * playerstat.PStatTurnover) AS TurnoverComp,
(indexcoefficient.IndexCBlockinFavor * playerstat.PStatBlockinFavor) AS BlockinFavorComp,
(indexcoefficient.IndexCBlockAgainst * playerstat.PStatBlockAgainst) AS BlockAgainstComp,
(indexcoefficient.IndexCFaulCommitted * playerstat.PStatFaulCommitted) AS FaulCommittedComp,
(indexcoefficient.IndexCFaulReceived * playerstat.PstatFaulReceived) AS FaulReceivedComp


FROM playerstat
join player
on playerstat.pstatplayerid = player.playerid
join indexcoefficient

WHERE playerstat.pstatminute <> 0

order by plyr, pstatgameid;
