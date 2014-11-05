USE [PlusCondominios]
GO
/****** Object:  StoredProcedure [dbo].[Profissional_Excluir]    Script Date: 11/04/2014 19:53:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[Profissional_Excluir] 
    @PRO_Codigo int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Profissional]
	WHERE  [PRO_Codigo] = @PRO_Codigo

	COMMIT
