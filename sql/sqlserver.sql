USE [master]
GO
/****** Object:  Database [Opc_Config_DB]    Script Date: 2020/2/19 21:14:14 ******/
CREATE DATABASE [Opc_Config_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Opc_Config_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Opc_Config_DB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Opc_Config_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Opc_Config_DB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Opc_Config_DB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Opc_Config_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Opc_Config_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Opc_Config_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Opc_Config_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Opc_Config_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Opc_Config_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET RECOVERY FULL 
GO
ALTER DATABASE [Opc_Config_DB] SET  MULTI_USER 
GO
ALTER DATABASE [Opc_Config_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Opc_Config_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Opc_Config_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Opc_Config_DB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Opc_Config_DB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Opc_Config_DB]
GO
/****** Object:  Table [dbo].[data_groups]    Script Date: 2020/2/19 21:14:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[data_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [varchar](250) NULL,
	[api_type] [varchar](50) NULL,
	[data_style] [varchar](250) NULL,
	[url] [varchar](500) NULL,
	[descriptions] [varchar](500) NULL,
 CONSTRAINT [PK_data_groups] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[default_tags]    Script Date: 2020/2/19 21:14:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[default_tags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[seq_id] [int] NULL,
	[item_id] [varchar](500) NULL,
	[alies] [varchar](500) NULL,
	[accuracy] [varchar](500) NULL,
	[unit] [varchar](50) NULL,
 CONSTRAINT [PK_default_tags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[opc_properties]    Script Date: 2020/2/19 21:14:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[opc_properties](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](250) NULL,
	[value] [varchar](500) NULL,
 CONSTRAINT [PK_opc_properties] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[data_groups] ON 

INSERT [dbo].[data_groups] ([id], [table_name], [api_type], [data_style], [url], [descriptions]) VALUES (4, N'default_tags', N'webservice', N'C', N'http://127.0.0.1:8082/services/realtime?wsdl,web:realtime,http://webservice.zy.com/,data', N'推送默认变量集的webservice')
INSERT [dbo].[data_groups] ([id], [table_name], [api_type], [data_style], [url], [descriptions]) VALUES (5, N'default_tags', N'http', N'C', N'http://127.0.0.1:8080/demo/temp,post,data', N'推送默认变量集的http接口')
SET IDENTITY_INSERT [dbo].[data_groups] OFF
SET IDENTITY_INSERT [dbo].[default_tags] ON 

INSERT [dbo].[default_tags] ([id], [seq_id], [item_id], [alies], [accuracy], [unit]) VALUES (1, 1, N'_System._Time', N'AAAAAAAAAAAAAAAAAAAA', N'#####0', N'm3/h')
INSERT [dbo].[default_tags] ([id], [seq_id], [item_id], [alies], [accuracy], [unit]) VALUES (2, 2, N'_System._Date', N'BBBBBBBBBBBBBBBBBB', N'#####0.###', N'Mpa')
INSERT [dbo].[default_tags] ([id], [seq_id], [item_id], [alies], [accuracy], [unit]) VALUES (3, 3, N'_System._ProjectName', N'CCCCCCCCCCCCCCCCCC', N'#####0.###', N'm3')
INSERT [dbo].[default_tags] ([id], [seq_id], [item_id], [alies], [accuracy], [unit]) VALUES (5, 4, N'_System._FullProjectName', N'DDDDDDDDDDDDDDDDDD', N'#####0.###', N'm3')
SET IDENTITY_INSERT [dbo].[default_tags] OFF
SET IDENTITY_INSERT [dbo].[opc_properties] ON 

INSERT [dbo].[opc_properties] ([id], [name], [value]) VALUES (1, N'hostname', N'127.0.0.1')
INSERT [dbo].[opc_properties] ([id], [name], [value]) VALUES (2, N'domain', N'')
INSERT [dbo].[opc_properties] ([id], [name], [value]) VALUES (3, N'username', N'TSY')
INSERT [dbo].[opc_properties] ([id], [name], [value]) VALUES (4, N'password', N'TSY')
INSERT [dbo].[opc_properties] ([id], [name], [value]) VALUES (5, N'progId', N'KEPware.KEPServerEx.V4')
INSERT [dbo].[opc_properties] ([id], [name], [value]) VALUES (6, N'clsid', N'6E6170F0-FF2D-11D2-8087-00105AA8F840')
INSERT [dbo].[opc_properties] ([id], [name], [value]) VALUES (7, N'interval_time', N'500')
SET IDENTITY_INSERT [dbo].[opc_properties] OFF
USE [master]
GO
ALTER DATABASE [Opc_Config_DB] SET  READ_WRITE 
GO
