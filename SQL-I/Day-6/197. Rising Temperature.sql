select A.id 
from Weather A inner join Weather B on DATE_SUB(A.recordDate, interval 1 day) = B.recordDate
where A.temperature > B.temperature;
