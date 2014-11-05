USE [PlusCondominios]
GO
/****** Object:  StoredProcedure [dbo].[Profissional_Editar]    Script Date: 11/04/2014 19:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[Profissional_Editar] 
    @PRO_Codigo int,
    @PRO_Cpf varchar(20) = NULL,
    @PRO_Rg varchar(20) = NULL,
    @PRO_Nome varchar(100) = NULL,
    @PRO_Telefone varchar(15) = NULL,
    @PRO_Veiculo varchar(50) = NULL,
    @PRO_Placa varchar(10) = NULL,
    @PRO_Foto varchar(300) = NULL,
    @PRO_Empresa varchar(100) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Profissional]
	SET    [PRO_Cpf] = @PRO_Cpf, [PRO_Rg] = @PRO_Rg, [PRO_Nome] = @PRO_Nome, [PRO_Telefone] = @PRO_Telefone, [PRO_Veiculo] = @PRO_Veiculo, [PRO_Placa] = @PRO_Placa, [PRO_Foto] = @PRO_Foto, [PRO_Empresa] = @PRO_Empresa
	WHERE  [PRO_Codigo] = @PRO_Codigo
	
	-- Begin Return Select <- do not remove
	SELECT [PRO_Codigo], [PRO_Cpf], [PRO_Rg], [PRO_Nome], [PRO_Telefone], [PRO_Veiculo], [PRO_Placa], [PRO_Foto], [PRO_Empresa]
	FROM   [dbo].[Profissional]
	WHERE  [PRO_Codigo] = @PRO_Codigo	
	-- End Return Select <- do not remove

	COMMIT
