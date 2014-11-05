USE [PlusCondominios]
GO
/****** Object:  StoredProcedure [dbo].[Profissional_ListarPorCodigo]    Script Date: 11/04/2014 19:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[Profissional_ListarPorCodigo] 
    @PRO_Codigo int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [PRO_Codigo], [PRO_Cpf], [PRO_Rg], [PRO_Nome], [PRO_Telefone], [PRO_Veiculo], [PRO_Placa], [PRO_Foto], [PRO_Empresa] 
	FROM   [dbo].[Profissional] 
	WHERE  ([PRO_Codigo] = @PRO_Codigo OR @PRO_Codigo IS NULL) 

	COMMIT
