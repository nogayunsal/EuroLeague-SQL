SELECT DISTINCT TRIO.REFEREETRIOID,

CONCAT(REF1.REFEREENAME," ",REF1.REFEREESURNAME) AS RF1,
CONCAT(REF2.REFEREENAME," ",REF2.REFEREESURNAME) AS RF2,
CONCAT(REF3.REFEREENAME," ",REF3.REFEREESURNAME)AS RF3

FROM REFEREE AS REF1, REFEREE AS REF2, REFEREE AS REF3, REFEREETRIO AS TRIO
WHERE
REF1.REFEREEID=TRIO.REFEREE1ID
AND
REF2.REFEREEID=TRIO.REFEREE2ID
AND
REF3.REFEREEID=TRIO.REFEREE3ID

ORDER BY TRIO.REFEREETRIOID;


