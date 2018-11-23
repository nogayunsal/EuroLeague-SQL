
SELECT v1.gameid, v1.HT, v1.VT, v1.HTNAme, v1.VTName, v2.period as Period, sum(v1.hscore) as CumHscore, sum(v1.vscore) as CumVScore
 FROM euroleague.v_quarterlyscores as v1, euroleague.v_quarterlyscores as v2
 where v1.period <=v2.period
 and
 v1.gameid = v2.gameid
 group by gameid,ht,vt, v2.period
 order by gameid, v2.period;