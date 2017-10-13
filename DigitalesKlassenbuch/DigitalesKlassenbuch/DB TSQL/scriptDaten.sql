/*    ==Skriptparameter==

    Quellserverversion : SQL Server 2016 (13.0.4001)
    Edition des Quelldatenbankmoduls : Microsoft SQL Server Enterprise Edition
    Typ des Quelldatenbankmoduls : Eigenständige SQL Server-Instanz

    Zielserverversion : SQL Server 2017
    Edition des Zieldatenbankmoduls : Microsoft SQL Server Standard Edition
    Typ des Zieldatenbankmoduls : Eigenständige SQL Server-Instanz
*/
USE [classlog]
GO
SET IDENTITY_INSERT [dbo].[standorte] ON 

INSERT [dbo].[standorte] ([standort_id], [straße], [ort], [plz]) VALUES (3, N'Edgar-von-Gierke-Str. 3', N'Karlsruhe', N'76135')
INSERT [dbo].[standorte] ([standort_id], [straße], [ort], [plz]) VALUES (4, N'Gutenbergstr. 11', N'Stuttgart', N'70771')
INSERT [dbo].[standorte] ([standort_id], [straße], [ort], [plz]) VALUES (5, N'Weipertstraße 8 - 10', N'Heibronn', N'74076')
INSERT [dbo].[standorte] ([standort_id], [straße], [ort], [plz]) VALUES (6, N'Frankenstraße 160', N'Nürnberg', N'90461')
SET IDENTITY_INSERT [dbo].[standorte] OFF
SET IDENTITY_INSERT [dbo].[lehrgang] ON 

INSERT [dbo].[lehrgang] ([lehrgangs_id], [name], [beginn], [ende], [standort_id]) VALUES (9, N'asdsad', CAST(N'2018-12-12' AS Date), CAST(N'2018-12-12' AS Date), 3)
SET IDENTITY_INSERT [dbo].[lehrgang] OFF
