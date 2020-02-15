USE BaseClientes
GO

ALTER TABLE dbo.Clientes ALTER COLUMN Email
ADD MASKED WITH (FUNCTION = 'email()')

ALTER TABLE dbo.Clientes ALTER COLUMN LimiteCredito
ADD MASKED WITH (FUNCTION = 'default()')

ALTER TABLE dbo.Clientes ALTER COLUMN NumeroCartao
ADD MASKED WITH (FUNCTION = 'default()')

ALTER TABLE dbo.Clientes ALTER COLUMN CodSeguranca
ADD MASKED WITH (FUNCTION = 'default()')