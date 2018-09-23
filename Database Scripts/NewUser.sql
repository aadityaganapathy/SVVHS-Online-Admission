USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [DataDevUser]    Script Date: 4/9/2016 2:02:22 AM ******/
CREATE LOGIN [DataDevUser] WITH PASSWORD=N'uÝTÿÏÙXÇnúmí1ÿGO

ALTER LOGIN [DataDevUser] DISABLE
GO

ALTER SERVER ROLE [sysadmin] ADD MEMBER [DataDevUser]
GO

ALTER SERVER ROLE [securityadmin] ADD MEMBER [DataDevUser]
GO

ALTER SERVER ROLE [serveradmin] ADD MEMBER [DataDevUser]
GO

ALTER SERVER ROLE [setupadmin] ADD MEMBER [DataDevUser]
GO

ALTER SERVER ROLE [processadmin] ADD MEMBER [DataDevUser]
GO

ALTER SERVER ROLE [diskadmin] ADD MEMBER [DataDevUser]
GO

ALTER SERVER ROLE [dbcreator] ADD MEMBER [DataDevUser]
GO

ALTER SERVER ROLE [bulkadmin] ADD MEMBER [DataDevUser]
GO


Ç¹jþö0cgðd¼rð', DEFAULT_DATABASE=[OnlineAdmission], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
