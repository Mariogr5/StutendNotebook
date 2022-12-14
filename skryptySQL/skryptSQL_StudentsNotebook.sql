USE [master]
GO
/****** Object:  Database [StudentsNotebookDB]    Script Date: 03.12.2022 16:47:38 ******/
CREATE DATABASE [StudentsNotebookDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StudentsNotebookDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\StudentsNotebookDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StudentsNotebookDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\StudentsNotebookDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [StudentsNotebookDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentsNotebookDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudentsNotebookDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudentsNotebookDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudentsNotebookDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudentsNotebookDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudentsNotebookDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudentsNotebookDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StudentsNotebookDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudentsNotebookDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudentsNotebookDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudentsNotebookDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudentsNotebookDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudentsNotebookDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudentsNotebookDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudentsNotebookDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudentsNotebookDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [StudentsNotebookDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudentsNotebookDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudentsNotebookDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudentsNotebookDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudentsNotebookDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudentsNotebookDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [StudentsNotebookDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudentsNotebookDB] SET RECOVERY FULL 
GO
ALTER DATABASE [StudentsNotebookDB] SET  MULTI_USER 
GO
ALTER DATABASE [StudentsNotebookDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudentsNotebookDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudentsNotebookDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudentsNotebookDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StudentsNotebookDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StudentsNotebookDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'StudentsNotebookDB', N'ON'
GO
ALTER DATABASE [StudentsNotebookDB] SET QUERY_STORE = OFF
GO
USE [StudentsNotebookDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 03.12.2022 16:47:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[curseslist]    Script Date: 03.12.2022 16:47:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[curseslist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Coursename] [nvarchar](max) NULL,
	[Professor] [nvarchar](max) NULL,
	[Learndifficulty] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_curseslist] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[newcurseslist]    Script Date: 03.12.2022 16:47:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[newcurseslist](
	[Kursid] [int] IDENTITY(1,1) NOT NULL,
	[Kursname] [nvarchar](max) NOT NULL,
	[KursProfessor] [nvarchar](max) NOT NULL,
	[Kurslearndifficulty] [nvarchar](max) NULL,
 CONSTRAINT [PK_newcurseslist] PRIMARY KEY CLUSTERED 
(
	[Kursid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221201154220_InitialMigration', N'6.0.10')
GO
SET IDENTITY_INSERT [dbo].[curseslist] ON 

INSERT [dbo].[curseslist] ([Id], [Coursename], [Professor], [Learndifficulty], [Notes]) VALUES (1, N'Siema', N'Miodek', N'hard', NULL)
INSERT [dbo].[curseslist] ([Id], [Coursename], [Professor], [Learndifficulty], [Notes]) VALUES (2, N'sdf', N'ertrt', N'Harad', NULL)
INSERT [dbo].[curseslist] ([Id], [Coursename], [Professor], [Learndifficulty], [Notes]) VALUES (5, N'Podstawy produkcji metaamfetaminy', N'Włodzimierz Biały', N'medium', N'wzorynacalki.jpg')
INSERT [dbo].[curseslist] ([Id], [Coursename], [Professor], [Learndifficulty], [Notes]) VALUES (6, N'Ziołoznawstwo 3.3', N'Jeremiasz Różowy', N'easy', N'wzorynacalki.jpg')
INSERT [dbo].[curseslist] ([Id], [Coursename], [Professor], [Learndifficulty], [Notes]) VALUES (7, N'Podstawy samoobrony', N'Heniek Szreder', N'hard', N'wzorynacalki.jpg')
INSERT [dbo].[curseslist] ([Id], [Coursename], [Professor], [Learndifficulty], [Notes]) VALUES (8, N'Zarządzanie', N'Gustaw Fring', N'hard', N'wzorynacalki.jpg')
INSERT [dbo].[curseslist] ([Id], [Coursename], [Professor], [Learndifficulty], [Notes]) VALUES (9, N'qwe', N'qwe', N'dasd', NULL)
INSERT [dbo].[curseslist] ([Id], [Coursename], [Professor], [Learndifficulty], [Notes]) VALUES (10, N'asdas', N'sadasdcas', N'asdaedfsc', NULL)
INSERT [dbo].[curseslist] ([Id], [Coursename], [Professor], [Learndifficulty], [Notes]) VALUES (11, N'123', N'asdasf', N'awdsaxzc', N'asdeascx')
INSERT [dbo].[curseslist] ([Id], [Coursename], [Professor], [Learndifficulty], [Notes]) VALUES (12, N'awer', N'qwdsxzc', N'asdsfzxc', NULL)
SET IDENTITY_INSERT [dbo].[curseslist] OFF
GO
SET IDENTITY_INSERT [dbo].[newcurseslist] ON 

INSERT [dbo].[newcurseslist] ([Kursid], [Kursname], [KursProfessor], [Kurslearndifficulty]) VALUES (1, N'asdf', N'deasdasf', N'sadcxzas')
SET IDENTITY_INSERT [dbo].[newcurseslist] OFF
GO
USE [master]
GO
ALTER DATABASE [StudentsNotebookDB] SET  READ_WRITE 
GO
