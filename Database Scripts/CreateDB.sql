USE [master]
GO

/****** Object:  Database [OnlineAdmission]    Script Date: 4/2/2016 2:02:21 AM ******/
CREATE DATABASE [OnlineAdmission]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OnlineAdmission', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\OnlineAdmission.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OnlineAdmission_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\OnlineAdmission_log.ldf' , SIZE = 1536KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [OnlineAdmission] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnlineAdmission].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [OnlineAdmission] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [OnlineAdmission] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [OnlineAdmission] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [OnlineAdmission] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [OnlineAdmission] SET ARITHABORT OFF 
GO

ALTER DATABASE [OnlineAdmission] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [OnlineAdmission] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [OnlineAdmission] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [OnlineAdmission] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [OnlineAdmission] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [OnlineAdmission] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [OnlineAdmission] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [OnlineAdmission] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [OnlineAdmission] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [OnlineAdmission] SET  DISABLE_BROKER 
GO

ALTER DATABASE [OnlineAdmission] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [OnlineAdmission] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [OnlineAdmission] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [OnlineAdmission] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [OnlineAdmission] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [OnlineAdmission] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [OnlineAdmission] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [OnlineAdmission] SET RECOVERY FULL 
GO

ALTER DATABASE [OnlineAdmission] SET  MULTI_USER 
GO

ALTER DATABASE [OnlineAdmission] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [OnlineAdmission] SET DB_CHAINING OFF 
GO

ALTER DATABASE [OnlineAdmission] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [OnlineAdmission] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [OnlineAdmission] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [OnlineAdmission] SET  READ_WRITE 
GO


