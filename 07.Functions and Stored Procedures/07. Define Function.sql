CREATE OR ALTER FUNCTION ufn_IsWordComprised(@SetOfLetters NVARCHAR(40), @Word NVARCHAR(40))
RETURNS BIT
AS
BEGIN
	DECLARE @i INT = 1

	WHILE @i <= LEN(@Word)
	BEGIN
		DECLARE @ch NVARCHAR(1) = SUBSTRING(@word, @i, 1)
			IF CHARINDEX(@ch, @SetOfLetters) = 0
				RETURN 0
			ELSE
				SET @i += 1
	END
	RETURN 1
END