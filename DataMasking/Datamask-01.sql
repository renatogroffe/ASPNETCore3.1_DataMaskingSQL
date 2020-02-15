CREATE DATABASE BaseClientes
GO

USE BaseClientes
GO

CREATE TABLE dbo.Clientes(
	IdCliente int IDENTITY(1,1) NOT NULL,
	NomeCliente varchar(50) NOT NULL,
	Email varchar(100) NOT NULL,
	LimiteCredito numeric(15,2)	 NOT NULL,
	NumeroCartao char(16) NOT NULL,
	CodSeguranca char(3) NOT NULL,
	CONSTRAINT PK_Clientes PRIMARY KEY (IdCliente)
)
GO


INSERT INTO dbo.Clientes
           (NomeCliente
           ,Email
           ,LimiteCredito
           ,NumeroCartao
           ,CodSeguranca)
     VALUES
           ('JOSE SILVA'
           ,'jose@silva.com.br'
           ,100000
           ,'1111222233334444'
           ,'567')

INSERT INTO dbo.Clientes
           (NomeCliente
           ,Email
           ,LimiteCredito
           ,NumeroCartao
           ,CodSeguranca)
     VALUES
           ('JOAO OLIVEIRA'
           ,'joao@oliveria.com.br'
           ,5000000
           ,'1111222233335555'
           ,'678')
GO