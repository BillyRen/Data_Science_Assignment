INSERT INTO Frequency VALUES('q', 'washington', 1);
INSERT INTO Frequency VALUES('q', 'taxes', 1);
INSERT INTO Frequency VALUES('q', 'treasury', 1);
SELECT A.docid ,B.docid , sum(A.count*B.count) 
from Frequency AS A, Frequency AS B
WHERE A.term =B.term and A.docid = '17035_txt_earn' and B.docid != A.docid
Order by sum(A.count*B.count) 

SELECT .........., .........., SUM(........)
FROM ...... AS ......., ........ AS ........
WHERE ....... AND ........ AND .........
ORDER BY .........;

--------
SELECT * FROM(
SELECT * FROM frequency
UNION
SELECT 'q' as docid, 'washington' as term, 1 as count 
UNION
SELECT 'q' as docid, 'taxes' as term, 1 as count
UNION 
SELECT 'q' as docid, 'treasury' as term, 1 as count
) AS A

SELECT * FROM(
SELECT * FROM frequency
UNION
SELECT 'q' as docid, 'washington' as term, 1 as count 
UNION
SELECT 'q' as docid, 'taxes' as term, 1 as count
UNION 
SELECT 'q' as docid, 'treasury' as term, 1 as count
) AS B