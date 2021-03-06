USE [master]
GO
/****** Object:  Database [Music]    Script Date: 2/1/2017 1:38:47 AM ******/
CREATE DATABASE [Music]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Music', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Music.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Music_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Music_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Music] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Music].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Music] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Music] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Music] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Music] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Music] SET ARITHABORT OFF 
GO
ALTER DATABASE [Music] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Music] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Music] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Music] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Music] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Music] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Music] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Music] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Music] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Music] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Music] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Music] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Music] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Music] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Music] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Music] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Music] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Music] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Music] SET  MULTI_USER 
GO
ALTER DATABASE [Music] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Music] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Music] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Music] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Music] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Music]
GO
/****** Object:  Table [dbo].[Alias]    Script Date: 2/1/2017 1:38:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alias](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ArtistID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Alias] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Artist]    Script Date: 2/1/2017 1:38:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Artist](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Country] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Artists] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Alias] ON 

INSERT [dbo].[Alias] ([ID], [ArtistID], [Name]) VALUES (1, N'6456a893-c1e9-4e3d-86f7-0008b0a3ac8a', N'Jack Hody Johnson')
INSERT [dbo].[Alias] ([ID], [ArtistID], [Name]) VALUES (2, N'29f3e1bf-aec1-4d0a-9ef3-0cb95e8a3699', N'The Transplants')
INSERT [dbo].[Alias] ([ID], [ArtistID], [Name]) VALUES (3, N'd700b3f5-45af-4d02-95ed-57d301bda93e', N'Mogwa')
INSERT [dbo].[Alias] ([ID], [ArtistID], [Name]) VALUES (4, N'650e7db6-b795-4eb5-a702-5ea2fc46c848', N'Lady Ga Ga')
INSERT [dbo].[Alias] ([ID], [ArtistID], [Name]) VALUES (5, N'650e7db6-b795-4eb5-a702-5ea2fc46c848', N'Stefani Joanne Angelina Germanotta')
INSERT [dbo].[Alias] ([ID], [ArtistID], [Name]) VALUES (6, N'435f1441-0f43-479d-92db-a506449a686b', N'Mott The Hoppie')
INSERT [dbo].[Alias] ([ID], [ArtistID], [Name]) VALUES (7, N'a9044915-8be3-4c7e-b11f-9e2d2ea0a91e', N'Megadeath')
INSERT [dbo].[Alias] ([ID], [ArtistID], [Name]) VALUES (8, N'b625448e-bf4a-41c3-a421-72ad46cdb831', N'John Coltraine')
INSERT [dbo].[Alias] ([ID], [ArtistID], [Name]) VALUES (9, N'b625448e-bf4a-41c3-a421-72ad46cdb831', N'John William Coltrane')
INSERT [dbo].[Alias] ([ID], [ArtistID], [Name]) VALUES (10, N'18fa2fd5-3ef2-4496-ba9f-6dae655b2a4f', N'Johhny Cash')
INSERT [dbo].[Alias] ([ID], [ArtistID], [Name]) VALUES (11, N'18fa2fd5-3ef2-4496-ba9f-6dae655b2a4f', N'Jonny Cash')
INSERT [dbo].[Alias] ([ID], [ArtistID], [Name]) VALUES (15, N'b83bc61f-8451-4a5d-8b8e-7e9ed295e822', N'E. John')
INSERT [dbo].[Alias] ([ID], [ArtistID], [Name]) VALUES (16, N'b83bc61f-8451-4a5d-8b8e-7e9ed295e822', N'Elthon John')
INSERT [dbo].[Alias] ([ID], [ArtistID], [Name]) VALUES (17, N'b83bc61f-8451-4a5d-8b8e-7e9ed295e822', N'Elton Jphn')
INSERT [dbo].[Alias] ([ID], [ArtistID], [Name]) VALUES (18, N'b83bc61f-8451-4a5d-8b8e-7e9ed295e822', N'John Elton')
INSERT [dbo].[Alias] ([ID], [ArtistID], [Name]) VALUES (19, N'b83bc61f-8451-4a5d-8b8e-7e9ed295e822', N'Reginald Kenneth Dwight')
INSERT [dbo].[Alias] ([ID], [ArtistID], [Name]) VALUES (20, N'f1571db1-c672-4a54-a2cf-aaa329f26f0b', N'John Anthony Frusciante')
SET IDENTITY_INSERT [dbo].[Alias] OFF
INSERT [dbo].[Artist] ([ID], [Name], [Country]) VALUES (N'6456a893-c1e9-4e3d-86f7-0008b0a3ac8a', N'Jack Johnson', N'US')
INSERT [dbo].[Artist] ([ID], [Name], [Country]) VALUES (N'144ef525-85e9-40c3-8335-02c32d0861f3', N'John Mayer', N'US')
INSERT [dbo].[Artist] ([ID], [Name], [Country]) VALUES (N'29f3e1bf-aec1-4d0a-9ef3-0cb95e8a3699', N'Transplants', N'US')
INSERT [dbo].[Artist] ([ID], [Name], [Country]) VALUES (N'd700b3f5-45af-4d02-95ed-57d301bda93e', N'Mogwai', N'GB')
INSERT [dbo].[Artist] ([ID], [Name], [Country]) VALUES (N'650e7db6-b795-4eb5-a702-5ea2fc46c848', N'Lady Gaga', N'US')
INSERT [dbo].[Artist] ([ID], [Name], [Country]) VALUES (N'18fa2fd5-3ef2-4496-ba9f-6dae655b2a4f', N'Johnny Cash
', N'US')
INSERT [dbo].[Artist] ([ID], [Name], [Country]) VALUES (N'b625448e-bf4a-41c3-a421-72ad46cdb831', N'John Coltrane', N'US')
INSERT [dbo].[Artist] ([ID], [Name], [Country]) VALUES (N'24f8d8a5-269b-475c-a1cb-792990b0b2ee', N'Rancid', N'US')
INSERT [dbo].[Artist] ([ID], [Name], [Country]) VALUES (N'b83bc61f-8451-4a5d-8b8e-7e9ed295e822', N'Elton John', N'US')
INSERT [dbo].[Artist] ([ID], [Name], [Country]) VALUES (N'65f4f0c5-ef9e-490c-aee3-909e7ae6b2ab', N'Metallica', N'US')
INSERT [dbo].[Artist] ([ID], [Name], [Country]) VALUES (N'a9044915-8be3-4c7e-b11f-9e2d2ea0a91e', N'Megadeth
', N'US')
INSERT [dbo].[Artist] ([ID], [Name], [Country]) VALUES (N'435f1441-0f43-479d-92db-a506449a686b', N'Mott the Hoople', N'GB')
INSERT [dbo].[Artist] ([ID], [Name], [Country]) VALUES (N'931e1d1f-6b2f-4ff8-9f70-aa537210cd46', N'Operation Ivy', N'US')
INSERT [dbo].[Artist] ([ID], [Name], [Country]) VALUES (N'f1571db1-c672-4a54-a2cf-aaa329f26f0b', N'John Frusciante', N'US')
INSERT [dbo].[Artist] ([ID], [Name], [Country]) VALUES (N'c44e9c22-ef82-4a77-9bcd-af6c958446d6', N'Mumford & Sons', N'GB')
ALTER TABLE [dbo].[Alias]  WITH CHECK ADD  CONSTRAINT [FK_Alias_Artist] FOREIGN KEY([ArtistID])
REFERENCES [dbo].[Artist] ([ID])
GO
ALTER TABLE [dbo].[Alias] CHECK CONSTRAINT [FK_Alias_Artist]
GO
USE [master]
GO
ALTER DATABASE [Music] SET  READ_WRITE 
GO
