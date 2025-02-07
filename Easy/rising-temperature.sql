select w2.id from weather w1
left join weather w2 
ON DATEDIFF(w2.recordDate, w1.recordDate) = 1
WHERE w2.temperature > w1.temperature;

## DATEDIFF for comp dates