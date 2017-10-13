USE [master]
GO
/****** Object:  Database [classlog]    Script Date: 13.10.2017 09:42:04 ******/
CREATE DATABASE [classlog]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'classlog', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\classlog.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'classlog_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\classlog_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [classlog] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [classlog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [classlog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [classlog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [classlog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [classlog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [classlog] SET ARITHABORT OFF 
GO
ALTER DATABASE [classlog] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [classlog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [classlog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [classlog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [classlog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [classlog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [classlog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [classlog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [classlog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [classlog] SET  DISABLE_BROKER 
GO
ALTER DATABASE [classlog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [classlog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [classlog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [classlog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [classlog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [classlog] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [classlog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [classlog] SET RECOVERY FULL 
GO
ALTER DATABASE [classlog] SET  MULTI_USER 
GO
ALTER DATABASE [classlog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [classlog] SET DB_CHAINING OFF 
GO
ALTER DATABASE [classlog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [classlog] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [classlog] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'classlog', N'ON'
GO
ALTER DATABASE [classlog] SET QUERY_STORE = OFF
GO
USE [classlog]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [classlog]
GO
/****** Object:  Table [dbo].[abwesende]    Script Date: 13.10.2017 09:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[abwesende](
	[abwesenheits_id] [int] IDENTITY(1,1) NOT NULL,
	[lehrgangsinhalts_id] [int] NOT NULL,
	[teilnehmer_id] [int] NOT NULL,
	[abwesend_seit] [datetime2](0) NULL,
	[abwesend_bis] [datetime2](0) NULL,
	[abwesend_ganzt‰gig] [bit] NULL,
	[grund] [nvarchar](64) NULL,
 CONSTRAINT [pk_abwesende] PRIMARY KEY CLUSTERED 
(
	[abwesenheits_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lehrgang]    Script Date: 13.10.2017 09:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lehrgang](
	[lehrgangs_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](64) NOT NULL,
	[beginn] [date] NULL,
	[ende] [date] NULL,
	[standort_id] [int] NOT NULL,
 CONSTRAINT [pk_lehrgang] PRIMARY KEY CLUSTERED 
(
	[lehrgangs_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lehrgang_teilnehmer]    Script Date: 13.10.2017 09:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lehrgang_teilnehmer](
	[lehrgangs_id] [int] NOT NULL,
	[teilnehmer_id] [int] NOT NULL,
	[lehrgang_teilnehmer_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pk_lehrgang_teilnehmer] PRIMARY KEY CLUSTERED 
(
	[lehrgang_teilnehmer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lehrgang_trainer]    Script Date: 13.10.2017 09:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lehrgang_trainer](
	[lehrgangs_id] [int] NOT NULL,
	[trainer_id] [int] NOT NULL,
	[lehrgang_trainer_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__lehrgang__trainer] PRIMARY KEY CLUSTERED 
(
	[lehrgang_trainer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lehrgangsinhalte]    Script Date: 13.10.2017 09:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lehrgangsinhalte](
	[lehrgangsinhalts_id] [int] IDENTITY(1,1) NOT NULL,
	[lehrgangs_id] [int] NOT NULL,
	[trainer_id] [int] NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [pk_lehrgangsinhalte] PRIMARY KEY CLUSTERED 
(
	[lehrgangsinhalts_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lehrgangsinhalte_themen]    Script Date: 13.10.2017 09:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lehrgangsinhalte_themen](
	[lehrgangsinhalt_themen_id] [int] IDENTITY(1,1) NOT NULL,
	[lehrgangsinhalte_id] [int] NOT NULL,
	[themen_id] [int] NOT NULL,
 CONSTRAINT [PK_lehrgangsinhalte_themen] PRIMARY KEY CLUSTERED 
(
	[lehrgangsinhalt_themen_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[standorte]    Script Date: 13.10.2017 09:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[standorte](
	[standort_id] [int] IDENTITY(1,1) NOT NULL,
	[straﬂe] [nvarchar](64) NOT NULL,
	[ort] [nvarchar](64) NOT NULL,
	[plz] [nchar](5) NOT NULL,
 CONSTRAINT [PK_standorte] PRIMARY KEY CLUSTERED 
(
	[standort_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teilnehmer]    Script Date: 13.10.2017 09:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teilnehmer](
	[teilnehmer_id] [int] IDENTITY(1,1) NOT NULL,
	[vorename] [nvarchar](64) NULL,
	[nachname] [nvarchar](64) NOT NULL,
 CONSTRAINT [pk_teilnehmer] PRIMARY KEY CLUSTERED 
(
	[teilnehmer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[themen]    Script Date: 13.10.2017 09:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[themen](
	[themen_id] [int] IDENTITY(1,1) NOT NULL,
	[titel] [nvarchar](64) NOT NULL,
	[beschreibung] [nvarchar](1024) NULL,
 CONSTRAINT [pk_themen] PRIMARY KEY CLUSTERED 
(
	[themen_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trainer]    Script Date: 13.10.2017 09:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trainer](
	[trainer_id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [nvarchar](64) NULL,
	[nachname] [nvarchar](64) NOT NULL,
 CONSTRAINT [pk_trainer] PRIMARY KEY CLUSTERED 
(
	[trainer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[abwesende]  WITH CHECK ADD  CONSTRAINT [fk_lehrgangsinhalte-abwesende] FOREIGN KEY([lehrgangsinhalts_id])
REFERENCES [dbo].[lehrgangsinhalte] ([lehrgangsinhalts_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[abwesende] CHECK CONSTRAINT [fk_lehrgangsinhalte-abwesende]
GO
ALTER TABLE [dbo].[abwesende]  WITH CHECK ADD  CONSTRAINT [fk_teilnehmer-abwesende] FOREIGN KEY([teilnehmer_id])
REFERENCES [dbo].[teilnehmer] ([teilnehmer_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[abwesende] CHECK CONSTRAINT [fk_teilnehmer-abwesende]
GO
ALTER TABLE [dbo].[lehrgang]  WITH CHECK ADD  CONSTRAINT [fk_standorte_lehrgang] FOREIGN KEY([standort_id])
REFERENCES [dbo].[standorte] ([standort_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lehrgang] CHECK CONSTRAINT [fk_standorte_lehrgang]
GO
ALTER TABLE [dbo].[lehrgang_teilnehmer]  WITH CHECK ADD  CONSTRAINT [fk_lehrgang-lehrgang_teilnehmer] FOREIGN KEY([lehrgangs_id])
REFERENCES [dbo].[lehrgang] ([lehrgangs_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lehrgang_teilnehmer] CHECK CONSTRAINT [fk_lehrgang-lehrgang_teilnehmer]
GO
ALTER TABLE [dbo].[lehrgang_teilnehmer]  WITH CHECK ADD  CONSTRAINT [fk_teilnehmer-lehrgang_teilnehmer] FOREIGN KEY([teilnehmer_id])
REFERENCES [dbo].[teilnehmer] ([teilnehmer_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lehrgang_teilnehmer] CHECK CONSTRAINT [fk_teilnehmer-lehrgang_teilnehmer]
GO
ALTER TABLE [dbo].[lehrgang_trainer]  WITH CHECK ADD  CONSTRAINT [fk_lehrgang-lehrgang_trainer] FOREIGN KEY([lehrgangs_id])
REFERENCES [dbo].[lehrgang] ([lehrgangs_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lehrgang_trainer] CHECK CONSTRAINT [fk_lehrgang-lehrgang_trainer]
GO
ALTER TABLE [dbo].[lehrgang_trainer]  WITH CHECK ADD  CONSTRAINT [fk_trainer-lehrgang_trainer] FOREIGN KEY([trainer_id])
REFERENCES [dbo].[trainer] ([trainer_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lehrgang_trainer] CHECK CONSTRAINT [fk_trainer-lehrgang_trainer]
GO
ALTER TABLE [dbo].[lehrgangsinhalte]  WITH CHECK ADD  CONSTRAINT [fk_lehrgang-lehrgangsinhalte] FOREIGN KEY([lehrgangs_id])
REFERENCES [dbo].[lehrgang] ([lehrgangs_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lehrgangsinhalte] CHECK CONSTRAINT [fk_lehrgang-lehrgangsinhalte]
GO
ALTER TABLE [dbo].[lehrgangsinhalte]  WITH CHECK ADD  CONSTRAINT [fk_trainer-lehrgangsinhalte] FOREIGN KEY([trainer_id])
REFERENCES [dbo].[trainer] ([trainer_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lehrgangsinhalte] CHECK CONSTRAINT [fk_trainer-lehrgangsinhalte]
GO
ALTER TABLE [dbo].[lehrgangsinhalte_themen]  WITH CHECK ADD  CONSTRAINT [fk_lehrgangsinhalte-lehrgangsinhalte_themen] FOREIGN KEY([lehrgangsinhalte_id])
REFERENCES [dbo].[lehrgangsinhalte] ([lehrgangsinhalts_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lehrgangsinhalte_themen] CHECK CONSTRAINT [fk_lehrgangsinhalte-lehrgangsinhalte_themen]
GO
ALTER TABLE [dbo].[lehrgangsinhalte_themen]  WITH CHECK ADD  CONSTRAINT [fk_themen-lehrgangsinhalte_themen] FOREIGN KEY([themen_id])
REFERENCES [dbo].[themen] ([themen_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lehrgangsinhalte_themen] CHECK CONSTRAINT [fk_themen-lehrgangsinhalte_themen]
GO
USE [master]
GO
ALTER DATABASE [classlog] SET  READ_WRITE 
GO
