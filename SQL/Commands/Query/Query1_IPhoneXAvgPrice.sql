SELECT p1.SName,AVG(p1.Price) as AvgPrice_IPhoneX
FROM PRICE_HISTORY p1
WHERE ((p1.EndDate>='2021-08-01' AND p1.EndDate<='2021-08-31')OR(p1.StartDate>='2021-08-01' AND p1.StartDate<='2021-08-31')
	  OR(p1.StartDate<'2021-08-01'AND p1.EndDate>'2021-08-31'))
	  AND p1.PName LIKE 'Apple iPhone X'
	  GROUP BY p1.SName;
