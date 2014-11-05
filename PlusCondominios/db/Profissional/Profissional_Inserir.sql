USE [PlusCondominios]
GO
/****** Object:  StoredProcedure [dbo].[Profissional_Inserir]    Script Date: 11/04/2014 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[Profissional_Inserir] 
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
	
	INSERT INTO [dbo].[Profissional] ([PRO_Cpf], [PRO_Rg], [PRO_Nome], [PRO_Telefone], [PRO_Veiculo], [PRO_Placa], [PRO_Foto], [PRO_Empresa])
	SELECT @PRO_Cpf, @PRO_Rg, @PRO_Nome, @PRO_Telefone, @PRO_Veiculo, @PRO_Placa, @PRO_Foto, @PRO_Empresa
	
	-- Begin Return Select <- do not remove
	SELECT [PRO_Codigo], [PRO_Cpf], [PRO_Rg], [PRO_Nome], [PRO_Telefone], [PRO_Veiculo], [PRO_Placa], [PRO_Foto], [PRO_Empresa]
	FROM   [dbo].[Profissional]
	WHERE  [PRO_Codigo] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
