﻿USE [MyDatabase]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[procBindAllProducts]

SELECT	@return_value as 'Return Value'

GO
