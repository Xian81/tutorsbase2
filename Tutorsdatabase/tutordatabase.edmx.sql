
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/12/2018 19:41:00
-- Generated from EDMX file: C:\Users\Chris\source\repos\Tutorsdatabase\Tutorsdatabase\tutordatabase.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Tutorsdatabase];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Tutors]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [FK_Tutors];
GO
IF OBJECT_ID(N'[dbo].[FK_Roles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT [FK_Roles];
GO
IF OBJECT_ID(N'[dbo].[FK_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tutors] DROP CONSTRAINT [FK_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_UserUserRole]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT [FK_UserUserRole];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Bookings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Bookings];
GO
IF OBJECT_ID(N'[dbo].[Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Roles];
GO
IF OBJECT_ID(N'[dbo].[Tutors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tutors];
GO
IF OBJECT_ID(N'[dbo].[UserRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserRoles];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Bookings'
CREATE TABLE [dbo].[Bookings] (
    [Id] int  NOT NULL,
    [Tutorid] int  NOT NULL,
    [Time] datetime  NOT NULL,
    [Date] datetime  NOT NULL,
    [Duration] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [Id] int  NOT NULL,
    [Name] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'Tutors'
CREATE TABLE [dbo].[Tutors] (
    [Id] int  NOT NULL,
    [Userid] int  NOT NULL
);
GO

-- Creating table 'UserRoles'
CREATE TABLE [dbo].[UserRoles] (
    [Roleid] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int  NOT NULL,
    [Password] nvarchar(50)  NOT NULL,
    [UserName] nvarchar(50)  NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [Email] nvarchar(50)  NOT NULL,
    [Address] nvarchar(50)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Bookings'
ALTER TABLE [dbo].[Bookings]
ADD CONSTRAINT [PK_Bookings]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Tutors'
ALTER TABLE [dbo].[Tutors]
ADD CONSTRAINT [PK_Tutors]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Roleid], [UserId] in table 'UserRoles'
ALTER TABLE [dbo].[UserRoles]
ADD CONSTRAINT [PK_UserRoles]
    PRIMARY KEY CLUSTERED ([Roleid], [UserId] ASC);
GO

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Tutorid] in table 'Bookings'
ALTER TABLE [dbo].[Bookings]
ADD CONSTRAINT [FK_Tutors]
    FOREIGN KEY ([Tutorid])
    REFERENCES [dbo].[Tutors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tutors'
CREATE INDEX [IX_FK_Tutors]
ON [dbo].[Bookings]
    ([Tutorid]);
GO

-- Creating foreign key on [Roleid] in table 'UserRoles'
ALTER TABLE [dbo].[UserRoles]
ADD CONSTRAINT [FK_Roles]
    FOREIGN KEY ([Roleid])
    REFERENCES [dbo].[Roles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Userid] in table 'Tutors'
ALTER TABLE [dbo].[Tutors]
ADD CONSTRAINT [FK_Users]
    FOREIGN KEY ([Userid])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Users'
CREATE INDEX [IX_FK_Users]
ON [dbo].[Tutors]
    ([Userid]);
GO

-- Creating foreign key on [UserId] in table 'UserRoles'
ALTER TABLE [dbo].[UserRoles]
ADD CONSTRAINT [FK_UserUserRole]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserUserRole'
CREATE INDEX [IX_FK_UserUserRole]
ON [dbo].[UserRoles]
    ([UserId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------