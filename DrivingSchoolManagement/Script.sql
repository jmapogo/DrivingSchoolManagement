USE [DrivingSchool]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 19/11/2022 08:53:11 ******/
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
/****** Object:  Table [dbo].[Address]    Script Date: 19/11/2022 08:53:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Address_Id] [uniqueidentifier] NOT NULL,
	[Building] [varchar](150) NULL,
	[Street] [varchar](150) NULL,
	[Town] [varchar](150) NULL,
	[City] [varchar](150) NULL,
	[Postal_Code] [varchar](50) NULL,
	[Province] [varchar](150) NULL,
	[Country] [varchar](150) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Address_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 19/11/2022 08:53:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Client_Id] [uniqueidentifier] NOT NULL,
	[Address_Id] [uniqueidentifier] NOT NULL,
	[Office_Id] [uniqueidentifier] NULL,
	[Date_Became_Customer] [datetime] NULL,
	[Date_Last_Contact] [datetime] NULL,
	[Date_Of_Birth] [datetime] NULL,
	[First_Name] [varchar](250) NULL,
	[Middle_Name] [varchar](250) NULL,
	[Last_Name] [varchar](250) NULL,
	[Email_Address] [varchar](250) NULL,
	[Home_Phone_Number] [varchar](50) NULL,
	[Cell_Mobile_Phone_Number] [varchar](50) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Client_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client_Payment]    Script Date: 19/11/2022 08:53:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client_Payment](
	[Payment_Id] [uniqueidentifier] NOT NULL,
	[Client_Id] [uniqueidentifier] NULL,
	[Date_Of_Payment] [datetime] NULL,
	[Payment_Amount] [decimal](18, 0) NULL,
	[Payment_Method_Code] [int] NULL,
 CONSTRAINT [PK_Client_Payment] PRIMARY KEY CLUSTERED 
(
	[Payment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 19/11/2022 08:53:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[Lesson_Id] [uniqueidentifier] NOT NULL,
	[Client_Id] [uniqueidentifier] NULL,
	[Instructor_Staff_Id] [uniqueidentifier] NULL,
	[Lesson_Status_Code] [uniqueidentifier] NULL,
	[Vehicle_Reg_Number] [uniqueidentifier] NULL,
	[Lesson_Date] [date] NULL,
	[Lesson_Time] [time](7) NULL,
	[Fee] [decimal](18, 0) NULL,
	[Client_Progress_Made] [varchar](max) NULL,
	[Mileasge_Used] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Lesson] PRIMARY KEY CLUSTERED 
(
	[Lesson_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ref_Lesson_Status]    Script Date: 19/11/2022 08:53:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ref_Lesson_Status](
	[Lesson_Status_Code] [uniqueidentifier] NOT NULL,
	[Description] [varchar](150) NULL,
 CONSTRAINT [PK_Ref_Lesson_Status] PRIMARY KEY CLUSTERED 
(
	[Lesson_Status_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ref_Payment_Method]    Script Date: 19/11/2022 08:53:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ref_Payment_Method](
	[Payment_Method_Code] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](150) NULL,
 CONSTRAINT [PK_Ref_Payment_Method] PRIMARY KEY CLUSTERED 
(
	[Payment_Method_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reg_Job_Title]    Script Date: 19/11/2022 08:53:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reg_Job_Title](
	[Job_Title_Code] [uniqueidentifier] NOT NULL,
	[Job_Title_Description] [varchar](150) NULL,
 CONSTRAINT [PK_Reg_Job_Title] PRIMARY KEY CLUSTERED 
(
	[Job_Title_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolOffice]    Script Date: 19/11/2022 08:53:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolOffice](
	[Office_Id] [uniqueidentifier] NOT NULL,
	[Address_ID] [uniqueidentifier] NULL,
	[Name] [varchar](150) NULL,
 CONSTRAINT [PK_SchoolOffice] PRIMARY KEY CLUSTERED 
(
	[Office_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 19/11/2022 08:53:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Staff_Id] [uniqueidentifier] NOT NULL,
	[Home_Address_Id] [uniqueidentifier] NULL,
	[Office_Id] [uniqueidentifier] NULL,
	[First_Name] [varchar](150) NULL,
	[Middle_Name] [varchar](150) NULL,
	[Last_Name] [varchar](150) NULL,
	[Date_Of_Birth] [datetime] NULL,
	[Date_Joined_Staff] [datetime] NULL,
	[Date_Left_Staff] [datetime] NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[Staff_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 19/11/2022 08:53:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[Vehicle_Reg_Number] [uniqueidentifier] NOT NULL,
	[Office_Id] [uniqueidentifier] NULL,
	[Make] [varchar](50) NULL,
	[Model] [varchar](50) NULL,
	[Year] [decimal](18, 0) NULL,
	[Color] [varchar](50) NULL,
 CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED 
(
	[Vehicle_Reg_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221117182324_DrivingSchoolMigration', N'2.1.14-servicing-32113')
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (newid()) FOR [Address_Id]
GO
ALTER TABLE [dbo].[Client] ADD  DEFAULT (newid()) FOR [Client_Id]
GO
ALTER TABLE [dbo].[Client_Payment] ADD  DEFAULT (newid()) FOR [Payment_Id]
GO
ALTER TABLE [dbo].[Lesson] ADD  DEFAULT (newid()) FOR [Lesson_Id]
GO
ALTER TABLE [dbo].[Ref_Lesson_Status] ADD  DEFAULT (newid()) FOR [Lesson_Status_Code]
GO
ALTER TABLE [dbo].[Reg_Job_Title] ADD  DEFAULT (newid()) FOR [Job_Title_Code]
GO
ALTER TABLE [dbo].[SchoolOffice] ADD  DEFAULT (newid()) FOR [Office_Id]
GO
ALTER TABLE [dbo].[Staff] ADD  DEFAULT (newid()) FOR [Staff_Id]
GO
ALTER TABLE [dbo].[Vehicle] ADD  DEFAULT (newid()) FOR [Vehicle_Reg_Number]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Address] FOREIGN KEY([Address_Id])
REFERENCES [dbo].[Address] ([Address_Id])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Address]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_SchoolOffice] FOREIGN KEY([Office_Id])
REFERENCES [dbo].[SchoolOffice] ([Office_Id])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_SchoolOffice]
GO
ALTER TABLE [dbo].[Client_Payment]  WITH CHECK ADD  CONSTRAINT [FK_Client_Payment_Client_Payment] FOREIGN KEY([Payment_Method_Code])
REFERENCES [dbo].[Ref_Payment_Method] ([Payment_Method_Code])
GO
ALTER TABLE [dbo].[Client_Payment] CHECK CONSTRAINT [FK_Client_Payment_Client_Payment]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Client] FOREIGN KEY([Client_Id])
REFERENCES [dbo].[Client] ([Client_Id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Client]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Ref_Lesson_Status] FOREIGN KEY([Lesson_Status_Code])
REFERENCES [dbo].[Ref_Lesson_Status] ([Lesson_Status_Code])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Ref_Lesson_Status]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Staff] FOREIGN KEY([Instructor_Staff_Id])
REFERENCES [dbo].[Staff] ([Staff_Id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Staff]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Vehicle] FOREIGN KEY([Vehicle_Reg_Number])
REFERENCES [dbo].[Vehicle] ([Vehicle_Reg_Number])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Vehicle]
GO
ALTER TABLE [dbo].[SchoolOffice]  WITH CHECK ADD  CONSTRAINT [FK_SchoolOffice_Address] FOREIGN KEY([Address_ID])
REFERENCES [dbo].[Address] ([Address_Id])
GO
ALTER TABLE [dbo].[SchoolOffice] CHECK CONSTRAINT [FK_SchoolOffice_Address]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Address] FOREIGN KEY([Home_Address_Id])
REFERENCES [dbo].[Address] ([Address_Id])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Address]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_SchoolOffice] FOREIGN KEY([Office_Id])
REFERENCES [dbo].[SchoolOffice] ([Office_Id])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_SchoolOffice]
GO
/****** Object:  StoredProcedure [dbo].[Address_CUSTOM]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Address_CUSTOM]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20),
 @searchstring varchar(20)
)
AS

BEGIN

  SELECT m.* , 

  TotalRecord = COUNT(*) OVER()
  FROM [dbo].[Address] as m


WHERE
  ( @searchstring IS NULL OR @searchstring = '' OR [Building] LIKE @searchstring +'%')
OR  ( @searchstring IS NULL OR @searchstring = '' OR [Street] LIKE @searchstring +'%')
OR  ( @searchstring IS NULL OR @searchstring = '' OR [Town] LIKE @searchstring +'%')
OR  ( @searchstring IS NULL OR @searchstring = '' OR [City] LIKE @searchstring +'%')
OR  ( @searchstring IS NULL OR @searchstring = '' OR [Postal_Code] LIKE @searchstring +'%')
OR  ( @searchstring IS NULL OR @searchstring = '' OR [Province] LIKE @searchstring +'%')
OR  ( @searchstring IS NULL OR @searchstring = '' OR [Country] LIKE @searchstring +'%')

ORDER BY 

	case when @sortBy = 'Address_Id' and @orderBy = 'ASC' then [Address_Id] end ASC,
	case when @sortBy = 'Address_Id' and @orderBy = 'DESC' then [Address_Id] end DESC,
	case when @sortBy = 'Building' and @orderBy = 'ASC' then [Building] end ASC,
	case when @sortBy = 'Building' and @orderBy = 'DESC' then [Building] end DESC,
	case when @sortBy = 'Street' and @orderBy = 'ASC' then [Street] end ASC,
	case when @sortBy = 'Street' and @orderBy = 'DESC' then [Street] end DESC,
	case when @sortBy = 'Town' and @orderBy = 'ASC' then [Town] end ASC,
	case when @sortBy = 'Town' and @orderBy = 'DESC' then [Town] end DESC,
	case when @sortBy = 'City' and @orderBy = 'ASC' then [City] end ASC,
	case when @sortBy = 'City' and @orderBy = 'DESC' then [City] end DESC,
	case when @sortBy = 'Postal_Code' and @orderBy = 'ASC' then [Postal_Code] end ASC,
	case when @sortBy = 'Postal_Code' and @orderBy = 'DESC' then [Postal_Code] end DESC,
	case when @sortBy = 'Province' and @orderBy = 'ASC' then [Province] end ASC,
	case when @sortBy = 'Province' and @orderBy = 'DESC' then [Province] end DESC,
	case when @sortBy = 'Country' and @orderBy = 'ASC' then [Country] end ASC,
	case when @sortBy = 'Country' and @orderBy = 'DESC' then [Country] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[Address_DELETE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Address_DELETE]
(
@addressId uniqueidentifier
)
AS

DELETE
  [dbo].[Address]
WHERE
  [Address_Id] = @addressId


GO
/****** Object:  StoredProcedure [dbo].[Address_INSERT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Address_INSERT]
(
@addressId AS uniqueidentifier = null,
@building AS varchar(150) = null,
@street AS varchar(150) = null,
@town AS varchar(150) = null,
@city AS varchar(150) = null,
@postalCode AS varchar(50) = null,
@province AS varchar(150) = null,
@country AS varchar(150) = null
)
AS

INSERT INTO
  [dbo].[Address]
(
  [Address_Id],
  [Building],
  [Street],
  [Town],
  [City],
  [Postal_Code],
  [Province],
  [Country]
)
VALUES
(
  @addressId,
  @building,
  @street,
  @town,
  @city,
  @postalCode,
  @province,
  @country
)

SELECT SCOPE_IDENTITY()


GO
/****** Object:  StoredProcedure [dbo].[Address_PAGING]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Address_PAGING]
(
 @PageIndex int,
 @PageSize int
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[Address] data 


ORDER BY [Address_Id] DESC  

OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[Address_SEARCH]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Address_SEARCH]
(
@addressId uniqueidentifier = null,
@building varchar(150) = null,
@street varchar(150) = null,
@town varchar(150) = null,
@city varchar(150) = null,
@postalCode varchar(50) = null,
@province varchar(150) = null,
@country varchar(150) = null
)
AS

SELECT
  *
FROM
  [dbo].[Address]
WHERE
  (@addressId IS NULL OR [Address_Id] = @addressId)
AND
  (@building IS NULL OR @building = '' OR [Building] LIKE @building + '%')
AND
  (@street IS NULL OR @street = '' OR [Street] LIKE @street + '%')
AND
  (@town IS NULL OR @town = '' OR [Town] LIKE @town + '%')
AND
  (@city IS NULL OR @city = '' OR [City] LIKE @city + '%')
AND
  (@postalCode IS NULL OR @postalCode = '' OR [Postal_Code] LIKE @postalCode + '%')
AND
  (@province IS NULL OR @province = '' OR [Province] LIKE @province + '%')
AND
  (@country IS NULL OR @country = '' OR [Country] LIKE @country + '%')


GO
/****** Object:  StoredProcedure [dbo].[Address_SELECT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Address_SELECT]
(
@addressId AS uniqueidentifier
)
AS

SELECT
  *
FROM
  [dbo].[Address]
WHERE
  Address_Id = @addressId


GO
/****** Object:  StoredProcedure [dbo].[Address_SORT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Address_SORT]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20)
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[Address] data 


ORDER BY 

	case when @sortBy = 'Address_Id' and @orderBy = 'ASC' then [Address_Id] end ASC,
	case when @sortBy = 'Address_Id' and @orderBy = 'DESC' then [Address_Id] end DESC,
	case when @sortBy = 'Building' and @orderBy = 'ASC' then [Building] end ASC,
	case when @sortBy = 'Building' and @orderBy = 'DESC' then [Building] end DESC,
	case when @sortBy = 'Street' and @orderBy = 'ASC' then [Street] end ASC,
	case when @sortBy = 'Street' and @orderBy = 'DESC' then [Street] end DESC,
	case when @sortBy = 'Town' and @orderBy = 'ASC' then [Town] end ASC,
	case when @sortBy = 'Town' and @orderBy = 'DESC' then [Town] end DESC,
	case when @sortBy = 'City' and @orderBy = 'ASC' then [City] end ASC,
	case when @sortBy = 'City' and @orderBy = 'DESC' then [City] end DESC,
	case when @sortBy = 'Postal_Code' and @orderBy = 'ASC' then [Postal_Code] end ASC,
	case when @sortBy = 'Postal_Code' and @orderBy = 'DESC' then [Postal_Code] end DESC,
	case when @sortBy = 'Province' and @orderBy = 'ASC' then [Province] end ASC,
	case when @sortBy = 'Province' and @orderBy = 'DESC' then [Province] end DESC,
	case when @sortBy = 'Country' and @orderBy = 'ASC' then [Country] end ASC,
	case when @sortBy = 'Country' and @orderBy = 'DESC' then [Country] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[Address_UPDATE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Address_UPDATE]
(
@addressId uniqueidentifier = null,
@building varchar(150) = null,
@street varchar(150) = null,
@town varchar(150) = null,
@city varchar(150) = null,
@postalCode varchar(50) = null,
@province varchar(150) = null,
@country varchar(150) = null
)
AS

UPDATE
  [dbo].[Address]
SET
  [Address_Id] = @addressId,
  [Building] = @building,
  [Street] = @street,
  [Town] = @town,
  [City] = @city,
  [Postal_Code] = @postalCode,
  [Province] = @province,
  [Country] = @country
WHERE
  [Address_Id] = @addressId


GO
/****** Object:  StoredProcedure [dbo].[Client_CUSTOM]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Client_CUSTOM]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20),
 @searchstring varchar(20)
)
AS

BEGIN

  SELECT m.* , 

  TotalRecord = COUNT(*) OVER()
  FROM [dbo].[Client] as m


WHERE
  ( @searchstring IS NULL OR @searchstring = '' OR [First_Name] LIKE @searchstring +'%')
OR  ( @searchstring IS NULL OR @searchstring = '' OR [Middle_Name] LIKE @searchstring +'%')
OR  ( @searchstring IS NULL OR @searchstring = '' OR [Last_Name] LIKE @searchstring +'%')
OR  ( @searchstring IS NULL OR @searchstring = '' OR [Email_Address] LIKE @searchstring +'%')
OR  ( @searchstring IS NULL OR @searchstring = '' OR [Home_Phone_Number] LIKE @searchstring +'%')
OR  ( @searchstring IS NULL OR @searchstring = '' OR [Cell_Mobile_Phone_Number] LIKE @searchstring +'%')

ORDER BY 

	case when @sortBy = 'Client_Id' and @orderBy = 'ASC' then [Client_Id] end ASC,
	case when @sortBy = 'Client_Id' and @orderBy = 'DESC' then [Client_Id] end DESC,
	case when @sortBy = 'Address_Id' and @orderBy = 'ASC' then [Address_Id] end ASC,
	case when @sortBy = 'Address_Id' and @orderBy = 'DESC' then [Address_Id] end DESC,
	case when @sortBy = 'Office_Id' and @orderBy = 'ASC' then [Office_Id] end ASC,
	case when @sortBy = 'Office_Id' and @orderBy = 'DESC' then [Office_Id] end DESC,
	case when @sortBy = 'Date_Became_Customer' and @orderBy = 'ASC' then [Date_Became_Customer] end ASC,
	case when @sortBy = 'Date_Became_Customer' and @orderBy = 'DESC' then [Date_Became_Customer] end DESC,
	case when @sortBy = 'Date_Last_Contact' and @orderBy = 'ASC' then [Date_Last_Contact] end ASC,
	case when @sortBy = 'Date_Last_Contact' and @orderBy = 'DESC' then [Date_Last_Contact] end DESC,
	case when @sortBy = 'Date_Of_Birth' and @orderBy = 'ASC' then [Date_Of_Birth] end ASC,
	case when @sortBy = 'Date_Of_Birth' and @orderBy = 'DESC' then [Date_Of_Birth] end DESC,
	case when @sortBy = 'First_Name' and @orderBy = 'ASC' then [First_Name] end ASC,
	case when @sortBy = 'First_Name' and @orderBy = 'DESC' then [First_Name] end DESC,
	case when @sortBy = 'Middle_Name' and @orderBy = 'ASC' then [Middle_Name] end ASC,
	case when @sortBy = 'Middle_Name' and @orderBy = 'DESC' then [Middle_Name] end DESC,
	case when @sortBy = 'Last_Name' and @orderBy = 'ASC' then [Last_Name] end ASC,
	case when @sortBy = 'Last_Name' and @orderBy = 'DESC' then [Last_Name] end DESC,
	case when @sortBy = 'Email_Address' and @orderBy = 'ASC' then [Email_Address] end ASC,
	case when @sortBy = 'Email_Address' and @orderBy = 'DESC' then [Email_Address] end DESC,
	case when @sortBy = 'Home_Phone_Number' and @orderBy = 'ASC' then [Home_Phone_Number] end ASC,
	case when @sortBy = 'Home_Phone_Number' and @orderBy = 'DESC' then [Home_Phone_Number] end DESC,
	case when @sortBy = 'Cell_Mobile_Phone_Number' and @orderBy = 'ASC' then [Cell_Mobile_Phone_Number] end ASC,
	case when @sortBy = 'Cell_Mobile_Phone_Number' and @orderBy = 'DESC' then [Cell_Mobile_Phone_Number] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[Client_DELETE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Client_DELETE]
(
@clientId uniqueidentifier
)
AS

DELETE
  [dbo].[Client]
WHERE
  [Client_Id] = @clientId


GO
/****** Object:  StoredProcedure [dbo].[Client_INSERT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Client_INSERT]
(
@clientId AS uniqueidentifier = null,
@addressId AS uniqueidentifier = null,
@officeId AS uniqueidentifier = null,
@dateBecameCustomer AS datetime = null,
@dateLastContact AS datetime = null,
@dateOfBirth AS datetime = null,
@firstName AS varchar(250) = null,
@middleName AS varchar(250) = null,
@lastName AS varchar(250) = null,
@emailAddress AS varchar(250) = null,
@homePhoneNumber AS varchar(50) = null,
@cellMobilePhoneNumber AS varchar(50) = null
)
AS

INSERT INTO
  [dbo].[Client]
(
  [Client_Id],
  [Address_Id],
  [Office_Id],
  [Date_Became_Customer],
  [Date_Last_Contact],
  [Date_Of_Birth],
  [First_Name],
  [Middle_Name],
  [Last_Name],
  [Email_Address],
  [Home_Phone_Number],
  [Cell_Mobile_Phone_Number]
)
VALUES
(
  @clientId,
  @addressId,
  @officeId,
  @dateBecameCustomer,
  @dateLastContact,
  @dateOfBirth,
  @firstName,
  @middleName,
  @lastName,
  @emailAddress,
  @homePhoneNumber,
  @cellMobilePhoneNumber
)

SELECT SCOPE_IDENTITY()


GO
/****** Object:  StoredProcedure [dbo].[Client_PAGING]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Client_PAGING]
(
 @PageIndex int,
 @PageSize int
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[Client] data 


ORDER BY [Client_Id] DESC  

OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[Client_SEARCH]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Client_SEARCH]
(
@clientId uniqueidentifier = null,
@addressId uniqueidentifier = null,
@officeId uniqueidentifier = null,
@dateBecameCustomer datetime = null,
@dateLastContact datetime = null,
@dateOfBirth datetime = null,
@firstName varchar(250) = null,
@middleName varchar(250) = null,
@lastName varchar(250) = null,
@emailAddress varchar(250) = null,
@homePhoneNumber varchar(50) = null,
@cellMobilePhoneNumber varchar(50) = null
)
AS

SELECT
  *
FROM
  [dbo].[Client]
WHERE
  (@clientId IS NULL OR [Client_Id] = @clientId)
AND
  (@addressId IS NULL OR [Address_Id] = @addressId)
AND
  (@officeId IS NULL OR [Office_Id] = @officeId)
AND
  (@dateBecameCustomer IS NULL OR [Date_Became_Customer] = @dateBecameCustomer)
AND
  (@dateLastContact IS NULL OR [Date_Last_Contact] = @dateLastContact)
AND
  (@dateOfBirth IS NULL OR [Date_Of_Birth] = @dateOfBirth)
AND
  (@firstName IS NULL OR @firstName = '' OR [First_Name] LIKE @firstName + '%')
AND
  (@middleName IS NULL OR @middleName = '' OR [Middle_Name] LIKE @middleName + '%')
AND
  (@lastName IS NULL OR @lastName = '' OR [Last_Name] LIKE @lastName + '%')
AND
  (@emailAddress IS NULL OR @emailAddress = '' OR [Email_Address] LIKE @emailAddress + '%')
AND
  (@homePhoneNumber IS NULL OR @homePhoneNumber = '' OR [Home_Phone_Number] LIKE @homePhoneNumber + '%')
AND
  (@cellMobilePhoneNumber IS NULL OR @cellMobilePhoneNumber = '' OR [Cell_Mobile_Phone_Number] LIKE @cellMobilePhoneNumber + '%')


GO
/****** Object:  StoredProcedure [dbo].[Client_SELECT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Client_SELECT]
(
@clientId AS uniqueidentifier
)
AS

SELECT
  *
FROM
  [dbo].[Client]
WHERE
  Client_Id = @clientId


GO
/****** Object:  StoredProcedure [dbo].[Client_SORT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Client_SORT]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20)
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[Client] data 


ORDER BY 

	case when @sortBy = 'Client_Id' and @orderBy = 'ASC' then [Client_Id] end ASC,
	case when @sortBy = 'Client_Id' and @orderBy = 'DESC' then [Client_Id] end DESC,
	case when @sortBy = 'Address_Id' and @orderBy = 'ASC' then [Address_Id] end ASC,
	case when @sortBy = 'Address_Id' and @orderBy = 'DESC' then [Address_Id] end DESC,
	case when @sortBy = 'Office_Id' and @orderBy = 'ASC' then [Office_Id] end ASC,
	case when @sortBy = 'Office_Id' and @orderBy = 'DESC' then [Office_Id] end DESC,
	case when @sortBy = 'Date_Became_Customer' and @orderBy = 'ASC' then [Date_Became_Customer] end ASC,
	case when @sortBy = 'Date_Became_Customer' and @orderBy = 'DESC' then [Date_Became_Customer] end DESC,
	case when @sortBy = 'Date_Last_Contact' and @orderBy = 'ASC' then [Date_Last_Contact] end ASC,
	case when @sortBy = 'Date_Last_Contact' and @orderBy = 'DESC' then [Date_Last_Contact] end DESC,
	case when @sortBy = 'Date_Of_Birth' and @orderBy = 'ASC' then [Date_Of_Birth] end ASC,
	case when @sortBy = 'Date_Of_Birth' and @orderBy = 'DESC' then [Date_Of_Birth] end DESC,
	case when @sortBy = 'First_Name' and @orderBy = 'ASC' then [First_Name] end ASC,
	case when @sortBy = 'First_Name' and @orderBy = 'DESC' then [First_Name] end DESC,
	case when @sortBy = 'Middle_Name' and @orderBy = 'ASC' then [Middle_Name] end ASC,
	case when @sortBy = 'Middle_Name' and @orderBy = 'DESC' then [Middle_Name] end DESC,
	case when @sortBy = 'Last_Name' and @orderBy = 'ASC' then [Last_Name] end ASC,
	case when @sortBy = 'Last_Name' and @orderBy = 'DESC' then [Last_Name] end DESC,
	case when @sortBy = 'Email_Address' and @orderBy = 'ASC' then [Email_Address] end ASC,
	case when @sortBy = 'Email_Address' and @orderBy = 'DESC' then [Email_Address] end DESC,
	case when @sortBy = 'Home_Phone_Number' and @orderBy = 'ASC' then [Home_Phone_Number] end ASC,
	case when @sortBy = 'Home_Phone_Number' and @orderBy = 'DESC' then [Home_Phone_Number] end DESC,
	case when @sortBy = 'Cell_Mobile_Phone_Number' and @orderBy = 'ASC' then [Cell_Mobile_Phone_Number] end ASC,
	case when @sortBy = 'Cell_Mobile_Phone_Number' and @orderBy = 'DESC' then [Cell_Mobile_Phone_Number] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[Client_UPDATE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Client_UPDATE]
(
@clientId uniqueidentifier = null,
@addressId uniqueidentifier = null,
@officeId uniqueidentifier = null,
@dateBecameCustomer datetime = null,
@dateLastContact datetime = null,
@dateOfBirth datetime = null,
@firstName varchar(250) = null,
@middleName varchar(250) = null,
@lastName varchar(250) = null,
@emailAddress varchar(250) = null,
@homePhoneNumber varchar(50) = null,
@cellMobilePhoneNumber varchar(50) = null
)
AS

UPDATE
  [dbo].[Client]
SET
  [Client_Id] = @clientId,
  [Address_Id] = @addressId,
  [Office_Id] = @officeId,
  [Date_Became_Customer] = @dateBecameCustomer,
  [Date_Last_Contact] = @dateLastContact,
  [Date_Of_Birth] = @dateOfBirth,
  [First_Name] = @firstName,
  [Middle_Name] = @middleName,
  [Last_Name] = @lastName,
  [Email_Address] = @emailAddress,
  [Home_Phone_Number] = @homePhoneNumber,
  [Cell_Mobile_Phone_Number] = @cellMobilePhoneNumber
WHERE
  [Client_Id] = @clientId


GO
/****** Object:  StoredProcedure [dbo].[ClientPayment_CUSTOM]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ClientPayment_CUSTOM]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20),
 @searchstring varchar(20)
)
AS

BEGIN

  SELECT m.* , 

  TotalRecord = COUNT(*) OVER()
  FROM [dbo].[Client_Payment] as m


ORDER BY 

	case when @sortBy = 'Payment_Id' and @orderBy = 'ASC' then [Payment_Id] end ASC,
	case when @sortBy = 'Payment_Id' and @orderBy = 'DESC' then [Payment_Id] end DESC,
	case when @sortBy = 'Client_Id' and @orderBy = 'ASC' then [Client_Id] end ASC,
	case when @sortBy = 'Client_Id' and @orderBy = 'DESC' then [Client_Id] end DESC,
	case when @sortBy = 'Date_Of_Payment' and @orderBy = 'ASC' then [Date_Of_Payment] end ASC,
	case when @sortBy = 'Date_Of_Payment' and @orderBy = 'DESC' then [Date_Of_Payment] end DESC,
	case when @sortBy = 'Payment_Amount' and @orderBy = 'ASC' then [Payment_Amount] end ASC,
	case when @sortBy = 'Payment_Amount' and @orderBy = 'DESC' then [Payment_Amount] end DESC,
	case when @sortBy = 'Payment_Method_Code' and @orderBy = 'ASC' then [Payment_Method_Code] end ASC,
	case when @sortBy = 'Payment_Method_Code' and @orderBy = 'DESC' then [Payment_Method_Code] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[ClientPayment_DELETE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ClientPayment_DELETE]
(
@paymentId uniqueidentifier
)
AS

DELETE
  [dbo].[Client_Payment]
WHERE
  [Payment_Id] = @paymentId


GO
/****** Object:  StoredProcedure [dbo].[ClientPayment_INSERT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ClientPayment_INSERT]
(
@paymentId AS uniqueidentifier = null,
@clientId AS uniqueidentifier = null,
@dateOfPayment AS datetime = null,
@paymentAmount AS decimal = null,
@paymentMethodCode AS int = null
)
AS

INSERT INTO
  [dbo].[Client_Payment]
(
  [Payment_Id],
  [Client_Id],
  [Date_Of_Payment],
  [Payment_Amount],
  [Payment_Method_Code]
)
VALUES
(
  @paymentId,
  @clientId,
  @dateOfPayment,
  @paymentAmount,
  @paymentMethodCode
)

SELECT SCOPE_IDENTITY()


GO
/****** Object:  StoredProcedure [dbo].[ClientPayment_PAGING]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ClientPayment_PAGING]
(
 @PageIndex int,
 @PageSize int
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[Client_Payment] data 


ORDER BY [Payment_Id] DESC  

OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[ClientPayment_SEARCH]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ClientPayment_SEARCH]
(
@paymentId uniqueidentifier = null,
@clientId uniqueidentifier = null,
@dateOfPayment datetime = null,
@paymentAmount decimal = null,
@paymentMethodCode int = null
)
AS

SELECT
  *
FROM
  [dbo].[Client_Payment]
WHERE
  (@paymentId IS NULL OR [Payment_Id] = @paymentId)
AND
  (@clientId IS NULL OR [Client_Id] = @clientId)
AND
  (@dateOfPayment IS NULL OR [Date_Of_Payment] = @dateOfPayment)
AND
  (@paymentAmount IS NULL OR [Payment_Amount] = @paymentAmount)
AND
  (@paymentMethodCode IS NULL OR [Payment_Method_Code] = @paymentMethodCode)


GO
/****** Object:  StoredProcedure [dbo].[ClientPayment_SELECT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ClientPayment_SELECT]
(
@paymentId AS uniqueidentifier
)
AS

SELECT
  *
FROM
  [dbo].[Client_Payment]
WHERE
  Payment_Id = @paymentId


GO
/****** Object:  StoredProcedure [dbo].[ClientPayment_SORT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ClientPayment_SORT]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20)
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[Client_Payment] data 


ORDER BY 

	case when @sortBy = 'Payment_Id' and @orderBy = 'ASC' then [Payment_Id] end ASC,
	case when @sortBy = 'Payment_Id' and @orderBy = 'DESC' then [Payment_Id] end DESC,
	case when @sortBy = 'Client_Id' and @orderBy = 'ASC' then [Client_Id] end ASC,
	case when @sortBy = 'Client_Id' and @orderBy = 'DESC' then [Client_Id] end DESC,
	case when @sortBy = 'Date_Of_Payment' and @orderBy = 'ASC' then [Date_Of_Payment] end ASC,
	case when @sortBy = 'Date_Of_Payment' and @orderBy = 'DESC' then [Date_Of_Payment] end DESC,
	case when @sortBy = 'Payment_Amount' and @orderBy = 'ASC' then [Payment_Amount] end ASC,
	case when @sortBy = 'Payment_Amount' and @orderBy = 'DESC' then [Payment_Amount] end DESC,
	case when @sortBy = 'Payment_Method_Code' and @orderBy = 'ASC' then [Payment_Method_Code] end ASC,
	case when @sortBy = 'Payment_Method_Code' and @orderBy = 'DESC' then [Payment_Method_Code] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[ClientPayment_UPDATE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ClientPayment_UPDATE]
(
@paymentId uniqueidentifier = null,
@clientId uniqueidentifier = null,
@dateOfPayment datetime = null,
@paymentAmount decimal = null,
@paymentMethodCode int = null
)
AS

UPDATE
  [dbo].[Client_Payment]
SET
  [Payment_Id] = @paymentId,
  [Client_Id] = @clientId,
  [Date_Of_Payment] = @dateOfPayment,
  [Payment_Amount] = @paymentAmount,
  [Payment_Method_Code] = @paymentMethodCode
WHERE
  [Payment_Id] = @paymentId


GO
/****** Object:  StoredProcedure [dbo].[Lesson_CUSTOM]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Lesson_CUSTOM]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20),
 @searchstring varchar(20)
)
AS

BEGIN

  SELECT m.* , 

  TotalRecord = COUNT(*) OVER()
  FROM [dbo].[Lesson] as m


ORDER BY 

	case when @sortBy = 'Lesson_Id' and @orderBy = 'ASC' then [Lesson_Id] end ASC,
	case when @sortBy = 'Lesson_Id' and @orderBy = 'DESC' then [Lesson_Id] end DESC,
	case when @sortBy = 'Client_Id' and @orderBy = 'ASC' then [Client_Id] end ASC,
	case when @sortBy = 'Client_Id' and @orderBy = 'DESC' then [Client_Id] end DESC,
	case when @sortBy = 'Instructor_Staff_Id' and @orderBy = 'ASC' then [Instructor_Staff_Id] end ASC,
	case when @sortBy = 'Instructor_Staff_Id' and @orderBy = 'DESC' then [Instructor_Staff_Id] end DESC,
	case when @sortBy = 'Lesson_Status_Code' and @orderBy = 'ASC' then [Lesson_Status_Code] end ASC,
	case when @sortBy = 'Lesson_Status_Code' and @orderBy = 'DESC' then [Lesson_Status_Code] end DESC,
	case when @sortBy = 'Vehicle_Reg_Number' and @orderBy = 'ASC' then [Vehicle_Reg_Number] end ASC,
	case when @sortBy = 'Vehicle_Reg_Number' and @orderBy = 'DESC' then [Vehicle_Reg_Number] end DESC,
	case when @sortBy = 'Lesson_Date' and @orderBy = 'ASC' then [Lesson_Date] end ASC,
	case when @sortBy = 'Lesson_Date' and @orderBy = 'DESC' then [Lesson_Date] end DESC,
	case when @sortBy = 'Lesson_Time' and @orderBy = 'ASC' then [Lesson_Time] end ASC,
	case when @sortBy = 'Lesson_Time' and @orderBy = 'DESC' then [Lesson_Time] end DESC,
	case when @sortBy = 'Fee' and @orderBy = 'ASC' then [Fee] end ASC,
	case when @sortBy = 'Fee' and @orderBy = 'DESC' then [Fee] end DESC,
	case when @sortBy = 'Client_Progress_Made' and @orderBy = 'ASC' then [Client_Progress_Made] end ASC,
	case when @sortBy = 'Client_Progress_Made' and @orderBy = 'DESC' then [Client_Progress_Made] end DESC,
	case when @sortBy = 'Mileasge_Used' and @orderBy = 'ASC' then [Mileasge_Used] end ASC,
	case when @sortBy = 'Mileasge_Used' and @orderBy = 'DESC' then [Mileasge_Used] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[Lesson_DELETE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Lesson_DELETE]
(
@lessonId uniqueidentifier
)
AS

DELETE
  [dbo].[Lesson]
WHERE
  [Lesson_Id] = @lessonId


GO
/****** Object:  StoredProcedure [dbo].[Lesson_INSERT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Lesson_INSERT]
(
@lessonId AS uniqueidentifier = null,
@clientId AS uniqueidentifier = null,
@instructorStaffId AS uniqueidentifier = null,
@lessonStatusCode AS uniqueidentifier = null,
@vehicleRegNumber AS uniqueidentifier = null,
@lessonDate AS date = null,
@lessonTime AS time = null,
@fee AS decimal = null,
@clientProgressMade AS varchar(MAX) = null,
@mileasgeUsed AS decimal = null
)
AS

INSERT INTO
  [dbo].[Lesson]
(
  [Lesson_Id],
  [Client_Id],
  [Instructor_Staff_Id],
  [Lesson_Status_Code],
  [Vehicle_Reg_Number],
  [Lesson_Date],
  [Lesson_Time],
  [Fee],
  [Client_Progress_Made],
  [Mileasge_Used]
)
VALUES
(
  @lessonId,
  @clientId,
  @instructorStaffId,
  @lessonStatusCode,
  @vehicleRegNumber,
  @lessonDate,
  @lessonTime,
  @fee,
  @clientProgressMade,
  @mileasgeUsed
)

SELECT SCOPE_IDENTITY()


GO
/****** Object:  StoredProcedure [dbo].[Lesson_PAGING]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Lesson_PAGING]
(
 @PageIndex int,
 @PageSize int
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[Lesson] data 


ORDER BY [Lesson_Id] DESC  

OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[Lesson_SEARCH]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Lesson_SEARCH]
(
@lessonId uniqueidentifier = null,
@clientId uniqueidentifier = null,
@instructorStaffId uniqueidentifier = null,
@lessonStatusCode uniqueidentifier = null,
@vehicleRegNumber uniqueidentifier = null,
@lessonDate date = null,
@lessonTime time = null,
@fee decimal = null,
@clientProgressMade varchar(MAX) = null,
@mileasgeUsed decimal = null
)
AS

SELECT
  *
FROM
  [dbo].[Lesson]
WHERE
  (@lessonId IS NULL OR [Lesson_Id] = @lessonId)
AND
  (@clientId IS NULL OR [Client_Id] = @clientId)
AND
  (@instructorStaffId IS NULL OR [Instructor_Staff_Id] = @instructorStaffId)
AND
  (@lessonStatusCode IS NULL OR [Lesson_Status_Code] = @lessonStatusCode)
AND
  (@vehicleRegNumber IS NULL OR [Vehicle_Reg_Number] = @vehicleRegNumber)
AND
  (@lessonDate IS NULL OR [Lesson_Date] = @lessonDate)
AND
  (@fee IS NULL OR [Fee] = @fee)
AND
  (@mileasgeUsed IS NULL OR [Mileasge_Used] = @mileasgeUsed)


GO
/****** Object:  StoredProcedure [dbo].[Lesson_SELECT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Lesson_SELECT]
(
@lessonId AS uniqueidentifier
)
AS

SELECT
  *
FROM
  [dbo].[Lesson]
WHERE
  Lesson_Id = @lessonId


GO
/****** Object:  StoredProcedure [dbo].[Lesson_SORT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Lesson_SORT]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20)
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[Lesson] data 


ORDER BY 

	case when @sortBy = 'Lesson_Id' and @orderBy = 'ASC' then [Lesson_Id] end ASC,
	case when @sortBy = 'Lesson_Id' and @orderBy = 'DESC' then [Lesson_Id] end DESC,
	case when @sortBy = 'Client_Id' and @orderBy = 'ASC' then [Client_Id] end ASC,
	case when @sortBy = 'Client_Id' and @orderBy = 'DESC' then [Client_Id] end DESC,
	case when @sortBy = 'Instructor_Staff_Id' and @orderBy = 'ASC' then [Instructor_Staff_Id] end ASC,
	case when @sortBy = 'Instructor_Staff_Id' and @orderBy = 'DESC' then [Instructor_Staff_Id] end DESC,
	case when @sortBy = 'Lesson_Status_Code' and @orderBy = 'ASC' then [Lesson_Status_Code] end ASC,
	case when @sortBy = 'Lesson_Status_Code' and @orderBy = 'DESC' then [Lesson_Status_Code] end DESC,
	case when @sortBy = 'Vehicle_Reg_Number' and @orderBy = 'ASC' then [Vehicle_Reg_Number] end ASC,
	case when @sortBy = 'Vehicle_Reg_Number' and @orderBy = 'DESC' then [Vehicle_Reg_Number] end DESC,
	case when @sortBy = 'Lesson_Date' and @orderBy = 'ASC' then [Lesson_Date] end ASC,
	case when @sortBy = 'Lesson_Date' and @orderBy = 'DESC' then [Lesson_Date] end DESC,
	case when @sortBy = 'Lesson_Time' and @orderBy = 'ASC' then [Lesson_Time] end ASC,
	case when @sortBy = 'Lesson_Time' and @orderBy = 'DESC' then [Lesson_Time] end DESC,
	case when @sortBy = 'Fee' and @orderBy = 'ASC' then [Fee] end ASC,
	case when @sortBy = 'Fee' and @orderBy = 'DESC' then [Fee] end DESC,
	case when @sortBy = 'Client_Progress_Made' and @orderBy = 'ASC' then [Client_Progress_Made] end ASC,
	case when @sortBy = 'Client_Progress_Made' and @orderBy = 'DESC' then [Client_Progress_Made] end DESC,
	case when @sortBy = 'Mileasge_Used' and @orderBy = 'ASC' then [Mileasge_Used] end ASC,
	case when @sortBy = 'Mileasge_Used' and @orderBy = 'DESC' then [Mileasge_Used] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[Lesson_UPDATE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Lesson_UPDATE]
(
@lessonId uniqueidentifier = null,
@clientId uniqueidentifier = null,
@instructorStaffId uniqueidentifier = null,
@lessonStatusCode uniqueidentifier = null,
@vehicleRegNumber uniqueidentifier = null,
@lessonDate date = null,
@lessonTime time = null,
@fee decimal = null,
@clientProgressMade varchar(MAX) = null,
@mileasgeUsed decimal = null
)
AS

UPDATE
  [dbo].[Lesson]
SET
  [Lesson_Id] = @lessonId,
  [Client_Id] = @clientId,
  [Instructor_Staff_Id] = @instructorStaffId,
  [Lesson_Status_Code] = @lessonStatusCode,
  [Vehicle_Reg_Number] = @vehicleRegNumber,
  [Lesson_Date] = @lessonDate,
  [Lesson_Time] = @lessonTime,
  [Fee] = @fee,
  [Client_Progress_Made] = @clientProgressMade,
  [Mileasge_Used] = @mileasgeUsed
WHERE
  [Lesson_Id] = @lessonId


GO
/****** Object:  StoredProcedure [dbo].[RefLessonStatus_CUSTOM]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RefLessonStatus_CUSTOM]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20),
 @searchstring varchar(20)
)
AS

BEGIN

  SELECT m.* , 

  TotalRecord = COUNT(*) OVER()
  FROM [dbo].[Ref_Lesson_Status] as m


WHERE
  ( @searchstring IS NULL OR @searchstring = '' OR [Description] LIKE @searchstring +'%')

ORDER BY 

	case when @sortBy = 'Lesson_Status_Code' and @orderBy = 'ASC' then [Lesson_Status_Code] end ASC,
	case when @sortBy = 'Lesson_Status_Code' and @orderBy = 'DESC' then [Lesson_Status_Code] end DESC,
	case when @sortBy = 'Description' and @orderBy = 'ASC' then [Description] end ASC,
	case when @sortBy = 'Description' and @orderBy = 'DESC' then [Description] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[RefLessonStatus_DELETE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RefLessonStatus_DELETE]
(
@lessonStatusCode uniqueidentifier
)
AS

DELETE
  [dbo].[Ref_Lesson_Status]
WHERE
  [Lesson_Status_Code] = @lessonStatusCode


GO
/****** Object:  StoredProcedure [dbo].[RefLessonStatus_INSERT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RefLessonStatus_INSERT]
(
@lessonStatusCode AS uniqueidentifier = null,
@description AS varchar(150) = null
)
AS

INSERT INTO
  [dbo].[Ref_Lesson_Status]
(
  [Lesson_Status_Code],
  [Description]
)
VALUES
(
  @lessonStatusCode,
  @description
)

SELECT SCOPE_IDENTITY()


GO
/****** Object:  StoredProcedure [dbo].[RefLessonStatus_PAGING]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RefLessonStatus_PAGING]
(
 @PageIndex int,
 @PageSize int
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[Ref_Lesson_Status] data 


ORDER BY [Lesson_Status_Code] DESC  

OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[RefLessonStatus_SEARCH]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RefLessonStatus_SEARCH]
(
@lessonStatusCode uniqueidentifier = null,
@description varchar(150) = null
)
AS

SELECT
  *
FROM
  [dbo].[Ref_Lesson_Status]
WHERE
  (@lessonStatusCode IS NULL OR [Lesson_Status_Code] = @lessonStatusCode)
AND
  (@description IS NULL OR @description = '' OR [Description] LIKE @description + '%')


GO
/****** Object:  StoredProcedure [dbo].[RefLessonStatus_SELECT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RefLessonStatus_SELECT]
(
@lessonStatusCode AS uniqueidentifier
)
AS

SELECT
  *
FROM
  [dbo].[Ref_Lesson_Status]
WHERE
  Lesson_Status_Code = @lessonStatusCode


GO
/****** Object:  StoredProcedure [dbo].[RefLessonStatus_SORT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RefLessonStatus_SORT]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20)
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[Ref_Lesson_Status] data 


ORDER BY 

	case when @sortBy = 'Lesson_Status_Code' and @orderBy = 'ASC' then [Lesson_Status_Code] end ASC,
	case when @sortBy = 'Lesson_Status_Code' and @orderBy = 'DESC' then [Lesson_Status_Code] end DESC,
	case when @sortBy = 'Description' and @orderBy = 'ASC' then [Description] end ASC,
	case when @sortBy = 'Description' and @orderBy = 'DESC' then [Description] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[RefLessonStatus_UPDATE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RefLessonStatus_UPDATE]
(
@lessonStatusCode uniqueidentifier = null,
@description varchar(150) = null
)
AS

UPDATE
  [dbo].[Ref_Lesson_Status]
SET
  [Lesson_Status_Code] = @lessonStatusCode,
  [Description] = @description
WHERE
  [Lesson_Status_Code] = @lessonStatusCode


GO
/****** Object:  StoredProcedure [dbo].[RefPaymentMethod_CUSTOM]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RefPaymentMethod_CUSTOM]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20),
 @searchstring varchar(20)
)
AS

BEGIN

  SELECT m.* , 

  TotalRecord = COUNT(*) OVER()
  FROM [dbo].[Ref_Payment_Method] as m


WHERE
  ( @searchstring IS NULL OR @searchstring = '' OR [Description] LIKE @searchstring +'%')

ORDER BY 

	case when @sortBy = 'Payment_Method_Code' and @orderBy = 'ASC' then [Payment_Method_Code] end ASC,
	case when @sortBy = 'Payment_Method_Code' and @orderBy = 'DESC' then [Payment_Method_Code] end DESC,
	case when @sortBy = 'Description' and @orderBy = 'ASC' then [Description] end ASC,
	case when @sortBy = 'Description' and @orderBy = 'DESC' then [Description] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[RefPaymentMethod_DELETE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RefPaymentMethod_DELETE]
(
@paymentMethodCode int
)
AS

DELETE
  [dbo].[Ref_Payment_Method]
WHERE
  [Payment_Method_Code] = @paymentMethodCode


GO
/****** Object:  StoredProcedure [dbo].[RefPaymentMethod_INSERT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RefPaymentMethod_INSERT]
(
@description AS varchar(150) = null
)
AS

INSERT INTO
  [dbo].[Ref_Payment_Method]
(
  [Description]
)
VALUES
(
  @description
)

SELECT SCOPE_IDENTITY()


GO
/****** Object:  StoredProcedure [dbo].[RefPaymentMethod_PAGING]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RefPaymentMethod_PAGING]
(
 @PageIndex int,
 @PageSize int
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[Ref_Payment_Method] data 


ORDER BY [Payment_Method_Code] DESC  

OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[RefPaymentMethod_SEARCH]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RefPaymentMethod_SEARCH]
(
@paymentMethodCode int = null,
@description varchar(150) = null
)
AS

SELECT
  *
FROM
  [dbo].[Ref_Payment_Method]
WHERE
  (@paymentMethodCode IS NULL OR [Payment_Method_Code] = @paymentMethodCode)
AND
  (@description IS NULL OR @description = '' OR [Description] LIKE @description + '%')


GO
/****** Object:  StoredProcedure [dbo].[RefPaymentMethod_SELECT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RefPaymentMethod_SELECT]
(
@paymentMethodCode AS int
)
AS

SELECT
  *
FROM
  [dbo].[Ref_Payment_Method]
WHERE
  Payment_Method_Code = @paymentMethodCode


GO
/****** Object:  StoredProcedure [dbo].[RefPaymentMethod_SORT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RefPaymentMethod_SORT]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20)
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[Ref_Payment_Method] data 


ORDER BY 

	case when @sortBy = 'Payment_Method_Code' and @orderBy = 'ASC' then [Payment_Method_Code] end ASC,
	case when @sortBy = 'Payment_Method_Code' and @orderBy = 'DESC' then [Payment_Method_Code] end DESC,
	case when @sortBy = 'Description' and @orderBy = 'ASC' then [Description] end ASC,
	case when @sortBy = 'Description' and @orderBy = 'DESC' then [Description] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[RefPaymentMethod_UPDATE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RefPaymentMethod_UPDATE]
(
@paymentMethodCode int = null,
@description varchar(150) = null
)
AS

UPDATE
  [dbo].[Ref_Payment_Method]
SET
  [Description] = @description
WHERE
  [Payment_Method_Code] = @paymentMethodCode


GO
/****** Object:  StoredProcedure [dbo].[RegJobTitle_CUSTOM]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RegJobTitle_CUSTOM]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20),
 @searchstring varchar(20)
)
AS

BEGIN

  SELECT m.* , 

  TotalRecord = COUNT(*) OVER()
  FROM [dbo].[Reg_Job_Title] as m


WHERE
  ( @searchstring IS NULL OR @searchstring = '' OR [Job_Title_Description] LIKE @searchstring +'%')

ORDER BY 

	case when @sortBy = 'Job_Title_Code' and @orderBy = 'ASC' then [Job_Title_Code] end ASC,
	case when @sortBy = 'Job_Title_Code' and @orderBy = 'DESC' then [Job_Title_Code] end DESC,
	case when @sortBy = 'Job_Title_Description' and @orderBy = 'ASC' then [Job_Title_Description] end ASC,
	case when @sortBy = 'Job_Title_Description' and @orderBy = 'DESC' then [Job_Title_Description] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[RegJobTitle_DELETE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RegJobTitle_DELETE]
(
@jobTitleCode uniqueidentifier
)
AS

DELETE
  [dbo].[Reg_Job_Title]
WHERE
  [Job_Title_Code] = @jobTitleCode


GO
/****** Object:  StoredProcedure [dbo].[RegJobTitle_INSERT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RegJobTitle_INSERT]
(
@jobTitleCode AS uniqueidentifier = null,
@jobTitleDescription AS varchar(150) = null
)
AS

INSERT INTO
  [dbo].[Reg_Job_Title]
(
  [Job_Title_Code],
  [Job_Title_Description]
)
VALUES
(
  @jobTitleCode,
  @jobTitleDescription
)

SELECT SCOPE_IDENTITY()


GO
/****** Object:  StoredProcedure [dbo].[RegJobTitle_PAGING]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RegJobTitle_PAGING]
(
 @PageIndex int,
 @PageSize int
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[Reg_Job_Title] data 


ORDER BY [Job_Title_Code] DESC  

OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[RegJobTitle_SEARCH]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RegJobTitle_SEARCH]
(
@jobTitleCode uniqueidentifier = null,
@jobTitleDescription varchar(150) = null
)
AS

SELECT
  *
FROM
  [dbo].[Reg_Job_Title]
WHERE
  (@jobTitleCode IS NULL OR [Job_Title_Code] = @jobTitleCode)
AND
  (@jobTitleDescription IS NULL OR @jobTitleDescription = '' OR [Job_Title_Description] LIKE @jobTitleDescription + '%')


GO
/****** Object:  StoredProcedure [dbo].[RegJobTitle_SELECT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RegJobTitle_SELECT]
(
@jobTitleCode AS uniqueidentifier
)
AS

SELECT
  *
FROM
  [dbo].[Reg_Job_Title]
WHERE
  Job_Title_Code = @jobTitleCode


GO
/****** Object:  StoredProcedure [dbo].[RegJobTitle_SORT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RegJobTitle_SORT]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20)
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[Reg_Job_Title] data 


ORDER BY 

	case when @sortBy = 'Job_Title_Code' and @orderBy = 'ASC' then [Job_Title_Code] end ASC,
	case when @sortBy = 'Job_Title_Code' and @orderBy = 'DESC' then [Job_Title_Code] end DESC,
	case when @sortBy = 'Job_Title_Description' and @orderBy = 'ASC' then [Job_Title_Description] end ASC,
	case when @sortBy = 'Job_Title_Description' and @orderBy = 'DESC' then [Job_Title_Description] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[RegJobTitle_UPDATE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RegJobTitle_UPDATE]
(
@jobTitleCode uniqueidentifier = null,
@jobTitleDescription varchar(150) = null
)
AS

UPDATE
  [dbo].[Reg_Job_Title]
SET
  [Job_Title_Code] = @jobTitleCode,
  [Job_Title_Description] = @jobTitleDescription
WHERE
  [Job_Title_Code] = @jobTitleCode


GO
/****** Object:  StoredProcedure [dbo].[SchoolOffice_CUSTOM]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SchoolOffice_CUSTOM]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20),
 @searchstring varchar(20)
)
AS

BEGIN

  SELECT m.* , 

  TotalRecord = COUNT(*) OVER()
  FROM [dbo].[SchoolOffice] as m


WHERE
  ( @searchstring IS NULL OR @searchstring = '' OR [Name] LIKE @searchstring +'%')

ORDER BY 

	case when @sortBy = 'Office_Id' and @orderBy = 'ASC' then [Office_Id] end ASC,
	case when @sortBy = 'Office_Id' and @orderBy = 'DESC' then [Office_Id] end DESC,
	case when @sortBy = 'Address_ID' and @orderBy = 'ASC' then [Address_ID] end ASC,
	case when @sortBy = 'Address_ID' and @orderBy = 'DESC' then [Address_ID] end DESC,
	case when @sortBy = 'Name' and @orderBy = 'ASC' then [Name] end ASC,
	case when @sortBy = 'Name' and @orderBy = 'DESC' then [Name] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[SchoolOffice_DELETE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SchoolOffice_DELETE]
(
@officeId uniqueidentifier
)
AS

DELETE
  [dbo].[SchoolOffice]
WHERE
  [Office_Id] = @officeId


GO
/****** Object:  StoredProcedure [dbo].[SchoolOffice_INSERT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SchoolOffice_INSERT]
(
@officeId AS uniqueidentifier = null,
@addressID AS uniqueidentifier = null,
@name AS varchar(150) = null
)
AS

INSERT INTO
  [dbo].[SchoolOffice]
(
  [Office_Id],
  [Address_ID],
  [Name]
)
VALUES
(
  @officeId,
  @addressID,
  @name
)

SELECT SCOPE_IDENTITY()


GO
/****** Object:  StoredProcedure [dbo].[SchoolOffice_PAGING]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SchoolOffice_PAGING]
(
 @PageIndex int,
 @PageSize int
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[SchoolOffice] data 


ORDER BY [Office_Id] DESC  

OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[SchoolOffice_SEARCH]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SchoolOffice_SEARCH]
(
@officeId uniqueidentifier = null,
@addressID uniqueidentifier = null,
@name varchar(150) = null
)
AS

SELECT
  *
FROM
  [dbo].[SchoolOffice]
WHERE
  (@officeId IS NULL OR [Office_Id] = @officeId)
AND
  (@addressID IS NULL OR [Address_ID] = @addressID)
AND
  (@name IS NULL OR @name = '' OR [Name] LIKE @name + '%')


GO
/****** Object:  StoredProcedure [dbo].[SchoolOffice_SELECT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SchoolOffice_SELECT]
(
@officeId AS uniqueidentifier
)
AS

SELECT
  *
FROM
  [dbo].[SchoolOffice]
WHERE
  Office_Id = @officeId


GO
/****** Object:  StoredProcedure [dbo].[SchoolOffice_SORT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SchoolOffice_SORT]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20)
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[SchoolOffice] data 


ORDER BY 

	case when @sortBy = 'Office_Id' and @orderBy = 'ASC' then [Office_Id] end ASC,
	case when @sortBy = 'Office_Id' and @orderBy = 'DESC' then [Office_Id] end DESC,
	case when @sortBy = 'Address_ID' and @orderBy = 'ASC' then [Address_ID] end ASC,
	case when @sortBy = 'Address_ID' and @orderBy = 'DESC' then [Address_ID] end DESC,
	case when @sortBy = 'Name' and @orderBy = 'ASC' then [Name] end ASC,
	case when @sortBy = 'Name' and @orderBy = 'DESC' then [Name] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[SchoolOffice_UPDATE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SchoolOffice_UPDATE]
(
@officeId uniqueidentifier = null,
@addressID uniqueidentifier = null,
@name varchar(150) = null
)
AS

UPDATE
  [dbo].[SchoolOffice]
SET
  [Office_Id] = @officeId,
  [Address_ID] = @addressID,
  [Name] = @name
WHERE
  [Office_Id] = @officeId


GO
/****** Object:  StoredProcedure [dbo].[Staff_CUSTOM]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Staff_CUSTOM]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20),
 @searchstring varchar(20)
)
AS

BEGIN

  SELECT m.* , 

  TotalRecord = COUNT(*) OVER()
  FROM [dbo].[Staff] as m


WHERE
  ( @searchstring IS NULL OR @searchstring = '' OR [First_Name] LIKE @searchstring +'%')
OR  ( @searchstring IS NULL OR @searchstring = '' OR [Middle_Name] LIKE @searchstring +'%')
OR  ( @searchstring IS NULL OR @searchstring = '' OR [Last_Name] LIKE @searchstring +'%')

ORDER BY 

	case when @sortBy = 'Staff_Id' and @orderBy = 'ASC' then [Staff_Id] end ASC,
	case when @sortBy = 'Staff_Id' and @orderBy = 'DESC' then [Staff_Id] end DESC,
	case when @sortBy = 'Home_Address_Id' and @orderBy = 'ASC' then [Home_Address_Id] end ASC,
	case when @sortBy = 'Home_Address_Id' and @orderBy = 'DESC' then [Home_Address_Id] end DESC,
	case when @sortBy = 'Office_Id' and @orderBy = 'ASC' then [Office_Id] end ASC,
	case when @sortBy = 'Office_Id' and @orderBy = 'DESC' then [Office_Id] end DESC,
	case when @sortBy = 'First_Name' and @orderBy = 'ASC' then [First_Name] end ASC,
	case when @sortBy = 'First_Name' and @orderBy = 'DESC' then [First_Name] end DESC,
	case when @sortBy = 'Middle_Name' and @orderBy = 'ASC' then [Middle_Name] end ASC,
	case when @sortBy = 'Middle_Name' and @orderBy = 'DESC' then [Middle_Name] end DESC,
	case when @sortBy = 'Last_Name' and @orderBy = 'ASC' then [Last_Name] end ASC,
	case when @sortBy = 'Last_Name' and @orderBy = 'DESC' then [Last_Name] end DESC,
	case when @sortBy = 'Date_Of_Birth' and @orderBy = 'ASC' then [Date_Of_Birth] end ASC,
	case when @sortBy = 'Date_Of_Birth' and @orderBy = 'DESC' then [Date_Of_Birth] end DESC,
	case when @sortBy = 'Date_Joined_Staff' and @orderBy = 'ASC' then [Date_Joined_Staff] end ASC,
	case when @sortBy = 'Date_Joined_Staff' and @orderBy = 'DESC' then [Date_Joined_Staff] end DESC,
	case when @sortBy = 'Date_Left_Staff' and @orderBy = 'ASC' then [Date_Left_Staff] end ASC,
	case when @sortBy = 'Date_Left_Staff' and @orderBy = 'DESC' then [Date_Left_Staff] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[Staff_DELETE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Staff_DELETE]
(
@staffId uniqueidentifier
)
AS

DELETE
  [dbo].[Staff]
WHERE
  [Staff_Id] = @staffId


GO
/****** Object:  StoredProcedure [dbo].[Staff_INSERT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Staff_INSERT]
(
@staffId AS uniqueidentifier = null,
@homeAddressId AS uniqueidentifier = null,
@officeId AS uniqueidentifier = null,
@firstName AS varchar(150) = null,
@middleName AS varchar(150) = null,
@lastName AS varchar(150) = null,
@dateOfBirth AS datetime = null,
@dateJoinedStaff AS datetime = null,
@dateLeftStaff AS datetime = null
)
AS

INSERT INTO
  [dbo].[Staff]
(
  [Staff_Id],
  [Home_Address_Id],
  [Office_Id],
  [First_Name],
  [Middle_Name],
  [Last_Name],
  [Date_Of_Birth],
  [Date_Joined_Staff],
  [Date_Left_Staff]
)
VALUES
(
  @staffId,
  @homeAddressId,
  @officeId,
  @firstName,
  @middleName,
  @lastName,
  @dateOfBirth,
  @dateJoinedStaff,
  @dateLeftStaff
)

SELECT SCOPE_IDENTITY()


GO
/****** Object:  StoredProcedure [dbo].[Staff_PAGING]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Staff_PAGING]
(
 @PageIndex int,
 @PageSize int
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[Staff] data 


ORDER BY [Staff_Id] DESC  

OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[Staff_SEARCH]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Staff_SEARCH]
(
@staffId uniqueidentifier = null,
@homeAddressId uniqueidentifier = null,
@officeId uniqueidentifier = null,
@firstName varchar(150) = null,
@middleName varchar(150) = null,
@lastName varchar(150) = null,
@dateOfBirth datetime = null,
@dateJoinedStaff datetime = null,
@dateLeftStaff datetime = null
)
AS

SELECT
  *
FROM
  [dbo].[Staff]
WHERE
  (@staffId IS NULL OR [Staff_Id] = @staffId)
AND
  (@homeAddressId IS NULL OR [Home_Address_Id] = @homeAddressId)
AND
  (@officeId IS NULL OR [Office_Id] = @officeId)
AND
  (@firstName IS NULL OR @firstName = '' OR [First_Name] LIKE @firstName + '%')
AND
  (@middleName IS NULL OR @middleName = '' OR [Middle_Name] LIKE @middleName + '%')
AND
  (@lastName IS NULL OR @lastName = '' OR [Last_Name] LIKE @lastName + '%')
AND
  (@dateOfBirth IS NULL OR [Date_Of_Birth] = @dateOfBirth)
AND
  (@dateJoinedStaff IS NULL OR [Date_Joined_Staff] = @dateJoinedStaff)
AND
  (@dateLeftStaff IS NULL OR [Date_Left_Staff] = @dateLeftStaff)


GO
/****** Object:  StoredProcedure [dbo].[Staff_SELECT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Staff_SELECT]
(
@staffId AS uniqueidentifier
)
AS

SELECT
  *
FROM
  [dbo].[Staff]
WHERE
  Staff_Id = @staffId


GO
/****** Object:  StoredProcedure [dbo].[Staff_SORT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Staff_SORT]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20)
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[Staff] data 


ORDER BY 

	case when @sortBy = 'Staff_Id' and @orderBy = 'ASC' then [Staff_Id] end ASC,
	case when @sortBy = 'Staff_Id' and @orderBy = 'DESC' then [Staff_Id] end DESC,
	case when @sortBy = 'Home_Address_Id' and @orderBy = 'ASC' then [Home_Address_Id] end ASC,
	case when @sortBy = 'Home_Address_Id' and @orderBy = 'DESC' then [Home_Address_Id] end DESC,
	case when @sortBy = 'Office_Id' and @orderBy = 'ASC' then [Office_Id] end ASC,
	case when @sortBy = 'Office_Id' and @orderBy = 'DESC' then [Office_Id] end DESC,
	case when @sortBy = 'First_Name' and @orderBy = 'ASC' then [First_Name] end ASC,
	case when @sortBy = 'First_Name' and @orderBy = 'DESC' then [First_Name] end DESC,
	case when @sortBy = 'Middle_Name' and @orderBy = 'ASC' then [Middle_Name] end ASC,
	case when @sortBy = 'Middle_Name' and @orderBy = 'DESC' then [Middle_Name] end DESC,
	case when @sortBy = 'Last_Name' and @orderBy = 'ASC' then [Last_Name] end ASC,
	case when @sortBy = 'Last_Name' and @orderBy = 'DESC' then [Last_Name] end DESC,
	case when @sortBy = 'Date_Of_Birth' and @orderBy = 'ASC' then [Date_Of_Birth] end ASC,
	case when @sortBy = 'Date_Of_Birth' and @orderBy = 'DESC' then [Date_Of_Birth] end DESC,
	case when @sortBy = 'Date_Joined_Staff' and @orderBy = 'ASC' then [Date_Joined_Staff] end ASC,
	case when @sortBy = 'Date_Joined_Staff' and @orderBy = 'DESC' then [Date_Joined_Staff] end DESC,
	case when @sortBy = 'Date_Left_Staff' and @orderBy = 'ASC' then [Date_Left_Staff] end ASC,
	case when @sortBy = 'Date_Left_Staff' and @orderBy = 'DESC' then [Date_Left_Staff] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[Staff_UPDATE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Staff_UPDATE]
(
@staffId uniqueidentifier = null,
@homeAddressId uniqueidentifier = null,
@officeId uniqueidentifier = null,
@firstName varchar(150) = null,
@middleName varchar(150) = null,
@lastName varchar(150) = null,
@dateOfBirth datetime = null,
@dateJoinedStaff datetime = null,
@dateLeftStaff datetime = null
)
AS

UPDATE
  [dbo].[Staff]
SET
  [Staff_Id] = @staffId,
  [Home_Address_Id] = @homeAddressId,
  [Office_Id] = @officeId,
  [First_Name] = @firstName,
  [Middle_Name] = @middleName,
  [Last_Name] = @lastName,
  [Date_Of_Birth] = @dateOfBirth,
  [Date_Joined_Staff] = @dateJoinedStaff,
  [Date_Left_Staff] = @dateLeftStaff
WHERE
  [Staff_Id] = @staffId


GO
/****** Object:  StoredProcedure [dbo].[Vehicle_CUSTOM]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Vehicle_CUSTOM]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20),
 @searchstring varchar(20)
)
AS

BEGIN

  SELECT m.* , 

  TotalRecord = COUNT(*) OVER()
  FROM [dbo].[Vehicle] as m


WHERE
  ( @searchstring IS NULL OR @searchstring = '' OR [Make] LIKE @searchstring +'%')
OR  ( @searchstring IS NULL OR @searchstring = '' OR [Model] LIKE @searchstring +'%')
OR  ( @searchstring IS NULL OR @searchstring = '' OR [Color] LIKE @searchstring +'%')

ORDER BY 

	case when @sortBy = 'Vehicle_Reg_Number' and @orderBy = 'ASC' then [Vehicle_Reg_Number] end ASC,
	case when @sortBy = 'Vehicle_Reg_Number' and @orderBy = 'DESC' then [Vehicle_Reg_Number] end DESC,
	case when @sortBy = 'Office_Id' and @orderBy = 'ASC' then [Office_Id] end ASC,
	case when @sortBy = 'Office_Id' and @orderBy = 'DESC' then [Office_Id] end DESC,
	case when @sortBy = 'Make' and @orderBy = 'ASC' then [Make] end ASC,
	case when @sortBy = 'Make' and @orderBy = 'DESC' then [Make] end DESC,
	case when @sortBy = 'Model' and @orderBy = 'ASC' then [Model] end ASC,
	case when @sortBy = 'Model' and @orderBy = 'DESC' then [Model] end DESC,
	case when @sortBy = 'Year' and @orderBy = 'ASC' then [Year] end ASC,
	case when @sortBy = 'Year' and @orderBy = 'DESC' then [Year] end DESC,
	case when @sortBy = 'Color' and @orderBy = 'ASC' then [Color] end ASC,
	case when @sortBy = 'Color' and @orderBy = 'DESC' then [Color] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[Vehicle_DELETE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Vehicle_DELETE]
(
@vehicleRegNumber uniqueidentifier
)
AS

DELETE
  [dbo].[Vehicle]
WHERE
  [Vehicle_Reg_Number] = @vehicleRegNumber


GO
/****** Object:  StoredProcedure [dbo].[Vehicle_INSERT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Vehicle_INSERT]
(
@vehicleRegNumber AS uniqueidentifier = null,
@officeId AS uniqueidentifier = null,
@make AS varchar(50) = null,
@model AS varchar(50) = null,
@year AS decimal = null,
@color AS varchar(50) = null
)
AS

INSERT INTO
  [dbo].[Vehicle]
(
  [Vehicle_Reg_Number],
  [Office_Id],
  [Make],
  [Model],
  [Year],
  [Color]
)
VALUES
(
  @vehicleRegNumber,
  @officeId,
  @make,
  @model,
  @year,
  @color
)

SELECT SCOPE_IDENTITY()


GO
/****** Object:  StoredProcedure [dbo].[Vehicle_PAGING]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Vehicle_PAGING]
(
 @PageIndex int,
 @PageSize int
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[Vehicle] data 


ORDER BY [Vehicle_Reg_Number] DESC  

OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[Vehicle_SEARCH]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Vehicle_SEARCH]
(
@vehicleRegNumber uniqueidentifier = null,
@officeId uniqueidentifier = null,
@make varchar(50) = null,
@model varchar(50) = null,
@year decimal = null,
@color varchar(50) = null
)
AS

SELECT
  *
FROM
  [dbo].[Vehicle]
WHERE
  (@vehicleRegNumber IS NULL OR [Vehicle_Reg_Number] = @vehicleRegNumber)
AND
  (@officeId IS NULL OR [Office_Id] = @officeId)
AND
  (@make IS NULL OR @make = '' OR [Make] LIKE @make + '%')
AND
  (@model IS NULL OR @model = '' OR [Model] LIKE @model + '%')
AND
  (@year IS NULL OR [Year] = @year)
AND
  (@color IS NULL OR @color = '' OR [Color] LIKE @color + '%')


GO
/****** Object:  StoredProcedure [dbo].[Vehicle_SELECT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Vehicle_SELECT]
(
@vehicleRegNumber AS uniqueidentifier
)
AS

SELECT
  *
FROM
  [dbo].[Vehicle]
WHERE
  Vehicle_Reg_Number = @vehicleRegNumber


GO
/****** Object:  StoredProcedure [dbo].[Vehicle_SORT]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Vehicle_SORT]
(
 @PageIndex int,
 @PageSize int,
 @sortBy varchar(20),
 @orderBy varchar(20)
)
AS

BEGIN

  SELECT data.* , 
  TotalRecord = COUNT(*) OVER()  
  FROM [dbo].[Vehicle] data 


ORDER BY 

	case when @sortBy = 'Vehicle_Reg_Number' and @orderBy = 'ASC' then [Vehicle_Reg_Number] end ASC,
	case when @sortBy = 'Vehicle_Reg_Number' and @orderBy = 'DESC' then [Vehicle_Reg_Number] end DESC,
	case when @sortBy = 'Office_Id' and @orderBy = 'ASC' then [Office_Id] end ASC,
	case when @sortBy = 'Office_Id' and @orderBy = 'DESC' then [Office_Id] end DESC,
	case when @sortBy = 'Make' and @orderBy = 'ASC' then [Make] end ASC,
	case when @sortBy = 'Make' and @orderBy = 'DESC' then [Make] end DESC,
	case when @sortBy = 'Model' and @orderBy = 'ASC' then [Model] end ASC,
	case when @sortBy = 'Model' and @orderBy = 'DESC' then [Model] end DESC,
	case when @sortBy = 'Year' and @orderBy = 'ASC' then [Year] end ASC,
	case when @sortBy = 'Year' and @orderBy = 'DESC' then [Year] end DESC,
	case when @sortBy = 'Color' and @orderBy = 'ASC' then [Color] end ASC,
	case when @sortBy = 'Color' and @orderBy = 'DESC' then [Color] end DESC



OFFSET ((@PageIndex-1) *@PageSize)  ROWS FETCH NEXT @PageSize ROWS ONLY
END


GO
/****** Object:  StoredProcedure [dbo].[Vehicle_UPDATE]    Script Date: 19/11/2022 08:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Vehicle_UPDATE]
(
@vehicleRegNumber uniqueidentifier = null,
@officeId uniqueidentifier = null,
@make varchar(50) = null,
@model varchar(50) = null,
@year decimal = null,
@color varchar(50) = null
)
AS

UPDATE
  [dbo].[Vehicle]
SET
  [Vehicle_Reg_Number] = @vehicleRegNumber,
  [Office_Id] = @officeId,
  [Make] = @make,
  [Model] = @model,
  [Year] = @year,
  [Color] = @color
WHERE
  [Vehicle_Reg_Number] = @vehicleRegNumber


GO
