/***************************************************************/
/* Code Writer (written by Anish M Mathew )                                 */
/*                                                                          */
/* This file was automatically generated using Code Writer                  */
/* Any manual changes to this file will be overwritten by a automated tool. */
/*                                                                          */
/* Date Generated : 17/11/2022 20:33:10                                      */
/*                                                                          */
/* More Details    --                                                       */
/*http://visualstudiogallery.msdn.microsoft.com/40d92d45-107e-4f83-b6c5-50a7e2419389*/
/****************************************************************************/
/*************************************************/
/* [dbo].Address_INSERT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Address_INSERT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Address_INSERT
GO

CREATE PROCEDURE [dbo].Address_INSERT
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

/*************************************************/
/* [dbo].Address_SELECT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Address_SELECT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Address_SELECT
GO

CREATE PROCEDURE [dbo].Address_SELECT
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

/*************************************************/
/* [dbo].Address_PAGING */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Address_PAGING') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Address_PAGING
GO

CREATE PROCEDURE [dbo].Address_PAGING
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

/*************************************************/
/* [dbo].Address_CUSTOM */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Address_CUSTOM') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Address_CUSTOM
GO

CREATE PROCEDURE [dbo].Address_CUSTOM
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

/*************************************************/
/* [dbo].Address_SORT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Address_SORT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Address_SORT
GO

CREATE PROCEDURE [dbo].Address_SORT
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

/*************************************************/
/* [dbo].Address_UPDATE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Address_UPDATE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Address_UPDATE
GO

CREATE PROCEDURE [dbo].Address_UPDATE
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

/*************************************************/
/* [dbo].Address_DELETE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Address_DELETE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Address_DELETE
GO

CREATE PROCEDURE [dbo].Address_DELETE
(
@addressId uniqueidentifier
)
AS

DELETE
  [dbo].[Address]
WHERE
  [Address_Id] = @addressId

GO

/*************************************************/
/* [dbo].Address_SEARCH */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Address_SEARCH') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Address_SEARCH
GO

CREATE PROCEDURE [dbo].Address_SEARCH
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

/*************************************************/
/* [dbo].Client_INSERT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Client_INSERT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Client_INSERT
GO

CREATE PROCEDURE [dbo].Client_INSERT
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

/*************************************************/
/* [dbo].Client_SELECT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Client_SELECT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Client_SELECT
GO

CREATE PROCEDURE [dbo].Client_SELECT
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

/*************************************************/
/* [dbo].Client_PAGING */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Client_PAGING') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Client_PAGING
GO

CREATE PROCEDURE [dbo].Client_PAGING
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

/*************************************************/
/* [dbo].Client_CUSTOM */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Client_CUSTOM') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Client_CUSTOM
GO

CREATE PROCEDURE [dbo].Client_CUSTOM
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

/*************************************************/
/* [dbo].Client_SORT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Client_SORT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Client_SORT
GO

CREATE PROCEDURE [dbo].Client_SORT
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

/*************************************************/
/* [dbo].Client_UPDATE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Client_UPDATE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Client_UPDATE
GO

CREATE PROCEDURE [dbo].Client_UPDATE
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

/*************************************************/
/* [dbo].Client_DELETE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Client_DELETE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Client_DELETE
GO

CREATE PROCEDURE [dbo].Client_DELETE
(
@clientId uniqueidentifier
)
AS

DELETE
  [dbo].[Client]
WHERE
  [Client_Id] = @clientId

GO

/*************************************************/
/* [dbo].Client_SEARCH */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Client_SEARCH') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Client_SEARCH
GO

CREATE PROCEDURE [dbo].Client_SEARCH
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

/*************************************************/
/* [dbo].ClientPayment_INSERT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].ClientPayment_INSERT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].ClientPayment_INSERT
GO

CREATE PROCEDURE [dbo].ClientPayment_INSERT
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

/*************************************************/
/* [dbo].ClientPayment_SELECT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].ClientPayment_SELECT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].ClientPayment_SELECT
GO

CREATE PROCEDURE [dbo].ClientPayment_SELECT
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

/*************************************************/
/* [dbo].ClientPayment_PAGING */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].ClientPayment_PAGING') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].ClientPayment_PAGING
GO

CREATE PROCEDURE [dbo].ClientPayment_PAGING
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

/*************************************************/
/* [dbo].ClientPayment_CUSTOM */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].ClientPayment_CUSTOM') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].ClientPayment_CUSTOM
GO

CREATE PROCEDURE [dbo].ClientPayment_CUSTOM
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

/*************************************************/
/* [dbo].ClientPayment_SORT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].ClientPayment_SORT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].ClientPayment_SORT
GO

CREATE PROCEDURE [dbo].ClientPayment_SORT
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

/*************************************************/
/* [dbo].ClientPayment_UPDATE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].ClientPayment_UPDATE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].ClientPayment_UPDATE
GO

CREATE PROCEDURE [dbo].ClientPayment_UPDATE
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

/*************************************************/
/* [dbo].ClientPayment_DELETE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].ClientPayment_DELETE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].ClientPayment_DELETE
GO

CREATE PROCEDURE [dbo].ClientPayment_DELETE
(
@paymentId uniqueidentifier
)
AS

DELETE
  [dbo].[Client_Payment]
WHERE
  [Payment_Id] = @paymentId

GO

/*************************************************/
/* [dbo].ClientPayment_SEARCH */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].ClientPayment_SEARCH') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].ClientPayment_SEARCH
GO

CREATE PROCEDURE [dbo].ClientPayment_SEARCH
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

/*************************************************/
/* [dbo].Lesson_INSERT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Lesson_INSERT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Lesson_INSERT
GO

CREATE PROCEDURE [dbo].Lesson_INSERT
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

/*************************************************/
/* [dbo].Lesson_SELECT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Lesson_SELECT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Lesson_SELECT
GO

CREATE PROCEDURE [dbo].Lesson_SELECT
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

/*************************************************/
/* [dbo].Lesson_PAGING */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Lesson_PAGING') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Lesson_PAGING
GO

CREATE PROCEDURE [dbo].Lesson_PAGING
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

/*************************************************/
/* [dbo].Lesson_CUSTOM */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Lesson_CUSTOM') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Lesson_CUSTOM
GO

CREATE PROCEDURE [dbo].Lesson_CUSTOM
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

/*************************************************/
/* [dbo].Lesson_SORT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Lesson_SORT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Lesson_SORT
GO

CREATE PROCEDURE [dbo].Lesson_SORT
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

/*************************************************/
/* [dbo].Lesson_UPDATE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Lesson_UPDATE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Lesson_UPDATE
GO

CREATE PROCEDURE [dbo].Lesson_UPDATE
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

/*************************************************/
/* [dbo].Lesson_DELETE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Lesson_DELETE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Lesson_DELETE
GO

CREATE PROCEDURE [dbo].Lesson_DELETE
(
@lessonId uniqueidentifier
)
AS

DELETE
  [dbo].[Lesson]
WHERE
  [Lesson_Id] = @lessonId

GO

/*************************************************/
/* [dbo].Lesson_SEARCH */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Lesson_SEARCH') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Lesson_SEARCH
GO

CREATE PROCEDURE [dbo].Lesson_SEARCH
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

/*************************************************/
/* [dbo].RefLessonStatus_INSERT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RefLessonStatus_INSERT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RefLessonStatus_INSERT
GO

CREATE PROCEDURE [dbo].RefLessonStatus_INSERT
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

/*************************************************/
/* [dbo].RefLessonStatus_SELECT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RefLessonStatus_SELECT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RefLessonStatus_SELECT
GO

CREATE PROCEDURE [dbo].RefLessonStatus_SELECT
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

/*************************************************/
/* [dbo].RefLessonStatus_PAGING */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RefLessonStatus_PAGING') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RefLessonStatus_PAGING
GO

CREATE PROCEDURE [dbo].RefLessonStatus_PAGING
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

/*************************************************/
/* [dbo].RefLessonStatus_CUSTOM */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RefLessonStatus_CUSTOM') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RefLessonStatus_CUSTOM
GO

CREATE PROCEDURE [dbo].RefLessonStatus_CUSTOM
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

/*************************************************/
/* [dbo].RefLessonStatus_SORT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RefLessonStatus_SORT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RefLessonStatus_SORT
GO

CREATE PROCEDURE [dbo].RefLessonStatus_SORT
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

/*************************************************/
/* [dbo].RefLessonStatus_UPDATE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RefLessonStatus_UPDATE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RefLessonStatus_UPDATE
GO

CREATE PROCEDURE [dbo].RefLessonStatus_UPDATE
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

/*************************************************/
/* [dbo].RefLessonStatus_DELETE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RefLessonStatus_DELETE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RefLessonStatus_DELETE
GO

CREATE PROCEDURE [dbo].RefLessonStatus_DELETE
(
@lessonStatusCode uniqueidentifier
)
AS

DELETE
  [dbo].[Ref_Lesson_Status]
WHERE
  [Lesson_Status_Code] = @lessonStatusCode

GO

/*************************************************/
/* [dbo].RefLessonStatus_SEARCH */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RefLessonStatus_SEARCH') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RefLessonStatus_SEARCH
GO

CREATE PROCEDURE [dbo].RefLessonStatus_SEARCH
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

/*************************************************/
/* [dbo].RefPaymentMethod_INSERT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RefPaymentMethod_INSERT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RefPaymentMethod_INSERT
GO

CREATE PROCEDURE [dbo].RefPaymentMethod_INSERT
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

/*************************************************/
/* [dbo].RefPaymentMethod_SELECT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RefPaymentMethod_SELECT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RefPaymentMethod_SELECT
GO

CREATE PROCEDURE [dbo].RefPaymentMethod_SELECT
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

/*************************************************/
/* [dbo].RefPaymentMethod_PAGING */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RefPaymentMethod_PAGING') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RefPaymentMethod_PAGING
GO

CREATE PROCEDURE [dbo].RefPaymentMethod_PAGING
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

/*************************************************/
/* [dbo].RefPaymentMethod_CUSTOM */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RefPaymentMethod_CUSTOM') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RefPaymentMethod_CUSTOM
GO

CREATE PROCEDURE [dbo].RefPaymentMethod_CUSTOM
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

/*************************************************/
/* [dbo].RefPaymentMethod_SORT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RefPaymentMethod_SORT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RefPaymentMethod_SORT
GO

CREATE PROCEDURE [dbo].RefPaymentMethod_SORT
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

/*************************************************/
/* [dbo].RefPaymentMethod_UPDATE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RefPaymentMethod_UPDATE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RefPaymentMethod_UPDATE
GO

CREATE PROCEDURE [dbo].RefPaymentMethod_UPDATE
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

/*************************************************/
/* [dbo].RefPaymentMethod_DELETE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RefPaymentMethod_DELETE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RefPaymentMethod_DELETE
GO

CREATE PROCEDURE [dbo].RefPaymentMethod_DELETE
(
@paymentMethodCode int
)
AS

DELETE
  [dbo].[Ref_Payment_Method]
WHERE
  [Payment_Method_Code] = @paymentMethodCode

GO

/*************************************************/
/* [dbo].RefPaymentMethod_SEARCH */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RefPaymentMethod_SEARCH') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RefPaymentMethod_SEARCH
GO

CREATE PROCEDURE [dbo].RefPaymentMethod_SEARCH
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

/*************************************************/
/* [dbo].RegJobTitle_INSERT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RegJobTitle_INSERT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RegJobTitle_INSERT
GO

CREATE PROCEDURE [dbo].RegJobTitle_INSERT
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

/*************************************************/
/* [dbo].RegJobTitle_SELECT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RegJobTitle_SELECT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RegJobTitle_SELECT
GO

CREATE PROCEDURE [dbo].RegJobTitle_SELECT
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

/*************************************************/
/* [dbo].RegJobTitle_PAGING */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RegJobTitle_PAGING') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RegJobTitle_PAGING
GO

CREATE PROCEDURE [dbo].RegJobTitle_PAGING
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

/*************************************************/
/* [dbo].RegJobTitle_CUSTOM */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RegJobTitle_CUSTOM') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RegJobTitle_CUSTOM
GO

CREATE PROCEDURE [dbo].RegJobTitle_CUSTOM
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

/*************************************************/
/* [dbo].RegJobTitle_SORT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RegJobTitle_SORT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RegJobTitle_SORT
GO

CREATE PROCEDURE [dbo].RegJobTitle_SORT
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

/*************************************************/
/* [dbo].RegJobTitle_UPDATE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RegJobTitle_UPDATE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RegJobTitle_UPDATE
GO

CREATE PROCEDURE [dbo].RegJobTitle_UPDATE
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

/*************************************************/
/* [dbo].RegJobTitle_DELETE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RegJobTitle_DELETE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RegJobTitle_DELETE
GO

CREATE PROCEDURE [dbo].RegJobTitle_DELETE
(
@jobTitleCode uniqueidentifier
)
AS

DELETE
  [dbo].[Reg_Job_Title]
WHERE
  [Job_Title_Code] = @jobTitleCode

GO

/*************************************************/
/* [dbo].RegJobTitle_SEARCH */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].RegJobTitle_SEARCH') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].RegJobTitle_SEARCH
GO

CREATE PROCEDURE [dbo].RegJobTitle_SEARCH
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

/*************************************************/
/* [dbo].SchoolOffice_INSERT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].SchoolOffice_INSERT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].SchoolOffice_INSERT
GO

CREATE PROCEDURE [dbo].SchoolOffice_INSERT
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

/*************************************************/
/* [dbo].SchoolOffice_SELECT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].SchoolOffice_SELECT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].SchoolOffice_SELECT
GO

CREATE PROCEDURE [dbo].SchoolOffice_SELECT
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

/*************************************************/
/* [dbo].SchoolOffice_PAGING */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].SchoolOffice_PAGING') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].SchoolOffice_PAGING
GO

CREATE PROCEDURE [dbo].SchoolOffice_PAGING
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

/*************************************************/
/* [dbo].SchoolOffice_CUSTOM */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].SchoolOffice_CUSTOM') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].SchoolOffice_CUSTOM
GO

CREATE PROCEDURE [dbo].SchoolOffice_CUSTOM
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

/*************************************************/
/* [dbo].SchoolOffice_SORT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].SchoolOffice_SORT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].SchoolOffice_SORT
GO

CREATE PROCEDURE [dbo].SchoolOffice_SORT
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

/*************************************************/
/* [dbo].SchoolOffice_UPDATE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].SchoolOffice_UPDATE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].SchoolOffice_UPDATE
GO

CREATE PROCEDURE [dbo].SchoolOffice_UPDATE
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

/*************************************************/
/* [dbo].SchoolOffice_DELETE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].SchoolOffice_DELETE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].SchoolOffice_DELETE
GO

CREATE PROCEDURE [dbo].SchoolOffice_DELETE
(
@officeId uniqueidentifier
)
AS

DELETE
  [dbo].[SchoolOffice]
WHERE
  [Office_Id] = @officeId

GO

/*************************************************/
/* [dbo].SchoolOffice_SEARCH */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].SchoolOffice_SEARCH') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].SchoolOffice_SEARCH
GO

CREATE PROCEDURE [dbo].SchoolOffice_SEARCH
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

/*************************************************/
/* [dbo].Staff_INSERT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Staff_INSERT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Staff_INSERT
GO

CREATE PROCEDURE [dbo].Staff_INSERT
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

/*************************************************/
/* [dbo].Staff_SELECT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Staff_SELECT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Staff_SELECT
GO

CREATE PROCEDURE [dbo].Staff_SELECT
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

/*************************************************/
/* [dbo].Staff_PAGING */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Staff_PAGING') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Staff_PAGING
GO

CREATE PROCEDURE [dbo].Staff_PAGING
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

/*************************************************/
/* [dbo].Staff_CUSTOM */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Staff_CUSTOM') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Staff_CUSTOM
GO

CREATE PROCEDURE [dbo].Staff_CUSTOM
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

/*************************************************/
/* [dbo].Staff_SORT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Staff_SORT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Staff_SORT
GO

CREATE PROCEDURE [dbo].Staff_SORT
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

/*************************************************/
/* [dbo].Staff_UPDATE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Staff_UPDATE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Staff_UPDATE
GO

CREATE PROCEDURE [dbo].Staff_UPDATE
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

/*************************************************/
/* [dbo].Staff_DELETE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Staff_DELETE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Staff_DELETE
GO

CREATE PROCEDURE [dbo].Staff_DELETE
(
@staffId uniqueidentifier
)
AS

DELETE
  [dbo].[Staff]
WHERE
  [Staff_Id] = @staffId

GO

/*************************************************/
/* [dbo].Staff_SEARCH */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Staff_SEARCH') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Staff_SEARCH
GO

CREATE PROCEDURE [dbo].Staff_SEARCH
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

/*************************************************/
/* [dbo].Vehicle_INSERT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Vehicle_INSERT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Vehicle_INSERT
GO

CREATE PROCEDURE [dbo].Vehicle_INSERT
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

/*************************************************/
/* [dbo].Vehicle_SELECT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Vehicle_SELECT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Vehicle_SELECT
GO

CREATE PROCEDURE [dbo].Vehicle_SELECT
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

/*************************************************/
/* [dbo].Vehicle_PAGING */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Vehicle_PAGING') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Vehicle_PAGING
GO

CREATE PROCEDURE [dbo].Vehicle_PAGING
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

/*************************************************/
/* [dbo].Vehicle_CUSTOM */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Vehicle_CUSTOM') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Vehicle_CUSTOM
GO

CREATE PROCEDURE [dbo].Vehicle_CUSTOM
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

/*************************************************/
/* [dbo].Vehicle_SORT */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Vehicle_SORT') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Vehicle_SORT
GO

CREATE PROCEDURE [dbo].Vehicle_SORT
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

/*************************************************/
/* [dbo].Vehicle_UPDATE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Vehicle_UPDATE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Vehicle_UPDATE
GO

CREATE PROCEDURE [dbo].Vehicle_UPDATE
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

/*************************************************/
/* [dbo].Vehicle_DELETE */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Vehicle_DELETE') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Vehicle_DELETE
GO

CREATE PROCEDURE [dbo].Vehicle_DELETE
(
@vehicleRegNumber uniqueidentifier
)
AS

DELETE
  [dbo].[Vehicle]
WHERE
  [Vehicle_Reg_Number] = @vehicleRegNumber

GO

/*************************************************/
/* [dbo].Vehicle_SEARCH */
/*************************************************/

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].Vehicle_SEARCH') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].Vehicle_SEARCH
GO

CREATE PROCEDURE [dbo].Vehicle_SEARCH
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

