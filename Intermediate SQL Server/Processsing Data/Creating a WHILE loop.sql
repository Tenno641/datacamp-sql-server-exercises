DECLARE @counter INT

SET @counter = 1

WHILE (@counter < 30)
BEGIN
	SET @counter = @counter + 1
END

SELECT @counter

/*
	Write a `WHILE` loop that increments `counter` by 1 until `counter` is less than 30
*/