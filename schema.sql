USE [master]
GO
/****** Object:  Database [Tasks]    Script Date: 21-02-2022 13:11:36 ******/
CREATE DATABASE [Tasks]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tasks', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Tasks.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Tasks_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Tasks_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Tasks] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tasks].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tasks] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tasks] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tasks] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tasks] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tasks] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tasks] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Tasks] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tasks] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tasks] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tasks] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tasks] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tasks] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tasks] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tasks] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tasks] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Tasks] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tasks] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tasks] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tasks] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tasks] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tasks] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Tasks] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tasks] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Tasks] SET  MULTI_USER 
GO
ALTER DATABASE [Tasks] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tasks] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tasks] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tasks] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Tasks] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Tasks] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Tasks] SET QUERY_STORE = OFF
GO
USE [Tasks]
GO
/****** Object:  User [demo]    Script Date: 21-02-2022 13:11:37 ******/
CREATE USER [demo] FOR LOGIN [demo] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 21-02-2022 13:11:37 ******/
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
/****** Object:  Table [dbo].[Task]    Script Date: 21-02-2022 13:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AddedOn] [datetime2](7) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[IsComplete] [bit] NOT NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Tasks] SET  READ_WRITE 
GO
