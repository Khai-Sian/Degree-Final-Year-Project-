USE [master]
GO

/****** Object:  Database [FinalYearProject]    Script Date: 12/5/2021 3:12:28 AM ******/
DROP DATABASE [FinalYearProject]
GO

/****** Object:  Database [FinalYearProject]    Script Date: 12/5/2021 3:12:28 AM ******/
CREATE DATABASE [FinalYearProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FinalYearProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FinalYearProject.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FinalYearProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FinalYearProject_log.ldf' , SIZE = 139264KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FinalYearProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [FinalYearProject] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [FinalYearProject] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [FinalYearProject] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [FinalYearProject] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [FinalYearProject] SET ARITHABORT OFF 
GO

ALTER DATABASE [FinalYearProject] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [FinalYearProject] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [FinalYearProject] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [FinalYearProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [FinalYearProject] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [FinalYearProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [FinalYearProject] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [FinalYearProject] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [FinalYearProject] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [FinalYearProject] SET  DISABLE_BROKER 
GO

ALTER DATABASE [FinalYearProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [FinalYearProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [FinalYearProject] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [FinalYearProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [FinalYearProject] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [FinalYearProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [FinalYearProject] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [FinalYearProject] SET RECOVERY FULL 
GO

ALTER DATABASE [FinalYearProject] SET  MULTI_USER 
GO

ALTER DATABASE [FinalYearProject] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [FinalYearProject] SET DB_CHAINING OFF 
GO

ALTER DATABASE [FinalYearProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [FinalYearProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [FinalYearProject] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [FinalYearProject] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [FinalYearProject] SET QUERY_STORE = OFF
GO

ALTER DATABASE [FinalYearProject] SET  READ_WRITE 
GO

