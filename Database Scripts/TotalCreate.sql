USE [OnlineAdmission]
GO
/****** Object:  User [DataDevUser]    Script Date: 7/17/2016 8:19:08 PM ******/
CREATE USER [DataDevUser] FOR LOGIN [DataDevUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DataUser]    Script Date: 7/17/2016 8:19:08 PM ******/
CREATE USER [DataUser] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DEVUSER]    Script Date: 7/17/2016 8:19:08 PM ******/
CREATE USER [DEVUSER] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [DataDevUser]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [DataDevUser]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [DataDevUser]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [DataDevUser]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [DataDevUser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DataDevUser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [DataDevUser]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [DataDevUser]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [DataDevUser]
GO
ALTER ROLE [db_owner] ADD MEMBER [DataUser]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [DataUser]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [DataUser]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [DataUser]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [DataUser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DataUser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [DataUser]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [DataUser]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [DataUser]
GO
ALTER ROLE [db_owner] ADD MEMBER [DEVUSER]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [DEVUSER]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [DEVUSER]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [DEVUSER]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [DEVUSER]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DEVUSER]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [DEVUSER]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [DEVUSER]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [DEVUSER]
GO
/****** Object:  Table [dbo].[ADMISSION_DATES]    Script Date: 7/17/2016 8:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMISSION_DATES](
	[FROM_DATE] [date] NOT NULL,
	[TO_DATE] [date] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NEWS]    Script Date: 7/17/2016 8:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEWS](
	[SR_NO] [int] IDENTITY(1,1) NOT NULL,
	[DATA] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_NEWS] PRIMARY KEY CLUSTERED 
(
	[SR_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STUDENT_DETAILS]    Script Date: 7/17/2016 8:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STUDENT_DETAILS](
	[APPLICATION_ID] [int] IDENTITY(1000,1) NOT NULL,
	[FIRST_NAME] [varchar](50) NULL,
	[MIDDLE_NAME] [varchar](50) NULL,
	[SURNAME] [varchar](50) NULL,
	[GENDER] [varchar](10) NULL,
	[MOTHER_TONGUE] [varchar](50) NULL,
	[RELIGION] [varchar](50) NULL,
	[CASTE_SUB_CASTE] [varchar](50) NULL,
	[PLACE_OF_BIRTH] [varchar](50) NULL,
	[DATE_OF_BIRTH] [date] NULL,
	[RESIDENTIAL_ADDRESS] [varchar](max) NULL,
	[AREA] [varchar](20) NULL,
	[AADHAR_NUMBER] [varchar](20) NULL,
	[MEDICAL_HISTORY] [varchar](max) NULL,
	[ADDITIONAL_INFORMATION] [varchar](max) NULL,
	[FATHERS_NAME] [varchar](50) NULL,
	[FATHERS_QUALIFICATION] [varchar](50) NULL,
	[FATHERS_OCCUPATION] [varchar](50) NULL,
	[FATHERS_NATIVE_PLACE] [varchar](50) NULL,
	[FATHERS_EMAIL] [varchar](50) NULL,
	[FATHERS_TELEPHONE] [varchar](20) NULL,
	[FATHERS_MOBILE_NUMBER] [varchar](20) NULL,
	[FATHERS_WHATSAPP_NUMBER] [varchar](20) NULL,
	[FATHERS_RESIDENTIAL_ADDRESS] [varchar](max) NULL,
	[FATHERS_OFFICE_ADDRESS] [varchar](max) NULL,
	[FATHERS_OFFICE_TELEPHONE_NUMBER] [varchar](20) NULL,
	[FATHERS_PAN_NUMBER] [varchar](20) NULL,
	[FATHERS_AADHAR_NUMBER] [varchar](20) NULL,
	[MOTHERS_NAME] [varchar](50) NULL,
	[MOTHERS_MAIDEN_NAME] [varchar](50) NULL,
	[MOTHERS_QUALIFICATION] [varchar](50) NULL,
	[MOTHERS_OCCUPATION] [varchar](50) NULL,
	[MOTHERS_NATIVE_PLACE] [varchar](50) NULL,
	[MOTHERS_EMAIL] [varchar](50) NULL,
	[MOTHERS_TELEPHONE] [varchar](20) NULL,
	[MOTHERS_MOBILE_NUMBER] [varchar](20) NULL,
	[MOTHERS_WHATSAPP_NUMBER] [varchar](20) NULL,
	[MOTHERS_RESIDENTIAL_ADDRESS] [varchar](max) NULL,
	[MOTHERS_OFFICE_ADDRESS] [varchar](max) NULL,
	[MOTHERS_OFFICE_TELEPHONE_NUMBER] [varchar](20) NULL,
	[MOTHERS_PAN_NUMBER] [varchar](20) NULL,
	[MOTHERS_AADHAR_NUMBER] [varchar](20) NULL,
	[RELATION_IN_SCHOOL] [varchar](10) NULL,
	[RELATION_NAME] [varchar](50) NULL,
	[RELATION_SECTION] [varchar](20) NULL,
	[RELATION_STANDARD] [varchar](20) NULL,
	[RELATION_DIVISION] [varchar](20) NULL,
	[FAMILY_INCOME] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STUDENT_DETAILS_OLD]    Script Date: 7/17/2016 8:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT_DETAILS_OLD](
	[STUDENT_ID] [int] IDENTITY(20160000,1) NOT NULL,
	[SURNAME] [nvarchar](50) NULL,
	[NAME] [nvarchar](50) NULL,
	[GENDER] [nvarchar](50) NULL,
	[FATHERS_NAME] [nvarchar](50) NULL,
	[MOTHERS_NAME] [nvarchar](50) NULL,
	[PLACE_OF_BIRTH] [nvarchar](50) NULL,
	[DATE_OF_BIRTH] [nvarchar](50) NULL,
	[DOB_IN_WORDS] [nvarchar](50) NULL,
	[RESIDENTIAL_ADDRESS] [nvarchar](max) NULL,
	[AREA] [nvarchar](50) NULL,
	[TELEPHONE_R] [nvarchar](50) NULL,
	[TELEPHONE_M] [nvarchar](50) NULL,
	[E_MAIL] [nvarchar](50) NULL,
	[FATHERS_PROFESSION] [nvarchar](50) NULL,
	[MOTHERS_PROFESSION] [nvarchar](50) NULL,
	[OFFICIAL_ADDRESS] [nvarchar](max) NULL,
	[TELEPHONE_O] [nvarchar](50) NULL,
	[RELIGION] [nvarchar](50) NULL,
	[CASTE_SUBCASTE] [nvarchar](50) NULL,
	[KIN_DETAILS] [nvarchar](max) NULL,
	[MEDICAL_HISTORY] [nvarchar](max) NULL,
	[OTHER_INFORMATION] [nvarchar](max) NULL,
	[PUPIL_PHOTO] [nvarchar](max) NULL,
 CONSTRAINT [PK_STUDENT_DETAILS] PRIMARY KEY CLUSTERED 
(
	[STUDENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USERS]    Script Date: 7/17/2016 8:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[USER_ID] [int] IDENTITY(1,1) NOT NULL,
	[USERNAME] [nvarchar](max) NOT NULL,
	[PASSWORD] [nvarchar](max) NOT NULL,
	[FULL_NAME] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
