
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/07/2022 14:25:22
-- Generated from EDMX file: C:\Users\RRagini\source\repos\EntityFrameworkPractice1\EmployeeModel1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SampleRagini];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'DepartmenTables'
CREATE TABLE [dbo].[DepartmenTables] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name1] nvarchar(50)  NOT NULL,
    [Location1] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'EmployeeTables'
CREATE TABLE [dbo].[EmployeeTables] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName1] nvarchar(max)  NOT NULL,
    [LastName1] nvarchar(max)  NOT NULL,
    [Gender1] nvarchar(max)  NOT NULL,
    [Salary1] int  NOT NULL,
    [DepartmenTableId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'DepartmenTables'
ALTER TABLE [dbo].[DepartmenTables]
ADD CONSTRAINT [PK_DepartmenTables]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EmployeeTables'
ALTER TABLE [dbo].[EmployeeTables]
ADD CONSTRAINT [PK_EmployeeTables]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [DepartmenTableId] in table 'EmployeeTables'
ALTER TABLE [dbo].[EmployeeTables]
ADD CONSTRAINT [FK_DepartmenTableEmployeeTable]
    FOREIGN KEY ([DepartmenTableId])
    REFERENCES [dbo].[DepartmenTables]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmenTableEmployeeTable'
CREATE INDEX [IX_FK_DepartmenTableEmployeeTable]
ON [dbo].[EmployeeTables]
    ([DepartmenTableId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------