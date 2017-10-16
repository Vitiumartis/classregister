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

INSERT [dbo].[lehrgang] ([lehrgangs_id], [beginn], [ende], [standort_id], [name]) VALUES (9, CAST(N'2017-10-26' AS Date), CAST(N'2018-04-24' AS Date), 3, N'
Projektbezogener Management-Lehrgang (Projektmanagementfachmann Level D) ')
INSERT [dbo].[lehrgang] ([lehrgangs_id], [beginn], [ende], [standort_id], [name]) VALUES (11, CAST(N'2017-11-09' AS Date), CAST(N'2018-05-16' AS Date), 3, N'MCSA/MCSE Windows Server Administrator')
INSERT [dbo].[lehrgang] ([lehrgangs_id], [beginn], [ende], [standort_id], [name]) VALUES (14, CAST(N'2017-11-14' AS Date), CAST(N'2019-11-13' AS Date), 3, N'Fachinformatiker IHK (Umschulung) Systemintegration oder Anwendungsentwicklung')
INSERT [dbo].[lehrgang] ([lehrgangs_id], [beginn], [ende], [standort_id], [name]) VALUES (15, CAST(N'2017-11-23' AS Date), CAST(N'2018-06-07' AS Date), 3, N'
Projektmanagement Digitale Transformation und Arbeit 4.0')
INSERT [dbo].[lehrgang] ([lehrgangs_id], [beginn], [ende], [standort_id], [name]) VALUES (16, CAST(N'2017-11-14' AS Date), CAST(N'2019-11-13' AS Date), 4, N'
Fachinformatiker IHK (Umschulung) Systemintegration oder Anwendungsentwicklung ')
SET IDENTITY_INSERT [dbo].[lehrgang] OFF
SET IDENTITY_INSERT [dbo].[teilnehmer] ON 

INSERT [dbo].[teilnehmer] ([teilnehmer_id], [vorename], [nachname]) VALUES (1, N'Michael', N'Schuknecht')
SET IDENTITY_INSERT [dbo].[teilnehmer] OFF
SET IDENTITY_INSERT [dbo].[trainer] ON 

INSERT [dbo].[trainer] ([trainer_id], [vorname], [nachname]) VALUES (1, N'Franco', N'Hertfelder')
SET IDENTITY_INSERT [dbo].[trainer] OFF
