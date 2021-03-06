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

INSERT [dbo].[lehrgang] ([lehrgangs_id], [beginn], [ende], [standort_id], [name]) VALUES (9, CAST(N'2017-10-26' AS Date), CAST(N'2018-04-24' AS Date), 3, N'Projektbezogener Management-Lehrgang (Projektmanagementfachmann Level D) ')
INSERT [dbo].[lehrgang] ([lehrgangs_id], [beginn], [ende], [standort_id], [name]) VALUES (11, CAST(N'2017-11-09' AS Date), CAST(N'2018-05-16' AS Date), 3, N'MCSA/MCSE Windows Server Administrator')
INSERT [dbo].[lehrgang] ([lehrgangs_id], [beginn], [ende], [standort_id], [name]) VALUES (14, CAST(N'2017-11-14' AS Date), CAST(N'2019-11-13' AS Date), 3, N'Fachinformatiker IHK (Umschulung) Systemintegration oder Anwendungsentwicklung')
INSERT [dbo].[lehrgang] ([lehrgangs_id], [beginn], [ende], [standort_id], [name]) VALUES (15, CAST(N'2017-11-23' AS Date), CAST(N'2018-06-07' AS Date), 3, N'Projektmanagement Digitale Transformation und Arbeit 4.0')
INSERT [dbo].[lehrgang] ([lehrgangs_id], [beginn], [ende], [standort_id], [name]) VALUES (16, CAST(N'2017-11-14' AS Date), CAST(N'2019-11-13' AS Date), 4, N'Fachinformatiker IHK (Umschulung) Systemintegration oder Anwendungsentwicklung ')
SET IDENTITY_INSERT [dbo].[lehrgang] OFF
SET IDENTITY_INSERT [dbo].[teilnehmer] ON 

INSERT [dbo].[teilnehmer] ([teilnehmer_id], [vorname], [nachname]) VALUES (1, N'Michael', N'Schuknecht')
INSERT [dbo].[teilnehmer] ([teilnehmer_id], [vorname], [nachname]) VALUES (3, N'Mia', N'Meyer')
INSERT [dbo].[teilnehmer] ([teilnehmer_id], [vorname], [nachname]) VALUES (4, N'Emma', N'Schröder')
INSERT [dbo].[teilnehmer] ([teilnehmer_id], [vorname], [nachname]) VALUES (5, N'Lena', N'Gerdes')
INSERT [dbo].[teilnehmer] ([teilnehmer_id], [vorname], [nachname]) VALUES (6, N'Felix', N'Eilers')
INSERT [dbo].[teilnehmer] ([teilnehmer_id], [vorname], [nachname]) VALUES (7, N'Ella', N'Lange')
INSERT [dbo].[teilnehmer] ([teilnehmer_id], [vorname], [nachname]) VALUES (8, N'Nils', N'Menke')
INSERT [dbo].[teilnehmer] ([teilnehmer_id], [vorname], [nachname]) VALUES (9, N'Mina', N'Harms')
INSERT [dbo].[teilnehmer] ([teilnehmer_id], [vorname], [nachname]) VALUES (10, N'Olivia', N'Becker')
INSERT [dbo].[teilnehmer] ([teilnehmer_id], [vorname], [nachname]) VALUES (11, N'Thea', N'Kramer')
INSERT [dbo].[teilnehmer] ([teilnehmer_id], [vorname], [nachname]) VALUES (12, N'Ina', N'Jansen')
SET IDENTITY_INSERT [dbo].[teilnehmer] OFF
SET IDENTITY_INSERT [dbo].[trainer] ON 

INSERT [dbo].[trainer] ([trainer_id], [vorname], [nachname]) VALUES (1, N'Franco', N'Hertfelder')
SET IDENTITY_INSERT [dbo].[trainer] OFF
SET IDENTITY_INSERT [dbo].[lehrgangsinhalte] ON 

INSERT [dbo].[lehrgangsinhalte] ([lehrgangsinhalts_id], [lehrgangs_id], [trainer_id], [date]) VALUES (1, 9, 1, CAST(N'2017-12-12' AS Date))
INSERT [dbo].[lehrgangsinhalte] ([lehrgangsinhalts_id], [lehrgangs_id], [trainer_id], [date]) VALUES (2, 11, 1, CAST(N'2017-09-09' AS Date))
INSERT [dbo].[lehrgangsinhalte] ([lehrgangsinhalts_id], [lehrgangs_id], [trainer_id], [date]) VALUES (3, 14, 1, CAST(N'2017-08-08' AS Date))
INSERT [dbo].[lehrgangsinhalte] ([lehrgangsinhalts_id], [lehrgangs_id], [trainer_id], [date]) VALUES (4, 15, 1, CAST(N'2017-04-03' AS Date))
SET IDENTITY_INSERT [dbo].[lehrgangsinhalte] OFF
SET IDENTITY_INSERT [dbo].[themen] ON 

INSERT [dbo].[themen] ([themen_id], [titel], [beschreibung]) VALUES (1, N'C# Web Entwicklung', N'Grundlagen der C# Web Entwicklung')
INSERT [dbo].[themen] ([themen_id], [titel], [beschreibung]) VALUES (2, N'BWL', N'Betriebswirtschaftslehre Grundlagen')
INSERT [dbo].[themen] ([themen_id], [titel], [beschreibung]) VALUES (3, N'Prüfungsvorbereitung', N'Verschiedene Themen')
INSERT [dbo].[themen] ([themen_id], [titel], [beschreibung]) VALUES (4, N'Prüfungsvorbereitung 2', N'Noch mehr verschiedene Themen')
INSERT [dbo].[themen] ([themen_id], [titel], [beschreibung]) VALUES (5, N'Bewerbung', N'Wie schreibe ich eine gute Bewerbung')
SET IDENTITY_INSERT [dbo].[themen] OFF
