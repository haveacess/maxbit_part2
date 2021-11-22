SELECT
	`ath`.* 
FROM
	books bk
	LEFT JOIN authors_books ab ON ab.id_book = bk.id
	INNER JOIN `authors` ath ON ath.id = ab.id_author 
WHERE
	bk.`name` = 'Горе от ума. Недоросль'
