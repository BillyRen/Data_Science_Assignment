SELECT A.docid ,B.docid , A.count*B.count as product
from Frequency AS A  
JOIN  Frequency AS B
Where A.term =B.term
----------
SELECT A.docid = '10080_txt_crude', B.docid =  '17035_txt_earn', A.count*B.count as product
from Frequency AS A  
JOIN  Frequency AS B
ON A.term =B.term
-----------
select sum(A.count*B.count)
from Frequency AS A  
JOIN  Frequency AS B
where A.docid = '10080_txt_crude' and B.docid =  '17035_txt_earn' and A.term=B.term