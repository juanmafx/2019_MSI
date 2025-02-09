USE [PurpleArtDB]
GO
/****** Object:  Table [dbo].[Artistas]    Script Date: 29/10/2019 09:59:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artistas](
	[id_artista] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[fecha_nac] [varchar](50) NULL,
	[detalle] [varchar](50) NULL,
	[id_localidad] [int] NULL,
 CONSTRAINT [PK_Artistas] PRIMARY KEY CLUSTERED 
(
	[id_artista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepositosLocker]    Script Date: 29/10/2019 09:59:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepositosLocker](
	[id_deposito] [int] IDENTITY(1,1) NOT NULL,
	[id_ubicacion] [int] NULL,
 CONSTRAINT [PK_DepositosLocker] PRIMARY KEY CLUSTERED 
(
	[id_deposito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estilos]    Script Date: 29/10/2019 09:59:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estilos](
	[id_estilo] [int] NOT NULL,
	[nombreEstilo] [varchar](50) NULL,
 CONSTRAINT [PK_Estilos] PRIMARY KEY CLUSTERED 
(
	[id_estilo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidades]    Script Date: 29/10/2019 09:59:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidades](
	[id_localidad] [int] IDENTITY(1,1) NOT NULL,
	[nombre_localidad] [varchar](50) NULL,
	[id_provincia] [int] NULL,
 CONSTRAINT [PK_Localidades] PRIMARY KEY CLUSTERED 
(
	[id_localidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lockers]    Script Date: 29/10/2019 09:59:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lockers](
	[id_locker] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[id_obra] [int] NULL,
	[dimension] [varchar](50) NULL,
	[id_deposito] [int] NULL,
	[fecha_ingreso] [varchar](50) NULL,
	[fecha_egreso] [varchar](50) NULL,
 CONSTRAINT [PK_Lockers] PRIMARY KEY CLUSTERED 
(
	[id_locker] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Obras]    Script Date: 29/10/2019 09:59:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Obras](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[id_estilo] [int] NULL,
	[id_tipo_obra] [int] NULL,
	[id_artista] [int] NULL,
	[descripcion] [varchar](50) NULL,
	[dimension] [varchar](50) NULL,
	[valuacion] [real] NULL,
	[estado_obra] [varchar](50) NULL,
	[disponible] [bit] NULL,
	[fecha_creacion] [varchar](50) NULL,
 CONSTRAINT [PK_Obras] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 29/10/2019 09:59:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[id_pais] [int] IDENTITY(1,1) NOT NULL,
	[nombre_pais] [varchar](50) NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[id_pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 29/10/2019 09:59:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[id_provincia] [int] IDENTITY(1,1) NOT NULL,
	[nombre_provincia] [varchar](50) NULL,
	[id_pais] [int] NULL,
 CONSTRAINT [PK_Provincias] PRIMARY KEY CLUSTERED 
(
	[id_provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposObra]    Script Date: 29/10/2019 09:59:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposObra](
	[id_tipo] [int] NOT NULL,
	[nombre_tipo] [varchar](50) NULL,
 CONSTRAINT [PK_TiposObra] PRIMARY KEY CLUSTERED 
(
	[id_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ubicaciones]    Script Date: 29/10/2019 09:59:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ubicaciones](
	[id_ubicacion] [int] IDENTITY(1,1) NOT NULL,
	[id_localidad] [int] NULL,
	[calle] [varchar](50) NULL,
	[numero] [int] NULL,
	[piso] [int] NULL,
	[dpto] [varchar](50) NULL,
	[torre] [varchar](50) NULL,
 CONSTRAINT [PK_Ubicaciones] PRIMARY KEY CLUSTERED 
(
	[id_ubicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Artistas] ON 

INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (1, N'Carlos ', N'Alonso', N'4/2/1929 ', NULL, 1)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (2, N'Liberty', N'Dickson', N'17/04/1960', N'elit fermentum risus, at fringilla', 8)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (3, N'Guy', N'Gilliam', N'11/05/1954', N'egestas, urna justo faucibus lectus,', 2)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (4, N'Stewart', N'Sandoval', N'22/09/1985', N'at arcu. Vestibulum ante ipsum', 3)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (5, N'Eaton', N'Le', N'01/04/1998', N'lobortis risus. In mi pede,', 2)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (6, N'Rama', N'Massey', N'10/10/1978', N'pharetra. Nam ac nulla. In', 6)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (7, N'Sybill', N'Hendrix', N'11/09/1990', N'neque non quam. Pellentesque habitant', 10)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (8, N'Imani', N'Cook', N'26/04/1972', N'imperdiet nec, leo. Morbi neque', 10)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (9, N'Haviva', N'Aguirre', N'07/07/1991', N'molestie. Sed id risus quis', 9)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (10, N'Ignacia', N'Pearson', N'04/07/1985', N'vestibulum lorem, sit amet ultricies', 8)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (11, N'Andrew', N'Bonner', N'30/09/1942', N'Mauris magna. Duis dignissim tempor', 6)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (12, N'Keely', N'Robbins', N'01/10/1972', N'at, velit. Cras lorem lorem,', 4)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (13, N'Zoe', N'Cox', N'25/04/1991', N'felis orci, adipiscing non, luctus', 12)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (14, N'Iona', N'Montoya', N'08/01/1975', N'Aliquam gravida mauris ut mi.', 5)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (15, N'Edan', N'Rocha', N'25/02/1975', N'scelerisque sed, sapien. Nunc pulvinar', 9)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (16, N'Lester', N'Burgess', N'01/01/1963', N'augue scelerisque mollis. Phasellus libero', 1)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (17, N'Althea', N'Kirby', N'09/03/1972', N'malesuada id, erat. Etiam vestibulum', 13)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (18, N'Perry', N'Gilmore', N'24/02/1979', N'natoque penatibus et magnis dis', 3)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (19, N'Elton', N'Booth', N'26/11/1934', N'ac orci. Ut semper pretium', 9)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (20, N'Mercedes', N'Mccarty', N'16/11/1988', N'nisl arcu iaculis enim, sit', 4)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (21, N'Taylor', N'Mooney', N'06/07/1951', N'adipiscing elit. Aliquam auctor, velit', 14)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (22, N'Ishmael', N'Roth', N'07/05/1999', N'cursus. Nunc mauris elit, dictum', 8)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (23, N'Yuli', N'Santiago', N'19/09/1991', N'augue, eu tempor erat neque', 4)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (24, N'Wayne', N'Atkinson', N'03/08/1935', N'Morbi quis urna. Nunc quis', 1)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (25, N'Jasmine', N'Frye', N'21/11/1992', N'semper, dui lectus rutrum urna,', 1)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (26, N'Chaim', N'Cross', N'15/01/1972', N'sapien. Aenean massa. Integer vitae', 7)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (27, N'Rama', N'Cardenas', N'27/07/1956', N'lacus. Mauris non dui nec', 3)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (28, N'Magee', N'Burris', N'02/10/1989', N'ipsum nunc id enim. Curabitur', 5)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (29, N'Pearl', N'Carrillo', N'29/04/1997', N'diam dictum sapien. Aenean massa.', 1)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (30, N'Hadley', N'Love', N'03/02/1984', N'dictum mi, ac mattis velit', 11)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (31, N'Hedy', N'Mitchell', N'29/01/1980', N'ultrices, mauris ipsum porta elit,', 11)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (32, N'Brian', N'Rodgers', N'27/09/1984', N'lacinia mattis. Integer eu lacus.', 7)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (33, N'Jemima', N'Underwood', N'15/06/1989', N'metus vitae velit egestas lacinia.', 10)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (34, N'Cassandra', N'Pitts', N'11/12/1966', N'montes, nascetur ridiculus mus. Proin', 14)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (35, N'Kiara', N'Rogers', N'14/07/1981', N'sapien. Cras dolor dolor, tempus', 2)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (36, N'Laith', N'Fry', N'20/06/1946', N'fringilla ornare placerat, orci lacus', 8)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (37, N'Hilda', N'Hammond', N'26/10/1967', N'dignissim lacus. Aliquam rutrum lorem', 1)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (38, N'Kessie', N'Gordon', N'13/02/1982', N'dolor dolor, tempus non, lacinia', 1)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (39, N'Stephanie', N'Mathews', N'25/12/1972', N'pretium aliquet, metus urna convallis', 14)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (40, N'Desirae', N'Osborn', N'29/01/2000', N'feugiat nec, diam. Duis mi', 11)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (41, N'Glenna', N'Obrien', N'05/11/1988', N'placerat. Cras dictum ultricies ligula.', 11)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (42, N'Eaton', N'Albert', N'15/08/1961', N'enim. Mauris quis turpis vitae', 14)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (43, N'Halla', N'Gomez', N'23/12/1980', N'convallis dolor. Quisque tincidunt pede', 11)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (44, N'Damian', N'Tran', N'12/04/1937', N'ultricies ornare, elit elit fermentum', 12)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (45, N'Brianna', N'Maddox', N'10/02/1946', N'ut, nulla. Cras eu tellus', 7)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (46, N'Fallon', N'Compton', N'20/10/1981', N'Phasellus nulla. Integer vulputate, risus', 10)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (47, N'Ora', N'Noble', N'16/09/1974', N'turpis egestas. Aliquam fringilla cursus', 1)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (48, N'Elvis', N'Saunders', N'02/07/1934', N'massa. Vestibulum accumsan neque et', 14)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (49, N'Faith', N'Molina', N'25/01/1962', N'magna, malesuada vel, convallis in,', 5)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (50, N'Ramona', N'Compton', N'26/08/1989', N'at pede. Cras vulputate velit', 4)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (51, N'Abra', N'Bell', N'26/03/1985', N'dictum augue malesuada malesuada. Integer', 5)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (52, N'Victoria', N'Harmon', N'28/10/1959', N'Sed malesuada augue ut lacus.', 12)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (53, N'Cadman', N'Simon', N'19/05/1976', N'Pellentesque habitant morbi tristique senectus', 10)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (54, N'Colt', N'Berger', N'03/05/1944', N'est. Mauris eu turpis. Nulla', 5)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (55, N'Eve', N'Sullivan', N'13/08/1933', N'quam. Curabitur vel lectus. Cum', 14)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (56, N'Zenaida', N'Sims', N'15/03/1945', N'Donec tincidunt. Donec vitae erat', 1)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (57, N'Keefe', N'Finley', N'09/11/1948', N'pharetra nibh. Aliquam ornare, libero', 2)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (58, N'Lilah', N'Ayers', N'31/01/1976', N'fringilla cursus purus. Nullam scelerisque', 8)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (59, N'Valentine', N'Caldwell', N'02/10/1990', N'Nullam lobortis quam a felis', 8)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (60, N'Dana', N'Ray', N'17/10/1972', N'ornare sagittis felis. Donec tempor,', 1)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (61, N'Cecilia', N'Howell', N'02/08/1980', N'placerat, orci lacus vestibulum lorem,', 7)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (62, N'Brenna', N'Roberson', N'13/03/1962', N'tortor nibh sit amet orci.', 8)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (63, N'Basil', N'Beasley', N'16/10/1954', N'augue. Sed molestie. Sed id', 10)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (64, N'Hoyt', N'Avery', N'26/06/1992', N'vel, vulputate eu, odio. Phasellus', 8)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (65, N'Renee', N'Barrera', N'09/10/1998', N'Nulla interdum. Curabitur dictum. Phasellus', 14)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (66, N'Brian', N'Aguilar', N'23/12/1985', N'metus. In lorem. Donec elementum,', 8)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (67, N'Malcolm', N'Watts', N'28/02/1999', N'elit, pharetra ut, pharetra sed,', 2)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (68, N'Emerson', N'Gonzalez', N'30/05/1941', N'non, lobortis quis, pede. Suspendisse', 2)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (69, N'Noble', N'Cortez', N'21/01/1992', N'ac mattis ornare, lectus ante', 3)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (70, N'Jasper', N'Peters', N'10/08/1966', N'Integer aliquam adipiscing lacus. Ut', 4)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (71, N'Griffin', N'Logan', N'01/06/1950', N'Nam consequat dolor vitae dolor.', 14)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (72, N'Noelle', N'Byers', N'29/05/1999', N'accumsan sed, facilisis vitae, orci.', 6)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (73, N'Hayfa', N'Cochran', N'09/09/1931', N'libero. Proin mi. Aliquam gravida', 1)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (74, N'Kylynn', N'Flores', N'15/09/1969', N'tortor, dictum eu, placerat eget,', 1)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (75, N'Andrew', N'Moody', N'20/05/1972', N'non sapien molestie orci tincidunt', 8)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (76, N'Wing', N'Bates', N'30/01/1930', N'gravida. Aliquam tincidunt, nunc ac', 12)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (77, N'Zenaida', N'Burt', N'23/02/1953', N'conubia nostra, per inceptos hymenaeos.', 5)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (78, N'Paula', N'Newman', N'02/10/1951', N'et magnis dis parturient montes,', 1)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (79, N'Whoopi', N'Osborn', N'27/07/1939', N'facilisis eget, ipsum. Donec sollicitudin', 4)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (80, N'Brock', N'Cooke', N'18/01/1969', N'Pellentesque habitant morbi tristique senectus', 7)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (81, N'Nissim', N'Mccarthy', N'15/08/1955', N'ipsum ac mi eleifend egestas.', 9)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (82, N'Aretha', N'Compton', N'04/02/1952', N'eu augue porttitor interdum. Sed', 2)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (83, N'Beau', N'Best', N'22/01/1937', N'Donec dignissim magna a tortor.', 11)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (84, N'Kibo', N'Bentley', N'02/02/1952', N'eu tellus eu augue porttitor', 2)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (85, N'Slade', N'Bauer', N'14/09/1985', N'vitae odio sagittis semper. Nam', 3)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (86, N'Brent', N'Baird', N'21/12/1985', N'sed orci lobortis augue scelerisque', 6)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (87, N'Ezekiel', N'Carney', N'23/09/1970', N'sem ut cursus luctus, ipsum', 10)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (88, N'Taylor', N'Jordan', N'26/09/1961', N'posuere, enim nisl elementum purus,', 10)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (89, N'Alexandra', N'Calderon', N'19/08/1938', N'eu, ligula. Aenean euismod mauris', 6)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (90, N'Cheyenne', N'Talley', N'29/06/1979', N'rutrum, justo. Praesent luctus. Curabitur', 2)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (91, N'Upton', N'Berry', N'13/06/1978', N'dignissim tempor arcu. Vestibulum ut', 12)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (92, N'Aurelia', N'House', N'07/10/1991', N'vestibulum. Mauris magna. Duis dignissim', 6)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (93, N'Karyn', N'Mcdowell', N'28/06/1982', N'In ornare sagittis felis. Donec', 1)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (94, N'Melanie', N'Giles', N'14/08/1947', N'a tortor. Nunc commodo auctor', 7)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (95, N'Erin', N'Hudson', N'07/07/1967', N'eu elit. Nulla facilisi. Sed', 13)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (96, N'Brenden', N'Stafford', N'20/07/1948', N'Pellentesque habitant morbi tristique senectus', 13)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (97, N'Wang', N'Yates', N'01/08/1935', N'erat volutpat. Nulla facilisis. Suspendisse', 8)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (98, N'Margaret', N'Greene', N'16/03/1964', N'Maecenas malesuada fringilla est. Mauris', 6)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (99, N'Tanisha', N'Jimenez', N'09/01/1948', N'egestas. Aliquam fringilla cursus purus.', 9)
GO
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (100, N'India', N'Stephenson', N'23/08/1941', N'ut quam vel sapien imperdiet', 1)
INSERT [dbo].[Artistas] ([id_artista], [nombre], [apellido], [fecha_nac], [detalle], [id_localidad]) VALUES (101, N'Derek', N'Lambert', N'16/08/1948', N'Etiam vestibulum massa rutrum magna.', 3)
SET IDENTITY_INSERT [dbo].[Artistas] OFF
SET IDENTITY_INSERT [dbo].[DepositosLocker] ON 

INSERT [dbo].[DepositosLocker] ([id_deposito], [id_ubicacion]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[DepositosLocker] OFF
INSERT [dbo].[Estilos] ([id_estilo], [nombreEstilo]) VALUES (1, N'Naturaleza muerta')
INSERT [dbo].[Estilos] ([id_estilo], [nombreEstilo]) VALUES (2, N'Paisaje')
INSERT [dbo].[Estilos] ([id_estilo], [nombreEstilo]) VALUES (3, N'Gótico')
INSERT [dbo].[Estilos] ([id_estilo], [nombreEstilo]) VALUES (4, N'Retrato')
SET IDENTITY_INSERT [dbo].[Localidades] ON 

INSERT [dbo].[Localidades] ([id_localidad], [nombre_localidad], [id_provincia]) VALUES (1, N'Córdoba Capital', 1)
INSERT [dbo].[Localidades] ([id_localidad], [nombre_localidad], [id_provincia]) VALUES (2, N'Hernando', 1)
INSERT [dbo].[Localidades] ([id_localidad], [nombre_localidad], [id_provincia]) VALUES (3, N'Carlos Paz', 1)
INSERT [dbo].[Localidades] ([id_localidad], [nombre_localidad], [id_provincia]) VALUES (4, N'Calamuchita', 1)
INSERT [dbo].[Localidades] ([id_localidad], [nombre_localidad], [id_provincia]) VALUES (5, N'Alta Gracia', 1)
INSERT [dbo].[Localidades] ([id_localidad], [nombre_localidad], [id_provincia]) VALUES (6, N'La Plata', 2)
INSERT [dbo].[Localidades] ([id_localidad], [nombre_localidad], [id_provincia]) VALUES (7, N'Mar del Plata', 2)
INSERT [dbo].[Localidades] ([id_localidad], [nombre_localidad], [id_provincia]) VALUES (8, N'CABA', 2)
INSERT [dbo].[Localidades] ([id_localidad], [nombre_localidad], [id_provincia]) VALUES (9, N'Tigre', 2)
INSERT [dbo].[Localidades] ([id_localidad], [nombre_localidad], [id_provincia]) VALUES (10, N'Bahía Blanca', 2)
INSERT [dbo].[Localidades] ([id_localidad], [nombre_localidad], [id_provincia]) VALUES (11, N'Merlo', 2)
INSERT [dbo].[Localidades] ([id_localidad], [nombre_localidad], [id_provincia]) VALUES (12, N'Pinamar', 2)
INSERT [dbo].[Localidades] ([id_localidad], [nombre_localidad], [id_provincia]) VALUES (13, N'Sin Seleccionar', 3)
INSERT [dbo].[Localidades] ([id_localidad], [nombre_localidad], [id_provincia]) VALUES (14, N'Sin Seleccionar', 4)
SET IDENTITY_INSERT [dbo].[Localidades] OFF
SET IDENTITY_INSERT [dbo].[Lockers] ON 

INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (1, N'N#1', NULL, N'Chico', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (2, N'N#2', NULL, N'Chico', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (3, N'N#3', NULL, N'Chico', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (4, N'N#4', NULL, N'Chico', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (5, N'N#5', NULL, N'Chico', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (6, N'N#6', NULL, N'Chico', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (7, N'N#7', NULL, N'Mediano', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (8, N'N#8', NULL, N'Mediano', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (9, N'N#9', NULL, N'Mediano', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (10, N'N#10', NULL, N'Mediano', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (11, N'N#11', NULL, N'Mediano', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (12, N'N#12', NULL, N'Mediano', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (13, N'N#13', NULL, N'Grande', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (14, N'N#14', NULL, N'Grande', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (15, N'N#15', NULL, N'Grande', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (16, N'N#16', NULL, N'Grande', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (17, N'N#17', NULL, N'Grande', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (18, N'N#18', NULL, N'Grande', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (19, N'N#19', NULL, N'Grande', 1, NULL, NULL)
INSERT [dbo].[Lockers] ([id_locker], [nombre], [id_obra], [dimension], [id_deposito], [fecha_ingreso], [fecha_egreso]) VALUES (20, N'N#20', NULL, N'Grande', 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Lockers] OFF
SET IDENTITY_INSERT [dbo].[Obras] ON 

INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (1, N'EsUnaPrueba', 1, 1, 1, N'asdadadadsad', N'120x200', 30000, N'Buena', 1, N'29/10/2019')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (2, N'Segunda', 1, 1, 1, NULL, N'20x20', 20000, N'Buena', 1, N'29/10/2019')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (3, N'a, aliquet', 2, 2, 92, N'posuere at, velit.', NULL, 944778, N'Bueno', 1, N'03/03/2020')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (4, N'ligula', 2, 2, 27, N'amet risus. Donec', NULL, 854955, N'Bueno', 1, N'18/10/2020')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (5, N'ullamcorper', 2, 1, 83, N'justo nec ante.', NULL, 500285, N'Regular', 1, N'20/10/2020')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (6, N'Suspendisse', 4, 1, 82, N'molestie. Sed id', NULL, 508499, N'Bueno', 1, N'15/02/2020')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (7, N'massa non', 4, 2, 22, N'lobortis, nisi nibh', NULL, 468952, N'Muy Malo', 1, N'30/05/2020')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (8, N'Praesent eu dui. Cum', 3, 1, 64, N'at, velit. Cras', NULL, 534334, N'Malo', 1, N'08/06/2019')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (9, N'erat volutpat. Nulla facilisis.', 1, 2, 75, N'Suspendisse eleifend. Cras', NULL, 985478, N'Muy Malo', 1, N'11/05/2020')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (10, N'neque tellus, imperdiet non,', 3, 2, 52, N'orci quis lectus.', NULL, 77734, N'Malo', 1, N'12/01/2019')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (11, N'mattis.', 2, 2, 91, N'tortor nibh sit', NULL, 946669, N'Bueno', 1, N'26/04/2019')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (12, N'ornare, facilisis eget,', 3, 1, 21, N'lobortis, nisi nibh', NULL, 867203, N'Muy Malo', 1, N'25/10/2019')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (13, N'ipsum porta elit,', 3, 2, 11, N'vel, faucibus id,', NULL, 113578, N'Bueno', 1, N'18/04/2019')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (14, N'nascetur ridiculus mus.', 2, 1, 42, N'id magna et', NULL, 42079, N'Bueno', 1, N'11/10/2019')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (15, N'In', 1, 2, 3, N'at, libero. Morbi', NULL, 433799, N'Regular', 1, N'25/06/2020')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (16, N'Sed nec', 4, 2, 18, N'a feugiat tellus', NULL, 586155, N'Muy Malo', 1, N'27/06/2019')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (17, N'gravida sagittis. Duis', 3, 2, 86, N'enim, condimentum eget,', NULL, 534174, N'Muy Bueno', 1, N'07/09/2020')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (18, N'Vivamus', 2, 1, 23, N'dictum eu, placerat', NULL, 389875, N'Muy Malo', 1, N'15/04/2020')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (19, N'Donec', 3, 1, 12, N'Ut nec urna', NULL, 711042, N'Muy Bueno', 1, N'19/09/2020')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (20, N'nisi', 3, 1, 28, N'In lorem. Donec', NULL, 259081, N'Muy Malo', 1, N'08/06/2020')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (21, N'Nunc ut', 1, 1, 28, N'ultrices a, auctor', NULL, 174168, N'Muy Malo', 1, N'06/05/2019')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (22, N'Quisque', 2, 1, 6, N'magnis dis parturient', NULL, 250541, N'Regular', 1, N'14/10/2019')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (23, N'et magnis dis', 3, 1, 61, N'facilisis non, bibendum', NULL, 818031, N'Malo', 1, N'06/04/2019')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (24, N'ultrices posuere cubilia', 3, 1, 92, N'Sed malesuada augue', NULL, 334462, N'Muy Bueno', 1, N'18/07/2020')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (25, N'ridiculus', 2, 2, 26, N'magna. Sed eu', NULL, 152019, N'Regular', 1, N'29/05/2020')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (26, N'et pede. Nunc', 1, 1, 98, N'ut cursus luctus,', NULL, 951021, N'Regular', 1, N'01/04/2020')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (27, N'ipsum', 2, 1, 17, N'cursus purus. Nullam', NULL, 166562, N'Bueno', 1, N'03/03/2019')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (28, N'Aenean', 2, 1, 89, N'Nullam ut nisi', NULL, 519687, N'Muy Bueno', 1, N'10/10/2020')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (29, N'Aliquam nisl. Nulla eu', 1, 1, 81, N'Sed pharetra, felis', NULL, 915349, N'Regular', 1, N'03/09/2020')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (30, N'a purus. Duis elementum,', 1, 1, 60, N'ipsum dolor sit', NULL, 21962, N'Malo', 1, N'23/10/2020')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (31, N'Donec', 2, 2, 21, N'vel, faucibus id,', NULL, 238140, N'Muy Bueno', 1, N'21/05/2019')
INSERT [dbo].[Obras] ([codigo], [nombre], [id_estilo], [id_tipo_obra], [id_artista], [descripcion], [dimension], [valuacion], [estado_obra], [disponible], [fecha_creacion]) VALUES (32, N'sollicitudin a, malesuada id,', 2, 1, 73, N'ante, iaculis nec,', NULL, 623370, N'Bueno', 1, N'07/10/2019')
SET IDENTITY_INSERT [dbo].[Obras] OFF
SET IDENTITY_INSERT [dbo].[Paises] ON 

INSERT [dbo].[Paises] ([id_pais], [nombre_pais]) VALUES (1, N'Argentina')
INSERT [dbo].[Paises] ([id_pais], [nombre_pais]) VALUES (2, N'Estados Unidos')
INSERT [dbo].[Paises] ([id_pais], [nombre_pais]) VALUES (3, N'Korea')
SET IDENTITY_INSERT [dbo].[Paises] OFF
SET IDENTITY_INSERT [dbo].[Provincias] ON 

INSERT [dbo].[Provincias] ([id_provincia], [nombre_provincia], [id_pais]) VALUES (1, N'Córdoba', 1)
INSERT [dbo].[Provincias] ([id_provincia], [nombre_provincia], [id_pais]) VALUES (2, N'Buenos Aires', 1)
INSERT [dbo].[Provincias] ([id_provincia], [nombre_provincia], [id_pais]) VALUES (3, N'Sin Seleccionar', 2)
INSERT [dbo].[Provincias] ([id_provincia], [nombre_provincia], [id_pais]) VALUES (4, N'Sin Seleccionar', 3)
SET IDENTITY_INSERT [dbo].[Provincias] OFF
INSERT [dbo].[TiposObra] ([id_tipo], [nombre_tipo]) VALUES (1, N'Acuarela')
INSERT [dbo].[TiposObra] ([id_tipo], [nombre_tipo]) VALUES (2, N'Óleo')
SET IDENTITY_INSERT [dbo].[Ubicaciones] ON 

INSERT [dbo].[Ubicaciones] ([id_ubicacion], [id_localidad], [calle], [numero], [piso], [dpto], [torre]) VALUES (1, 1, N'Av. Poeta Lugones', 411, 1, N'1', N'1')
SET IDENTITY_INSERT [dbo].[Ubicaciones] OFF
ALTER TABLE [dbo].[Artistas]  WITH CHECK ADD  CONSTRAINT [FK_Artistas_Localidades] FOREIGN KEY([id_localidad])
REFERENCES [dbo].[Localidades] ([id_localidad])
GO
ALTER TABLE [dbo].[Artistas] CHECK CONSTRAINT [FK_Artistas_Localidades]
GO
ALTER TABLE [dbo].[DepositosLocker]  WITH CHECK ADD  CONSTRAINT [FK_DepositosLocker_Ubicaciones] FOREIGN KEY([id_ubicacion])
REFERENCES [dbo].[Ubicaciones] ([id_ubicacion])
GO
ALTER TABLE [dbo].[DepositosLocker] CHECK CONSTRAINT [FK_DepositosLocker_Ubicaciones]
GO
ALTER TABLE [dbo].[Localidades]  WITH CHECK ADD  CONSTRAINT [FK_Localidades_Provincias] FOREIGN KEY([id_provincia])
REFERENCES [dbo].[Provincias] ([id_provincia])
GO
ALTER TABLE [dbo].[Localidades] CHECK CONSTRAINT [FK_Localidades_Provincias]
GO
ALTER TABLE [dbo].[Lockers]  WITH CHECK ADD  CONSTRAINT [FK_Lockers_DepositosLocker] FOREIGN KEY([id_deposito])
REFERENCES [dbo].[DepositosLocker] ([id_deposito])
GO
ALTER TABLE [dbo].[Lockers] CHECK CONSTRAINT [FK_Lockers_DepositosLocker]
GO
ALTER TABLE [dbo].[Lockers]  WITH CHECK ADD  CONSTRAINT [FK_Lockers_Obras] FOREIGN KEY([id_obra])
REFERENCES [dbo].[Obras] ([codigo])
GO
ALTER TABLE [dbo].[Lockers] CHECK CONSTRAINT [FK_Lockers_Obras]
GO
ALTER TABLE [dbo].[Obras]  WITH CHECK ADD  CONSTRAINT [FK_Obras_Artistas] FOREIGN KEY([id_artista])
REFERENCES [dbo].[Artistas] ([id_artista])
GO
ALTER TABLE [dbo].[Obras] CHECK CONSTRAINT [FK_Obras_Artistas]
GO
ALTER TABLE [dbo].[Obras]  WITH CHECK ADD  CONSTRAINT [FK_Obras_Estilos] FOREIGN KEY([id_estilo])
REFERENCES [dbo].[Estilos] ([id_estilo])
GO
ALTER TABLE [dbo].[Obras] CHECK CONSTRAINT [FK_Obras_Estilos]
GO
ALTER TABLE [dbo].[Obras]  WITH CHECK ADD  CONSTRAINT [FK_Obras_TiposObra] FOREIGN KEY([id_tipo_obra])
REFERENCES [dbo].[TiposObra] ([id_tipo])
GO
ALTER TABLE [dbo].[Obras] CHECK CONSTRAINT [FK_Obras_TiposObra]
GO
ALTER TABLE [dbo].[Provincias]  WITH CHECK ADD  CONSTRAINT [FK_Provincias_Paises] FOREIGN KEY([id_pais])
REFERENCES [dbo].[Paises] ([id_pais])
GO
ALTER TABLE [dbo].[Provincias] CHECK CONSTRAINT [FK_Provincias_Paises]
GO
ALTER TABLE [dbo].[Ubicaciones]  WITH CHECK ADD  CONSTRAINT [FK_Ubicaciones_Localidades] FOREIGN KEY([id_localidad])
REFERENCES [dbo].[Localidades] ([id_localidad])
GO
ALTER TABLE [dbo].[Ubicaciones] CHECK CONSTRAINT [FK_Ubicaciones_Localidades]
GO
