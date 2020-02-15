USE master
GO

CREATE LOGIN testedatamasks
    WITH PASSWORD = 'ExemploMasks01!';


USE BaseClientes
GO

CREATE USER testedatamasks FOR LOGIN testedatamasks;
GO

EXEC sp_addrolemember 'db_datareader', 'testedatamasks'