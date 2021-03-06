USE [master]
GO
/****** Object:  Database [VTNam2019_Web_DangKyThi]    Script Date: 12/23/2019 11:08:51 PM ******/
CREATE DATABASE [VTNam2019_Web_DangKyThi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VTNam2019_Web_DangKyThi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\VTNam2019_Web_DangKyThi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VTNam2019_Web_DangKyThi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\VTNam2019_Web_DangKyThi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VTNam2019_Web_DangKyThi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET ARITHABORT OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET RECOVERY FULL 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET  MULTI_USER 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'VTNam2019_Web_DangKyThi', N'ON'
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET QUERY_STORE = OFF
GO
USE [VTNam2019_Web_DangKyThi]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [uniqueidentifier] NOT NULL,
	[AdminCode] [nvarchar](20) NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[DateOfBirth] [date] NULL,
	[Phone] [nvarchar](255) NULL,
	[Mail] [nvarchar](255) NULL,
	[PassWord] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ClassID] [uniqueidentifier] NOT NULL,
	[ClassName] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[ExamID] [uniqueidentifier] NOT NULL,
	[ExamCode] [nvarchar](20) NULL,
	[SchoolName] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[RegistrationStatus] [int] NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[ExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamDetail]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamDetail](
	[ExamDetailID] [uniqueidentifier] NOT NULL,
	[ExamDetailCode] [nvarchar](20) NULL,
	[ExamDate] [date] NULL,
	[TimeStart] [time](7) NULL,
	[TimeEnd] [time](7) NULL,
	[SubjectID] [uniqueidentifier] NULL,
	[ExamID] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_ExamDetail] PRIMARY KEY CLUSTERED 
(
	[ExamDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExRoom]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExRoom](
	[ExRoomID] [uniqueidentifier] NOT NULL,
	[ExRoomAddress] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_ExRoom] PRIMARY KEY CLUSTERED 
(
	[ExRoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupExamDetailExRoom]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupExamDetailExRoom](
	[ExamDetailID] [uniqueidentifier] NULL,
	[ExRoomID] [uniqueidentifier] NULL,
	[MaxMember] [int] NULL,
	[NumMember] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupStudentExamDetail]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupStudentExamDetail](
	[StudentID] [uniqueidentifier] NULL,
	[ExamDetailID] [uniqueidentifier] NULL,
	[ExRoomID] [uniqueidentifier] NULL,
	[SBD] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupStudentSubject]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupStudentSubject](
	[StudentID] [uniqueidentifier] NULL,
	[SubjectID] [uniqueidentifier] NULL,
	[ExamID] [uniqueidentifier] NULL,
	[ExamBan] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [uniqueidentifier] NOT NULL,
	[StudentCode] [nvarchar](20) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[Sex] [nvarchar](100) NULL,
	[Mail] [nvarchar](255) NULL,
	[PassWord] [nvarchar](255) NULL,
	[ClassID] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [uniqueidentifier] NOT NULL,
	[SubjectCode] [nvarchar](20) NULL,
	[SubjectName] [nvarchar](255) NULL,
	[TimeExam] [nvarchar](255) NULL,
	[ConvertPoint] [nvarchar](255) NULL,
	[ClassifyPoint] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([AdminID], [AdminCode], [FirstName], [LastName], [DateOfBirth], [Phone], [Mail], [PassWord], [CreatedDate]) VALUES (N'f76eabd5-a3f6-46e6-baa3-400ec1a3cc82', N'vtnam', N'Vũ Thiệu', N'Nam', CAST(N'1999-04-20' AS Date), N'0918094874', N'namthp99@gmail.com', N'$2a$10$mtU7w1B4pXHheGHfFTIpvePktoeAE55WpT.5HSLBDrAZ.hWsgY0rK', CAST(N'2019-12-23T13:58:54.583' AS DateTime))
INSERT [dbo].[Admin] ([AdminID], [AdminCode], [FirstName], [LastName], [DateOfBirth], [Phone], [Mail], [PassWord], [CreatedDate]) VALUES (N'f30d49f5-89c0-484c-a2aa-b56772bb7f80', N'ncphuoc', N'Nguyễn Công', N'Fuck', CAST(N'1999-07-19' AS Date), N'0918099993', N'namthp99@gmail.com', N'$2a$10$Ztn2BjUl.5GrFk2nLC01rO2xlrHvNLxF4uk7nEorOWz/4L5qA2uKi', CAST(N'2019-12-23T15:33:07.780' AS DateTime))
INSERT [dbo].[Class] ([ClassID], [ClassName], [CreatedDate]) VALUES (N'685d27f5-3edf-4c43-8fdd-23328ce62ee8', N'K62 IE2', CAST(N'2019-12-19T22:02:59.363' AS DateTime))
INSERT [dbo].[Class] ([ClassID], [ClassName], [CreatedDate]) VALUES (N'ea42cbed-aa26-40ab-88f1-5f37aeaa73e3', N'K62 IE4', CAST(N'2019-12-19T22:01:56.030' AS DateTime))
INSERT [dbo].[Class] ([ClassID], [ClassName], [CreatedDate]) VALUES (N'056d5a40-1427-4625-b90e-d7162e1e3393', N'K62 IE3', CAST(N'2019-12-19T22:02:52.300' AS DateTime))
INSERT [dbo].[Class] ([ClassID], [ClassName], [CreatedDate]) VALUES (N'45b6e9bf-ef9c-4101-b8bd-e9c72b560125', N'K62 IE1', CAST(N'2019-12-23T16:08:25.160' AS DateTime))
INSERT [dbo].[Exam] ([ExamID], [ExamCode], [SchoolName], [CreatedDate], [RegistrationStatus]) VALUES (N'4139bd4f-f8d9-4ec1-8a6b-45a4965bc9d2', N'Học kỳ 1 - Năm 2016', N'ABCUni', CAST(N'2019-12-19T21:42:53.473' AS DateTime), 0)
INSERT [dbo].[Exam] ([ExamID], [ExamCode], [SchoolName], [CreatedDate], [RegistrationStatus]) VALUES (N'8709902e-7b72-4719-b575-dab3ac243336', N'Học kỳ 2 - Năm 2016', N'ABCUni', CAST(N'2019-12-19T21:43:00.400' AS DateTime), 0)
INSERT [dbo].[ExamDetail] ([ExamDetailID], [ExamDetailCode], [ExamDate], [TimeStart], [TimeEnd], [SubjectID], [ExamID], [CreatedDate]) VALUES (N'227b2a8f-f37d-4443-97b5-6381aeea8aa0', N'Ca 3', CAST(N'2020-01-01' AS Date), CAST(N'07:00:00' AS Time), CAST(N'09:00:00' AS Time), N'3581f469-5b8c-469c-b580-6c42902f362d', N'8709902e-7b72-4719-b575-dab3ac243336', CAST(N'2019-12-22T18:37:07.107' AS DateTime))
INSERT [dbo].[ExamDetail] ([ExamDetailID], [ExamDetailCode], [ExamDate], [TimeStart], [TimeEnd], [SubjectID], [ExamID], [CreatedDate]) VALUES (N'065dc354-1465-496c-9868-7567676870bf', N'Ca 1', CAST(N'2019-12-30' AS Date), CAST(N'04:00:00' AS Time), CAST(N'06:00:00' AS Time), N'3581f469-5b8c-469c-b580-6c42902f362d', N'8709902e-7b72-4719-b575-dab3ac243336', CAST(N'2019-12-20T14:56:44.633' AS DateTime))
INSERT [dbo].[ExamDetail] ([ExamDetailID], [ExamDetailCode], [ExamDate], [TimeStart], [TimeEnd], [SubjectID], [ExamID], [CreatedDate]) VALUES (N'6154942e-0ca7-44b1-90d0-8db0a908ffd6', N'Ca 2', CAST(N'2019-12-31' AS Date), CAST(N'05:00:00' AS Time), CAST(N'07:00:00' AS Time), N'3581f469-5b8c-469c-b580-6c42902f362d', N'8709902e-7b72-4719-b575-dab3ac243336', CAST(N'2019-12-22T18:36:46.187' AS DateTime))
INSERT [dbo].[ExamDetail] ([ExamDetailID], [ExamDetailCode], [ExamDate], [TimeStart], [TimeEnd], [SubjectID], [ExamID], [CreatedDate]) VALUES (N'7179a954-2aa3-4351-905b-913c33884ebe', N'Ca 1', CAST(N'2019-12-25' AS Date), CAST(N'14:00:00' AS Time), CAST(N'14:45:00' AS Time), N'2cc6ce15-62f9-4194-9cb1-25469b40ca47', N'8709902e-7b72-4719-b575-dab3ac243336', CAST(N'2019-12-22T18:39:34.303' AS DateTime))
INSERT [dbo].[ExamDetail] ([ExamDetailID], [ExamDetailCode], [ExamDate], [TimeStart], [TimeEnd], [SubjectID], [ExamID], [CreatedDate]) VALUES (N'53fbe3de-b27a-4a53-90de-a3568b74e216', N'Ca 2', CAST(N'2020-01-05' AS Date), CAST(N'07:30:00' AS Time), CAST(N'09:30:00' AS Time), N'8f3784ff-b1ef-4431-b73c-ad516420d86a', N'8709902e-7b72-4719-b575-dab3ac243336', CAST(N'2019-12-23T16:06:01.100' AS DateTime))
INSERT [dbo].[ExamDetail] ([ExamDetailID], [ExamDetailCode], [ExamDate], [TimeStart], [TimeEnd], [SubjectID], [ExamID], [CreatedDate]) VALUES (N'd809383a-b9b6-46db-9ef7-d32d78641756', N'Ca 1', CAST(N'2019-12-27' AS Date), CAST(N'08:00:00' AS Time), CAST(N'10:00:00' AS Time), N'8f3784ff-b1ef-4431-b73c-ad516420d86a', N'8709902e-7b72-4719-b575-dab3ac243336', CAST(N'2019-12-22T18:40:17.930' AS DateTime))
INSERT [dbo].[ExamDetail] ([ExamDetailID], [ExamDetailCode], [ExamDate], [TimeStart], [TimeEnd], [SubjectID], [ExamID], [CreatedDate]) VALUES (N'f18573b5-222a-477c-90c1-e46cf629656b', N'Ca 1', CAST(N'2019-12-25' AS Date), CAST(N'13:00:00' AS Time), CAST(N'13:45:00' AS Time), N'dd0ba970-96d4-41a5-a30d-d66517210cd3', N'8709902e-7b72-4719-b575-dab3ac243336', CAST(N'2019-12-22T18:37:54.960' AS DateTime))
INSERT [dbo].[ExRoom] ([ExRoomID], [ExRoomAddress], [CreatedDate]) VALUES (N'145ba759-1eca-497c-8413-199f4624fb6f', N'107 G2', CAST(N'2019-12-19T23:47:56.530' AS DateTime))
INSERT [dbo].[ExRoom] ([ExRoomID], [ExRoomAddress], [CreatedDate]) VALUES (N'f0dd2266-9942-4076-876d-41fd843354be', N'308 G2', CAST(N'2019-12-19T23:48:23.533' AS DateTime))
INSERT [dbo].[ExRoom] ([ExRoomID], [ExRoomAddress], [CreatedDate]) VALUES (N'7aed2081-bfe9-4526-9a95-6871964733d9', N'302 GD2', CAST(N'2019-12-19T23:48:34.210' AS DateTime))
INSERT [dbo].[ExRoom] ([ExRoomID], [ExRoomAddress], [CreatedDate]) VALUES (N'1c002352-2bea-4996-9e97-926c7c325cd7', N'312 GD2', CAST(N'2019-12-23T16:01:12.043' AS DateTime))
INSERT [dbo].[ExRoom] ([ExRoomID], [ExRoomAddress], [CreatedDate]) VALUES (N'b8fe2bc4-1ff0-4deb-9896-bb8013881e3f', N'101 G2 ', CAST(N'2019-12-22T18:33:01.960' AS DateTime))
INSERT [dbo].[ExRoom] ([ExRoomID], [ExRoomAddress], [CreatedDate]) VALUES (N'0de720a4-b41e-4cd0-b885-ff2595f891bd', N'302 GD3', CAST(N'2019-12-19T23:48:48.567' AS DateTime))
INSERT [dbo].[GroupExamDetailExRoom] ([ExamDetailID], [ExRoomID], [MaxMember], [NumMember]) VALUES (N'065dc354-1465-496c-9868-7567676870bf', N'7aed2081-bfe9-4526-9a95-6871964733d9', 50, 0)
INSERT [dbo].[GroupExamDetailExRoom] ([ExamDetailID], [ExRoomID], [MaxMember], [NumMember]) VALUES (N'065dc354-1465-496c-9868-7567676870bf', N'145ba759-1eca-497c-8413-199f4624fb6f', 70, 0)
INSERT [dbo].[GroupExamDetailExRoom] ([ExamDetailID], [ExRoomID], [MaxMember], [NumMember]) VALUES (N'6154942e-0ca7-44b1-90d0-8db0a908ffd6', N'0de720a4-b41e-4cd0-b885-ff2595f891bd', 30, 0)
INSERT [dbo].[GroupExamDetailExRoom] ([ExamDetailID], [ExRoomID], [MaxMember], [NumMember]) VALUES (N'6154942e-0ca7-44b1-90d0-8db0a908ffd6', N'7aed2081-bfe9-4526-9a95-6871964733d9', 25, 0)
INSERT [dbo].[GroupExamDetailExRoom] ([ExamDetailID], [ExRoomID], [MaxMember], [NumMember]) VALUES (N'227b2a8f-f37d-4443-97b5-6381aeea8aa0', N'0de720a4-b41e-4cd0-b885-ff2595f891bd', 30, 0)
INSERT [dbo].[GroupExamDetailExRoom] ([ExamDetailID], [ExRoomID], [MaxMember], [NumMember]) VALUES (N'227b2a8f-f37d-4443-97b5-6381aeea8aa0', N'7aed2081-bfe9-4526-9a95-6871964733d9', 25, 0)
INSERT [dbo].[GroupExamDetailExRoom] ([ExamDetailID], [ExRoomID], [MaxMember], [NumMember]) VALUES (N'f18573b5-222a-477c-90c1-e46cf629656b', N'145ba759-1eca-497c-8413-199f4624fb6f', 100, 0)
INSERT [dbo].[GroupExamDetailExRoom] ([ExamDetailID], [ExRoomID], [MaxMember], [NumMember]) VALUES (N'7179a954-2aa3-4351-905b-913c33884ebe', N'b8fe2bc4-1ff0-4deb-9896-bb8013881e3f', 29, 1)
INSERT [dbo].[GroupExamDetailExRoom] ([ExamDetailID], [ExRoomID], [MaxMember], [NumMember]) VALUES (N'7179a954-2aa3-4351-905b-913c33884ebe', N'0de720a4-b41e-4cd0-b885-ff2595f891bd', 29, 0)
INSERT [dbo].[GroupExamDetailExRoom] ([ExamDetailID], [ExRoomID], [MaxMember], [NumMember]) VALUES (N'7179a954-2aa3-4351-905b-913c33884ebe', N'7aed2081-bfe9-4526-9a95-6871964733d9', 29, 0)
INSERT [dbo].[GroupExamDetailExRoom] ([ExamDetailID], [ExRoomID], [MaxMember], [NumMember]) VALUES (N'd809383a-b9b6-46db-9ef7-d32d78641756', N'f0dd2266-9942-4076-876d-41fd843354be', 45, 2)
INSERT [dbo].[GroupExamDetailExRoom] ([ExamDetailID], [ExRoomID], [MaxMember], [NumMember]) VALUES (N'53fbe3de-b27a-4a53-90de-a3568b74e216', N'1c002352-2bea-4996-9e97-926c7c325cd7', 10, 0)
INSERT [dbo].[GroupExamDetailExRoom] ([ExamDetailID], [ExRoomID], [MaxMember], [NumMember]) VALUES (N'53fbe3de-b27a-4a53-90de-a3568b74e216', N'7aed2081-bfe9-4526-9a95-6871964733d9', 20, 0)
INSERT [dbo].[GroupStudentExamDetail] ([StudentID], [ExamDetailID], [ExRoomID], [SBD]) VALUES (N'537d3fa3-cc04-4432-80cb-5300212bca08', N'7179a954-2aa3-4351-905b-913c33884ebe', N'b8fe2bc4-1ff0-4deb-9896-bb8013881e3f', 0)
INSERT [dbo].[GroupStudentExamDetail] ([StudentID], [ExamDetailID], [ExRoomID], [SBD]) VALUES (N'537d3fa3-cc04-4432-80cb-5300212bca08', N'd809383a-b9b6-46db-9ef7-d32d78641756', N'f0dd2266-9942-4076-876d-41fd843354be', 0)
INSERT [dbo].[GroupStudentExamDetail] ([StudentID], [ExamDetailID], [ExRoomID], [SBD]) VALUES (N'c0faa9fa-9638-44a0-bec8-89c112ffef8d', N'd809383a-b9b6-46db-9ef7-d32d78641756', N'f0dd2266-9942-4076-876d-41fd843354be', 0)
INSERT [dbo].[GroupStudentSubject] ([StudentID], [SubjectID], [ExamID], [ExamBan]) VALUES (N'94788d4a-b36c-41cd-a6c2-ebb0e27e6ed1', N'3581f469-5b8c-469c-b580-6c42902f362d', N'8709902e-7b72-4719-b575-dab3ac243336', 0)
INSERT [dbo].[GroupStudentSubject] ([StudentID], [SubjectID], [ExamID], [ExamBan]) VALUES (N'a816f786-300a-4d22-9f73-3d9081a9009d', N'3581f469-5b8c-469c-b580-6c42902f362d', N'8709902e-7b72-4719-b575-dab3ac243336', 1)
INSERT [dbo].[GroupStudentSubject] ([StudentID], [SubjectID], [ExamID], [ExamBan]) VALUES (N'94788d4a-b36c-41cd-a6c2-ebb0e27e6ed1', N'dd0ba970-96d4-41a5-a30d-d66517210cd3', N'8709902e-7b72-4719-b575-dab3ac243336', 0)
INSERT [dbo].[GroupStudentSubject] ([StudentID], [SubjectID], [ExamID], [ExamBan]) VALUES (N'a816f786-300a-4d22-9f73-3d9081a9009d', N'dd0ba970-96d4-41a5-a30d-d66517210cd3', N'8709902e-7b72-4719-b575-dab3ac243336', 1)
INSERT [dbo].[GroupStudentSubject] ([StudentID], [SubjectID], [ExamID], [ExamBan]) VALUES (N'537d3fa3-cc04-4432-80cb-5300212bca08', N'8f3784ff-b1ef-4431-b73c-ad516420d86a', N'8709902e-7b72-4719-b575-dab3ac243336', 0)
INSERT [dbo].[GroupStudentSubject] ([StudentID], [SubjectID], [ExamID], [ExamBan]) VALUES (N'94788d4a-b36c-41cd-a6c2-ebb0e27e6ed1', N'8f3784ff-b1ef-4431-b73c-ad516420d86a', N'8709902e-7b72-4719-b575-dab3ac243336', 0)
INSERT [dbo].[GroupStudentSubject] ([StudentID], [SubjectID], [ExamID], [ExamBan]) VALUES (N'a816f786-300a-4d22-9f73-3d9081a9009d', N'8f3784ff-b1ef-4431-b73c-ad516420d86a', N'8709902e-7b72-4719-b575-dab3ac243336', 1)
INSERT [dbo].[GroupStudentSubject] ([StudentID], [SubjectID], [ExamID], [ExamBan]) VALUES (N'537d3fa3-cc04-4432-80cb-5300212bca08', N'2cc6ce15-62f9-4194-9cb1-25469b40ca47', N'8709902e-7b72-4719-b575-dab3ac243336', 0)
INSERT [dbo].[GroupStudentSubject] ([StudentID], [SubjectID], [ExamID], [ExamBan]) VALUES (N'c0faa9fa-9638-44a0-bec8-89c112ffef8d', N'2cc6ce15-62f9-4194-9cb1-25469b40ca47', N'8709902e-7b72-4719-b575-dab3ac243336', 0)
INSERT [dbo].[GroupStudentSubject] ([StudentID], [SubjectID], [ExamID], [ExamBan]) VALUES (N'537d3fa3-cc04-4432-80cb-5300212bca08', N'3581f469-5b8c-469c-b580-6c42902f362d', N'8709902e-7b72-4719-b575-dab3ac243336', 0)
INSERT [dbo].[GroupStudentSubject] ([StudentID], [SubjectID], [ExamID], [ExamBan]) VALUES (N'c0faa9fa-9638-44a0-bec8-89c112ffef8d', N'8f3784ff-b1ef-4431-b73c-ad516420d86a', N'8709902e-7b72-4719-b575-dab3ac243336', 0)
INSERT [dbo].[GroupStudentSubject] ([StudentID], [SubjectID], [ExamID], [ExamBan]) VALUES (N'94788d4a-b36c-41cd-a6c2-ebb0e27e6ed1', N'2cc6ce15-62f9-4194-9cb1-25469b40ca47', N'8709902e-7b72-4719-b575-dab3ac243336', 0)
INSERT [dbo].[GroupStudentSubject] ([StudentID], [SubjectID], [ExamID], [ExamBan]) VALUES (N'c0faa9fa-9638-44a0-bec8-89c112ffef8d', N'3581f469-5b8c-469c-b580-6c42902f362d', N'8709902e-7b72-4719-b575-dab3ac243336', 0)
INSERT [dbo].[GroupStudentSubject] ([StudentID], [SubjectID], [ExamID], [ExamBan]) VALUES (N'537d3fa3-cc04-4432-80cb-5300212bca08', N'dd0ba970-96d4-41a5-a30d-d66517210cd3', N'8709902e-7b72-4719-b575-dab3ac243336', 0)
INSERT [dbo].[GroupStudentSubject] ([StudentID], [SubjectID], [ExamID], [ExamBan]) VALUES (N'a816f786-300a-4d22-9f73-3d9081a9009d', N'2cc6ce15-62f9-4194-9cb1-25469b40ca47', N'8709902e-7b72-4719-b575-dab3ac243336', 1)
INSERT [dbo].[GroupStudentSubject] ([StudentID], [SubjectID], [ExamID], [ExamBan]) VALUES (N'c0faa9fa-9638-44a0-bec8-89c112ffef8d', N'dd0ba970-96d4-41a5-a30d-d66517210cd3', N'8709902e-7b72-4719-b575-dab3ac243336', 0)
INSERT [dbo].[Student] ([StudentID], [StudentCode], [FirstName], [LastName], [DateOfBirth], [Sex], [Mail], [PassWord], [ClassID], [CreatedDate]) VALUES (N'a816f786-300a-4d22-9f73-3d9081a9009d', N'17050162', N'Nguyễn Văn', N'Dũng', CAST(N'1978-05-12' AS Date), N'Nam', N'dungtrochadong@gmail.com', N'$2a$10$BHZXYk/SQLmRXp61bPlUteP.vG84/cCRwlj722uc8qAKauafmZoI2', N'685d27f5-3edf-4c43-8fdd-23328ce62ee8', CAST(N'2019-12-20T09:59:15.033' AS DateTime))
INSERT [dbo].[Student] ([StudentID], [StudentCode], [FirstName], [LastName], [DateOfBirth], [Sex], [Mail], [PassWord], [ClassID], [CreatedDate]) VALUES (N'537d3fa3-cc04-4432-80cb-5300212bca08', N'17050159', N'Nguyễn Thị ', N'Tí', CAST(N'2005-03-04' AS Date), N'Nữ', N'ticotruong@gmail.com', N'$2a$10$u7cUxkEoI/FGv56D1LnmQ.arRaFomO32VGKxT7oULARz4uf/W3nte', N'685d27f5-3edf-4c43-8fdd-23328ce62ee8', CAST(N'2019-12-20T09:59:14.443' AS DateTime))
INSERT [dbo].[Student] ([StudentID], [StudentCode], [FirstName], [LastName], [DateOfBirth], [Sex], [Mail], [PassWord], [ClassID], [CreatedDate]) VALUES (N'c0faa9fa-9638-44a0-bec8-89c112ffef8d', N'17050161', N'Vũ Lâm', N'Khánh', CAST(N'1998-07-29' AS Date), N'Nam', N'khanhsky@gmail.com', N'$2a$10$lLcqQd78lbA.VBHNoSmxCusnnDvlaMBultt/pDdDe.mXK/o1KtOYy', N'685d27f5-3edf-4c43-8fdd-23328ce62ee8', CAST(N'2019-12-20T09:59:14.877' AS DateTime))
INSERT [dbo].[Student] ([StudentID], [StudentCode], [FirstName], [LastName], [DateOfBirth], [Sex], [Mail], [PassWord], [ClassID], [CreatedDate]) VALUES (N'8e522253-b04e-445f-ae12-cc953d4d34d3', N'17050156', N'Trần Minh', N'Phương Thảo ', CAST(N'1999-12-12' AS Date), N'Nữ', N'thaoyeu@gmail.com', N'$2a$10$bnYUKFzGqaGxqSULNP0Va.MEsrnqWjeyAz7K/QtJmJ/k0tJ.aoiEG', N'685d27f5-3edf-4c43-8fdd-23328ce62ee8', CAST(N'2019-12-20T09:59:13.820' AS DateTime))
INSERT [dbo].[Student] ([StudentID], [StudentCode], [FirstName], [LastName], [DateOfBirth], [Sex], [Mail], [PassWord], [ClassID], [CreatedDate]) VALUES (N'23a64ea8-0611-463d-bd87-ce5fd692c284', N'17050158', N'Đoàn Văn', N'Haauj', CAST(N'1999-04-16' AS Date), N'Nam', N'vanhaauj@halan.com', N'$2a$10$A.4q4BDZvjiX.zHklpNMxOwkzc6iOHmVrNQyiwyp7R71cIQkoZmpC', N'685d27f5-3edf-4c43-8fdd-23328ce62ee8', CAST(N'2019-12-20T09:59:14.223' AS DateTime))
INSERT [dbo].[Student] ([StudentID], [StudentCode], [FirstName], [LastName], [DateOfBirth], [Sex], [Mail], [PassWord], [ClassID], [CreatedDate]) VALUES (N'd7651544-d8b7-4f2d-9511-ced068c1e44c', N'17050157', N'Nguyễn Trần', N'Đăng Khoa', CAST(N'1999-08-30' AS Date), N'Nam', N'khoakhaukhinh@gmail.com', N'$2a$10$4t.Ag/y5YuSDN4zzuF9.2.1qnSDjpTBS00RxFov15c3vyJGpKEx.S', N'685d27f5-3edf-4c43-8fdd-23328ce62ee8', CAST(N'2019-12-20T09:59:13.993' AS DateTime))
INSERT [dbo].[Student] ([StudentID], [StudentCode], [FirstName], [LastName], [DateOfBirth], [Sex], [Mail], [PassWord], [ClassID], [CreatedDate]) VALUES (N'94788d4a-b36c-41cd-a6c2-ebb0e27e6ed1', N'17050160', N'Ngô Bá', N'Khá', CAST(N'1998-02-19' AS Date), N'Nam', N'kha''banh?@gmail.com', N'$2a$10$gJyFF.Yxebicr8pf.6jN9u46gX0aOPDpauo43ENOzYWNl9rD5VMVS', N'685d27f5-3edf-4c43-8fdd-23328ce62ee8', CAST(N'2019-12-20T09:59:14.657' AS DateTime))
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [SubjectName], [TimeExam], [ConvertPoint], [ClassifyPoint], [CreatedDate]) VALUES (N'2cc6ce15-62f9-4194-9cb1-25469b40ca47', N'INT 3309', N'Duong loi dang cong san', N'45 phút', N'20%', N'30%', CAST(N'2019-12-19T22:10:04.873' AS DateTime))
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [SubjectName], [TimeExam], [ConvertPoint], [ClassifyPoint], [CreatedDate]) VALUES (N'3581f469-5b8c-469c-b580-6c42902f362d', N'INT 3307', N'Phong Chong Khung Bo', N'120 phút', N'10%', N'20%', CAST(N'2019-12-19T22:10:39.273' AS DateTime))
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [SubjectName], [TimeExam], [ConvertPoint], [ClassifyPoint], [CreatedDate]) VALUES (N'460f52aa-5b93-452c-b846-aa896a839c2d', N'INT 3366', N'Phòng chống tội phạm hắc ám', N'120 phút', N'10% Giữa kỳ + 90% Cuối kỳ', N'Hệ số 3 ', CAST(N'2019-12-23T16:10:35.137' AS DateTime))
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [SubjectName], [TimeExam], [ConvertPoint], [ClassifyPoint], [CreatedDate]) VALUES (N'8f3784ff-b1ef-4431-b73c-ad516420d86a', N'INT 1102', N'Tri tue nhan tao', N'120 phút', N'20%', N'30%', CAST(N'2019-12-22T18:34:19.770' AS DateTime))
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [SubjectName], [TimeExam], [ConvertPoint], [ClassifyPoint], [CreatedDate]) VALUES (N'dd0ba970-96d4-41a5-a30d-d66517210cd3', N'INT 1020', N'Quan ly du an', N'45 phút', N'20%', N'49%', CAST(N'2019-12-22T18:35:16.270' AS DateTime))
ALTER TABLE [dbo].[Admin] ADD  CONSTRAINT [DF_Admin_AdminID]  DEFAULT (newid()) FOR [AdminID]
GO
ALTER TABLE [dbo].[Admin] ADD  CONSTRAINT [DF_Admin_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Class] ADD  CONSTRAINT [DF_Class_ClassID]  DEFAULT (newid()) FOR [ClassID]
GO
ALTER TABLE [dbo].[Class] ADD  CONSTRAINT [DF_Class_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Exam] ADD  CONSTRAINT [DF_Exam_ExamID]  DEFAULT (newid()) FOR [ExamID]
GO
ALTER TABLE [dbo].[Exam] ADD  CONSTRAINT [DF_Exam_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Exam] ADD  CONSTRAINT [DF_Exam_RegistrationStatus]  DEFAULT ((0)) FOR [RegistrationStatus]
GO
ALTER TABLE [dbo].[ExamDetail] ADD  CONSTRAINT [DF_ExamDetail_ExamDetailID]  DEFAULT (newid()) FOR [ExamDetailID]
GO
ALTER TABLE [dbo].[ExamDetail] ADD  CONSTRAINT [DF_ExamDetail_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ExRoom] ADD  CONSTRAINT [DF_ExRoom_ExRoomID]  DEFAULT (newid()) FOR [ExRoomID]
GO
ALTER TABLE [dbo].[ExRoom] ADD  CONSTRAINT [DF_ExRoom_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[GroupExamDetailExRoom] ADD  CONSTRAINT [DF_GroupExamDetailExRoom_NumMember]  DEFAULT ((0)) FOR [NumMember]
GO
ALTER TABLE [dbo].[GroupStudentSubject] ADD  CONSTRAINT [DF_GroupStudentSubject_ExamBan]  DEFAULT ((0)) FOR [ExamBan]
GO
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_StudentID]  DEFAULT (newid()) FOR [StudentID]
GO
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Subject] ADD  CONSTRAINT [DF_Subject_SubjectID]  DEFAULT (newid()) FOR [SubjectID]
GO
ALTER TABLE [dbo].[Subject] ADD  CONSTRAINT [DF_Subject_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ExamDetail]  WITH CHECK ADD  CONSTRAINT [FK_ExamDetail_Exam] FOREIGN KEY([ExamID])
REFERENCES [dbo].[Exam] ([ExamID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExamDetail] CHECK CONSTRAINT [FK_ExamDetail_Exam]
GO
ALTER TABLE [dbo].[ExamDetail]  WITH CHECK ADD  CONSTRAINT [FK_ExamDetail_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExamDetail] CHECK CONSTRAINT [FK_ExamDetail_Subject]
GO
ALTER TABLE [dbo].[GroupExamDetailExRoom]  WITH CHECK ADD  CONSTRAINT [FK_GroupExamDetailExRoom_ExamDetail] FOREIGN KEY([ExamDetailID])
REFERENCES [dbo].[ExamDetail] ([ExamDetailID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupExamDetailExRoom] CHECK CONSTRAINT [FK_GroupExamDetailExRoom_ExamDetail]
GO
ALTER TABLE [dbo].[GroupExamDetailExRoom]  WITH CHECK ADD  CONSTRAINT [FK_GroupExamDetailExRoom_ExRoom] FOREIGN KEY([ExRoomID])
REFERENCES [dbo].[ExRoom] ([ExRoomID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupExamDetailExRoom] CHECK CONSTRAINT [FK_GroupExamDetailExRoom_ExRoom]
GO
ALTER TABLE [dbo].[GroupStudentExamDetail]  WITH CHECK ADD  CONSTRAINT [FK_GroupStudentExamDetail_ExamDetail] FOREIGN KEY([ExamDetailID])
REFERENCES [dbo].[ExamDetail] ([ExamDetailID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupStudentExamDetail] CHECK CONSTRAINT [FK_GroupStudentExamDetail_ExamDetail]
GO
ALTER TABLE [dbo].[GroupStudentExamDetail]  WITH CHECK ADD  CONSTRAINT [FK_GroupStudentExamDetail_ExRoom] FOREIGN KEY([ExRoomID])
REFERENCES [dbo].[ExRoom] ([ExRoomID])
GO
ALTER TABLE [dbo].[GroupStudentExamDetail] CHECK CONSTRAINT [FK_GroupStudentExamDetail_ExRoom]
GO
ALTER TABLE [dbo].[GroupStudentExamDetail]  WITH CHECK ADD  CONSTRAINT [FK_GroupStudentExamDetail_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupStudentExamDetail] CHECK CONSTRAINT [FK_GroupStudentExamDetail_Student]
GO
ALTER TABLE [dbo].[GroupStudentSubject]  WITH CHECK ADD  CONSTRAINT [FK_GroupStudentSubject_Exam] FOREIGN KEY([ExamID])
REFERENCES [dbo].[Exam] ([ExamID])
GO
ALTER TABLE [dbo].[GroupStudentSubject] CHECK CONSTRAINT [FK_GroupStudentSubject_Exam]
GO
ALTER TABLE [dbo].[GroupStudentSubject]  WITH CHECK ADD  CONSTRAINT [FK_GroupStudentSubject_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupStudentSubject] CHECK CONSTRAINT [FK_GroupStudentSubject_Student]
GO
ALTER TABLE [dbo].[GroupStudentSubject]  WITH CHECK ADD  CONSTRAINT [FK_GroupStudentSubject_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupStudentSubject] CHECK CONSTRAINT [FK_GroupStudentSubject_Subject]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Class]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Delete_Class]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Delete_Class]
	-- Add the parameters for the stored procedure here
	@ClassID UNIQUEIDENTIFIER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE dbo.Class WHERE ClassID = @ClassID
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Delete_ExamDetail]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Delete_ExamDetail]
	-- Add the parameters for the stored procedure here
	@ExamDetailID UNIQUEIDENTIFIER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE dbo.ExamDetail WHERE ExamDetailID = @ExamDetailID
    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Delete_ExRoom]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Delete_ExRoom]
	-- Add the parameters for the stored procedure here
	@ExRoomID UNIQUEIDENTIFIER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE dbo.ExRoom WHERE ExRoomID = @ExRoomID
    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Delete_GroupStudentExamDetail]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Delete_GroupStudentExamDetail]
	-- Add the parameters for the stored procedure here
	@ExamDetailID UNIQUEIDENTIFIER,
	@ExRoomID UNIQUEIDENTIFIER,
	@StudentID UNIQUEIDENTIFIER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE dbo.GroupStudentExamDetail WHERE StudentID = @StudentID AND ExRoomID = @ExRoomID AND ExamDetailID=@ExamDetailID
    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Delete_Student]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Delete_Student]
	-- Add the parameters for the stored procedure here
	@StudentID UNIQUEIDENTIFIER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE dbo.Student WHERE StudentID = @StudentID
    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Delete_Subject]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Delete_Subject]
	-- Add the parameters for the stored procedure here
	@SubjectID UNIQUEIDENTIFIER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE dbo.Subject WHERE SubjectID = @SubjectID
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Get_ExRoom]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Get_ExRoom]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM dbo.ExRoom ORDER BY CreatedDate DESC
    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Get_Student]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Get_Student]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM dbo.Student ORDER BY CreatedDate DESC
    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetExRoomById]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_GetExRoomById]
	-- Add the parameters for the stored procedure here
	@ExRoomID UNIQUEIDENTIFIER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM dbo.ExRoom WHERE ExRoomID = @ExRoomID
    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetStudentID_Student]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 20/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_GetStudentID_Student]
	-- Add the parameters for the stored procedure here
	@StudentCode NVARCHAR(20),
	@FirstName NVARCHAR(50),
	@LastName NVARCHAR(50),
	@DateOfBirth DATE
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM dbo.Student WHERE StudentCode = @StudentCode AND
											FirstName = @FirstName AND
											LastName = @LastName AND
											DateOfBirth = @DateOfBirth
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Insert_Class]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Insert_Class]
	-- Add the parameters for the stored procedure here
	@ClassName NVARCHAR(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.Class
	(
	    ClassName
	)
	VALUES
	(   
	    @ClassName     -- ClassName - nvarchar(100)

	    )
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Insert_Exam]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Insert_Exam]
	-- Add the parameters for the stored procedure here
	@ExamCode NVARCHAR(20),
	@SchoolName NVARCHAR(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.Exam
	(
	    ExamCode,
	    SchoolName
	)
	VALUES
	(   
	    @ExamCode,
		@SchoolName
	    )
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Insert_ExamDetail]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Insert_ExamDetail]
	-- Add the parameters for the stored procedure here
	@ExamDetailCode NVARCHAR(20),
	@ExamDate DATE,
	@TimeStart TIME,
	@TimeEnd TIME,
	@SubjectID UNIQUEIDENTIFIER,
	@ExamID UNIQUEIDENTIFIER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.ExamDetail
	(
	    ExamDetailCode,
	    ExamDate,
	    TimeStart,
	    TimeEnd,
	    SubjectID,
	    ExamID
	)
	VALUES
	(   
	    @ExamDetailCode,        -- ExamDetailCode - nvarchar(20)
	    @ExamDate,  -- ExamDate - date
	    @TimeStart, -- TimeStart - time(7)
	    @TimeEnd, -- TimeEnd - time(7)
	    @SubjectID,       -- SubjectID - uniqueidentifier
	    @ExamID
	    )
    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Insert_ExRoom]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Insert_ExRoom]
	-- Add the parameters for the stored procedure here
	@ExRoomAddress NVARCHAR(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.ExRoom
	(

	    ExRoomAddress
	)
	VALUES
	(   
	@ExRoomAddress
	    )
    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Insert_GroupExamDetailExRoom]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Insert_GroupExamDetailExRoom]
	-- Add the parameters for the stored procedure here
	@ExRoomID UNIQUEIDENTIFIER,
	@MaxMember INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.GroupExamDetailExRoom
	(
	    ExamDetailID,
	    ExRoomID,
	    MaxMember
	)
	VALUES
	(   (SELECT ExamDetailID FROM dbo.ExamDetail WHERE CreatedDate = (SELECT MAX(CreatedDate) FROM dbo.ExamDetail)),
	    @ExRoomID, -- ExRoomID - uniqueidentifier
	    @MaxMember    -- MaxMember - int

	    )
    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Insert_GroupStudentExamDetail]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Insert_GroupStudentExamDetail]
	-- Add the parameters for the stored procedure here
	@ExamDetailID UNIQUEIDENTIFIER,
	@ExRoomID UNIQUEIDENTIFIER,
	@StudentID UNIQUEIDENTIFIER,
	@SBD INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.GroupStudentExamDetail
	(
	    StudentID,
	    ExamDetailID,
	    ExRoomID,
		SBD
	)
	VALUES
	(   @StudentID, -- StudentID - uniqueidentifier
	    @ExamDetailID, -- ExamDetailID - uniqueidentifier
	    @ExRoomID,  -- ExRoomID - uniqueidentifier,
		@SBD
	    )
    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Insert_GroupStudentSubject]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 20/12/2019
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Insert_GroupStudentSubject]
	-- Add the parameters for the stored procedure here
	@StudentID UNIQUEIDENTIFIER,
	@SubjectID UNIQUEIDENTIFIER,
	@ExamID UNIQUEIDENTIFIER,
	@ExamBan BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.GroupStudentSubject
	(
	    StudentID,
	    SubjectID,
	    ExamID,
	    ExamBan
	)
	VALUES
	(   @StudentID, -- StudentID - uniqueidentifier
	    @SubjectID, -- SubjectID - uniqueidentifier
	    @ExamID, -- ExamID - uniqueidentifier
	    @ExamBan  -- ExamBan - bit
	    )
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Insert_Student]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Insert_Student]
	-- Add the parameters for the stored procedure here
	@StudentCode NVARCHAR(20),
	@FirstName NVARCHAR(50),
	@LastName NVARCHAR(50),
	@DateOfBirth DATE,
	@Sex NVARCHAR(100),
	@Mail NVARCHAR(255),
	@PassWord NVARCHAR(255),
	@ClassID UNIQUEIDENTIFIER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.Student
	(
	    
	    StudentCode,
	    FirstName,
	    LastName,
	    DateOfBirth,
	    Sex,
	    Mail,
	    PassWord,
	    ClassID

	)
	VALUES
	(   
	    @StudentCode,       -- StudentCode - nvarchar(20)
	    @FirstName,       -- FirstName - nvarchar(50)
	    @LastName,       -- LastName - nvarchar(50)
	    @DateOfBirth, -- DateOfBirth - date
	    @Sex,       -- Sex - nvarchar(100)
	    @Mail,       -- Mail - nvarchar(255)
	    @PassWord,       -- PassWord - nvarchar(255)
	    @ClassID      -- ClassID - uniqueidentifier
	   
	    )
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Insert_Subject]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Insert_Subject]
	-- Add the parameters for the stored procedure here
	@SubjectCode NVARCHAR(20),
	@SubjectName NVARCHAR(255),
	@TimeExam NVARCHAR(255),
	@ConvertPoint NVARCHAR(255),
	@ClassifyPoint NVARCHAR(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.Subject
	(
	    SubjectCode,
	    SubjectName,
	    TimeExam,
	    ConvertPoint,
	    ClassifyPoint
	)
	VALUES
	(   
	    @SubjectCode,      -- SubjectCode - nvarchar(20)
	    @SubjectName,      -- SubjectName - nvarchar(255)
	    @TimeExam,      -- TimeExam - nvarchar(255)
	    @ConvertPoint,      -- ConvertPoint - nvarchar(255)
	    @ClassifyPoint      -- ClassifyPoint - nvarchar(255)
	    )
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Update_Class]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Update_Class]
	-- Add the parameters for the stored procedure here
	@ClassID UNIQUEIDENTIFIER,
	@ClassName NVARCHAR(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE dbo.Class SET ClassName=@ClassName WHERE ClassID=@ClassID
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Update_ExRoom]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Update_ExRoom]
	-- Add the parameters for the stored procedure here
	@ExRoomID UNIQUEIDENTIFIER,
	@ExRoomAddress NVARCHAR(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE dbo.ExRoom SET ExRoomAddress=@ExRoomAddress WHERE ExRoomID = @ExRoomID
    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Update_Student]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Update_Student]
	-- Add the parameters for the stored procedure here
	@StudentID UNIQUEIDENTIFIER,
	@StudentCode NVARCHAR(20),
	@FirstName NVARCHAR(50),
	@LastName NVARCHAR(50),
	@DateOfBirth DATE,
	@Sex NVARCHAR(100),
	@Mail NVARCHAR(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE dbo.Student SET StudentCode=@StudentCode,
						   FirstName=@FirstName,
						   LastName=@LastName,
						   DateOfBirth=@DateOfBirth,
						   Sex=@Sex,
						   Mail=@Mail WHERE StudentID=@StudentID
    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Update_Subject]    Script Date: 12/23/2019 11:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vtnam
-- Create date: 18/12/2019
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Update_Subject]
	-- Add the parameters for the stored procedure here
	@SubjectID UNIQUEIDENTIFIER,
	@SubjectCode NVARCHAR(20),
	@SubjectName NVARCHAR(255),
	@TimeExam NVARCHAR(255),
	@ConvertPoint NVARCHAR(255),
	@ClassifyPoint NVARCHAR(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE dbo.Subject SET SubjectCode = @SubjectCode,SubjectName=@SubjectName,TimeExam=@TimeExam,ConvertPoint=@ConvertPoint,ClassifyPoint=@ClassifyPoint WHERE SubjectID=@SubjectID
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 là chưa mở đăng ký, 1 là mở đăng ký, 2 là đóng đăng ký' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Exam', @level2type=N'COLUMN',@level2name=N'RegistrationStatus'
GO
USE [master]
GO
ALTER DATABASE [VTNam2019_Web_DangKyThi] SET  READ_WRITE 
GO
