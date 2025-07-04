USE [master]
GO
/****** Object:  Database [ABSystems]    Script Date: 22/06/2025 17:38:12 ******/
CREATE DATABASE [ABSystems]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ABSystems', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ABSystems.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ABSystems_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ABSystems_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ABSystems] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ABSystems].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ABSystems] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ABSystems] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ABSystems] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ABSystems] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ABSystems] SET ARITHABORT OFF 
GO
ALTER DATABASE [ABSystems] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ABSystems] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ABSystems] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ABSystems] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ABSystems] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ABSystems] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ABSystems] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ABSystems] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ABSystems] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ABSystems] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ABSystems] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ABSystems] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ABSystems] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ABSystems] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ABSystems] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ABSystems] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ABSystems] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ABSystems] SET RECOVERY FULL 
GO
ALTER DATABASE [ABSystems] SET  MULTI_USER 
GO
ALTER DATABASE [ABSystems] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ABSystems] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ABSystems] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ABSystems] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ABSystems] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ABSystems] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ABSystems', N'ON'
GO
ALTER DATABASE [ABSystems] SET QUERY_STORE = ON
GO
ALTER DATABASE [ABSystems] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ABSystems]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 22/06/2025 17:38:13 ******/
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
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 22/06/2025 17:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [nvarchar](max) NOT NULL,
	[Apellidos] [nvarchar](max) NOT NULL,
	[FechaNacimiento] [datetime2](7) NOT NULL,
	[Direccion] [nvarchar](max) NOT NULL,
	[Sexo] [nvarchar](max) NOT NULL,
	[CURP] [nvarchar](max) NOT NULL,
	[Telefono] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Carrera] [nvarchar](max) NOT NULL,
	[Modalidad] [nvarchar](max) NOT NULL,
	[EsBecado] [bit] NOT NULL,
	[DescripcionPersonal] [nvarchar](max) NULL,
	[TieneMascotas] [bit] NOT NULL,
	[Mascotas] [nvarchar](max) NULL,
	[HorarioComida] [nvarchar](max) NULL,
 CONSTRAINT [PK_Estudiantes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Estudiantes] ON 

INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (1, N'Eduardo Joaquín', N'Torres Bello', CAST(N'2002-09-03T00:00:00.0000000' AS DateTime2), N'Calle Independencia 77, Fortín de las Flores, Veracruz', N'Hombre', N'TOBE020903HVZLRD07', N'2713019888', N'eduardo.torres@example.com', N'Derecho', N'Ambos', 0, N'Interesado en la justicia y la política.', 1, N'Gato (siamés)', N'15:00')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (2, N'Mariana Sofía', N'Hernández Díaz', CAST(N'2003-11-27T00:00:00.0000000' AS DateTime2), N'Priv. San Juan 18, Nogales, Veracruz', N'Mujer', N'HEDM031127MVZNRR05', N'2728803344', N'mariana.hernandez@example.com', N'Biología', N'Presencial', 1, N'Amante de la naturaleza y los animales.', 1, N'Tortugas', N'14:15')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (3, N'Miguel Ángel', N'Vázquez Ríos', CAST(N'2005-02-08T00:00:00.0000000' AS DateTime2), N'Calle Veracruz 321, Orizaba, Veracruz', N'Hombre', N'VARM050208HVZSCG01', N'2724449876', N'miguel.vazquez@example.com', N'Matemáticas', N'Online', 0, N'Me gustan los acertijos lógicos y la estadística.', 0, NULL, N'13:45')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (4, N'Eduardo Joaquín', N'Torres Bello', CAST(N'2002-09-03T00:00:00.0000000' AS DateTime2), N'Calle Independencia 77, Fortín de las Flores, Veracruz', N'Hombre', N'TOBE020903HVZLRD07', N'2713019888', N'eduardo.torres@example.com', N'Derecho', N'Ambos', 0, N'Interesado en la justicia y la política.', 1, N'Gato (siamés)', N'15:00')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (5, N'Mariana Sofía', N'Hernández Díaz', CAST(N'2003-11-27T00:00:00.0000000' AS DateTime2), N'Priv. San Juan 18, Nogales, Veracruz', N'Mujer', N'HEDM031127MVZNRR05', N'2728803344', N'mariana.hernandez@example.com', N'Biología', N'Presencial', 1, N'Amante de la naturaleza y los animales.', 1, N'Tortugas', N'14:15')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (6, N'Miguel Ángel', N'Vázquez Ríos', CAST(N'2005-02-08T00:00:00.0000000' AS DateTime2), N'Calle Veracruz 321, Orizaba, Veracruz', N'Hombre', N'VARM050208HVZSCG01', N'2724449876', N'miguel.vazquez@example.com', N'Matemáticas', N'Online', 0, N'Me gustan los acertijos lógicos y la estadística.', 0, NULL, N'13:45')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (7, N'Jimena Paola', N'García Luna', CAST(N'2001-10-12T00:00:00.0000000' AS DateTime2), N'Calle Hidalgo 88, Córdoba, Veracruz', N'Mujer', N'GALJ011012MVZRNM03', N'2711023345', N'jimena.garcia@example.com', N'Educación', N'Presencial', 1, N'Me gusta enseñar a los niños y trabajar en comunidad.', 1, N'Conejo', N'13:20')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (8, N'Brandon Esteban', N'Ruiz Martínez', CAST(N'2002-01-25T00:00:00.0000000' AS DateTime2), N'Av. Reforma 55, Fortín de las Flores, Veracruz', N'Hombre', N'RUMB020125HVZLRD04', N'2715558899', N'brandon.ruiz@example.com', N'Administración', N'Ambos', 0, N'Me interesa liderar proyectos de negocios.', 0, NULL, N'14:05')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (9, N'Andrea Fernanda', N'Lozano Cárdenas', CAST(N'2003-06-08T00:00:00.0000000' AS DateTime2), N'Calle 5 Sur 120, Orizaba, Veracruz', N'Mujer', N'LOCA030608MVZNRN06', N'2721119988', N'andrea.lozano@example.com', N'Mercadotecnia', N'Online', 1, N'Creativa, con gusto por la publicidad digital.', 1, N'Hamster', N'14:30')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (10, N'Diego Emmanuel', N'Hernández Reyes', CAST(N'2004-03-19T00:00:00.0000000' AS DateTime2), N'Av. 1 entre 2 y 4, Córdoba, Veracruz', N'Hombre', N'HERD040319HVZNRR00', N'2717001122', N'diego.hernandez@example.com', N'Comercio', N'Presencial', 0, N'Quiero impulsar negocios locales.', 1, N'Perico', N'13:50')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (11, N'Valeria Anahí', N'Pérez Velázquez', CAST(N'2005-05-30T00:00:00.0000000' AS DateTime2), N'Priv. Los Olmos 12, Nogales, Veracruz', N'Mujer', N'PEPV050530MVZRLV09', N'2723903444', N'valeria.perez@example.com', N'Psicología', N'Ambos', 1, N'Empática y muy observadora.', 1, N'Pez beta', N'13:30')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (12, N'Carlos Daniel', N'Montes Rivera', CAST(N'2002-11-22T00:00:00.0000000' AS DateTime2), N'Calle Libertad 43, Fortín de las Flores, Veracruz', N'Hombre', N'MORC021122HVZLTR02', N'2717802255', N'carlos.montes@example.com', N'Economía', N'Online', 0, N'Me interesa el desarrollo financiero en zonas rurales.', 0, NULL, N'14:45')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (13, N'Isabel Renata', N'Cruz Barragán', CAST(N'2001-07-14T00:00:00.0000000' AS DateTime2), N'Av. Poniente 9 No. 33, Orizaba, Veracruz', N'Mujer', N'CRBI010714MVZNRL01', N'2728110099', N'isabel.cruz@example.com', N'Ingeniería en Sistemas', N'Presencial', 1, N'Me gusta la programación y la robótica.', 1, N'Gato (persa)', N'14:10')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (14, N'José Manuel', N'Salas Ortiz', CAST(N'2003-12-03T00:00:00.0000000' AS DateTime2), N'Calle 6 Norte 49, Córdoba, Veracruz', N'Hombre', N'SAOJ031203HVZNRL03', N'2713029090', N'jose.salas@example.com', N'Química', N'Ambos', 0, N'Interesado en el área farmacéutica.', 0, NULL, N'15:10')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (15, N'Alejandra Itzel', N'Reyes Bautista', CAST(N'2002-04-06T00:00:00.0000000' AS DateTime2), N'Calle Benito Juárez 25, Nogales, Veracruz', N'Mujer', N'REBA020406MVZRXT03', N'2726004455', N'alejandra.reyes@example.com', N'Educación', N'Online', 1, N'Apasionada por la educación inclusiva.', 1, N'Dos perros', N'13:15')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (16, N'Ricardo Iván', N'Gómez Santiago', CAST(N'2004-07-11T00:00:00.0000000' AS DateTime2), N'Av. Juárez 101, Córdoba, Veracruz', N'Hombre', N'GOSR040711HVZMNZ06', N'2713001122', N'ricardo.gomez@example.com', N'Química', N'Presencial', 1, N'Apasionado por los procesos industriales y reactivos.', 1, N'Iguana', N'13:50')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (17, N'Daniela Estefanía', N'Camacho Ruiz', CAST(N'2002-10-21T00:00:00.0000000' AS DateTime2), N'Calle 5 de Mayo 31, Fortín de las Flores, Veracruz', N'Mujer', N'CARD021021MVZRZN09', N'2716004433', N'daniela.camacho@example.com', N'Psicología', N'Online', 0, N'Introvertida, observadora y empática.', 0, NULL, N'14:30')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (18, N'Kevin Alexis', N'López Castañeda', CAST(N'2003-03-17T00:00:00.0000000' AS DateTime2), N'Calle La Luz 3, Orizaba, Veracruz', N'Hombre', N'LOCK030317HVZNRV07', N'2727005656', N'kevin.lopez@example.com', N'Ingeniería en Sistemas', N'Ambos', 0, N'Fan del desarrollo web y la electrónica.', 1, N'Perro', N'14:00')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (19, N'Ivanna Paulina', N'Fernández Ramos', CAST(N'2004-02-09T00:00:00.0000000' AS DateTime2), N'Av. Reforma 99, Nogales, Veracruz', N'Mujer', N'FERI040209MVZLRM04', N'2725607788', N'ivanna.fernandez@example.com', N'Educación', N'Presencial', 1, N'Soñadora y comprometida con la docencia.', 0, NULL, N'13:20')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (20, N'David Alejandro', N'Sánchez Mora', CAST(N'2001-12-02T00:00:00.0000000' AS DateTime2), N'Calle Progreso 45, Córdoba, Veracruz', N'Hombre', N'SAMD011202HVZRRL08', N'2718991122', N'david.sanchez@example.com', N'Derecho', N'Presencial', 0, N'Líder nato, apasionado por las leyes.', 1, N'Tortuga', N'14:10')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (21, N'Samantha Karol', N'Martínez Chávez', CAST(N'2005-05-25T00:00:00.0000000' AS DateTime2), N'Priv. Robles 23, Fortín de las Flores, Veracruz', N'Mujer', N'MACS050525MVZRNM06', N'2715883300', N'samantha.martinez@example.com', N'Matemáticas', N'Online', 1, N'Me encanta resolver problemas complejos.', 0, NULL, N'13:55')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (22, N'Jesús Adrián', N'Rivera Ortega', CAST(N'2003-08-19T00:00:00.0000000' AS DateTime2), N'Av. Norte 1, Orizaba, Veracruz', N'Hombre', N'RIOJ030819HVZNRD02', N'2725107780', N'jesus.rivera@example.com', N'Administración', N'Ambos', 1, N'Buena gestión, buena vida.', 1, N'Gato', N'14:50')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (23, N'Andrea Lucía', N'Delgado Navarro', CAST(N'2002-06-13T00:00:00.0000000' AS DateTime2), N'Calle Las Palmas 8, Nogales, Veracruz', N'Mujer', N'DENL020613MVZLRR02', N'2729034455', N'andrea.delgado@example.com', N'Mercadotecnia', N'Presencial', 0, N'Diseño campañas creativas para redes sociales.', 1, N'Perros (2)', N'13:35')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (24, N'Alan Mauricio', N'Mejía Salgado', CAST(N'2001-09-04T00:00:00.0000000' AS DateTime2), N'Calle Principal 20, Córdoba, Veracruz', N'Hombre', N'MEGA010904HVZNRL01', N'2712347766', N'alan.mejia@example.com', N'Comercio', N'Online', 1, N'Importar, exportar, negociar y ganar.', 0, NULL, N'13:40')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (25, N'Sofía Regina', N'Jiménez Olivares', CAST(N'2004-04-28T00:00:00.0000000' AS DateTime2), N'Priv. Los Mangos 10, Fortín de las Flores, Veracruz', N'Mujer', N'JIOS040428MVZRLF08', N'2719001234', N'sofia.jimenez@example.com', N'Psicología', N'Ambos', 1, N'Me encanta escuchar y comprender a los demás.', 1, N'Canario', N'14:15')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (26, N'Marco Antonio', N'Nava Guillén', CAST(N'2003-02-12T00:00:00.0000000' AS DateTime2), N'Calle Palmas 44, Orizaba, Veracruz', N'Hombre', N'NAGM030212HVZNRL01', N'2727778844', N'marco.nava@example.com', N'Ingeniería en Sistemas', N'Presencial', 0, N'Desarrollador entusiasta de aplicaciones web.', 1, N'Gato y perro', N'14:40')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (27, N'Fernanda Abril', N'Ortiz Zúñiga', CAST(N'2005-01-09T00:00:00.0000000' AS DateTime2), N'Calle Reforma 201, Córdoba, Veracruz', N'Mujer', N'OZUF050109MVZNRR07', N'2715991122', N'fernanda.ortiz@example.com', N'Mercadotecnia', N'Online', 1, N'Me apasiona el branding y las redes sociales.', 0, NULL, N'13:25')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (28, N'Luis Enrique', N'Carrillo Romero', CAST(N'2002-05-15T00:00:00.0000000' AS DateTime2), N'Av. 20 de Noviembre, Nogales, Veracruz', N'Hombre', N'CARL020515HVZRRL04', N'2729103344', N'luis.carrillo@example.com', N'Educación', N'Ambos', 1, N'Tengo vocación por la enseñanza rural.', 1, N'2 perros', N'13:50')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (29, N'Elena Beatriz', N'Salinas Varela', CAST(N'2001-08-20T00:00:00.0000000' AS DateTime2), N'Calle Oriente 6, Orizaba, Veracruz', N'Mujer', N'SAVE010820MVZNRN02', N'2728406688', N'elena.salinas@example.com', N'Derecho', N'Presencial', 0, N'Interesada en el derecho penal y los DD.HH.', 0, NULL, N'14:10')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (30, N'Valentín Uriel', N'Trejo Saldaña', CAST(N'2003-09-07T00:00:00.0000000' AS DateTime2), N'Calle Progreso 88, Nogales, Veracruz', N'Hombre', N'TRSV030907HVZLLN01', N'2729981234', N'valentin.trejo@example.com', N'Economía', N'Online', 0, N'Apasionado por el análisis de mercados y finanzas.', 0, NULL, N'14:20')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (31, N'Camila Fernanda', N'Armenta Gómez', CAST(N'2002-06-18T00:00:00.0000000' AS DateTime2), N'Av. Poniente 5 No. 77, Orizaba, Veracruz', N'Mujer', N'AOGC020618MVZNRM03', N'2725503377', N'camila.armenta@example.com', N'Química', N'Ambos', 1, N'Me fascina la genética y el trabajo de laboratorio.', 1, N'Gato', N'13:15')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (32, N'Francisco Javier', N'Pineda Morales', CAST(N'2004-11-23T00:00:00.0000000' AS DateTime2), N'Col. San Miguel 34, Córdoba, Veracruz', N'Hombre', N'PIMF041123HVZNRL06', N'2713014455', N'francisco.pineda@example.com', N'Comercio', N'Presencial', 1, N'Emprendedor con visión global.', 1, N'Pez dorado', N'14:05')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (33, N'Regina Alejandra', N'Zamora Castañeda', CAST(N'2001-03-12T00:00:00.0000000' AS DateTime2), N'Calle Los Cedros 61, Fortín de las Flores, Veracruz', N'Mujer', N'ZACR010312MVZRSG07', N'2714423344', N'regina.zamora@example.com', N'Matemáticas', N'Online', 0, N'Me encantan los algoritmos y la teoría de números.', 0, NULL, N'13:50')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (34, N'Julio César', N'López Aguirre', CAST(N'2003-10-02T00:00:00.0000000' AS DateTime2), N'Av. Oriente 7, Orizaba, Veracruz', N'Hombre', N'LOAJ031002HVZNRL09', N'2726049988', N'julio.lopez@example.com', N'Química', N'Ambos', 1, N'Curioso por la ciencia detrás de los elementos.', 0, NULL, N'14:35')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (35, N'María José', N'Vargas Mejía', CAST(N'2003-06-30T00:00:00.0000000' AS DateTime2), N'Av. Universidad 21, Orizaba, Veracruz', N'Mujer', N'VAMJ030630MVZNRR04', N'2729011122', N'maria.vargas@example.com', N'Administración', N'Online', 1, N'Organizada y con visión para negocios.', 1, N'Gato', N'14:25')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (36, N'Luis Alfredo', N'Castillo Nieto', CAST(N'2002-09-14T00:00:00.0000000' AS DateTime2), N'Calle Sauces 45, Fortín de las Flores, Veracruz', N'Hombre', N'CANL020914HVZRNR08', N'2713202299', N'luis.castillo@example.com', N'Ingeniería en Sistemas', N'Presencial', 0, N'Me apasiona el diseño de software.', 0, NULL, N'13:40')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (37, N'Natalia Irene', N'Zavala Hernández', CAST(N'2004-12-19T00:00:00.0000000' AS DateTime2), N'Col. El Carmen 88, Córdoba, Veracruz', N'Mujer', N'ZAHN041219MVZNRN00', N'2716008988', N'natalia.zavala@example.com', N'Química', N'Ambos', 1, N'Exploradora de compuestos e innovación.', 1, N'Pez koi', N'13:55')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (38, N'Jorge Andrés', N'Morales Torres', CAST(N'2001-11-05T00:00:00.0000000' AS DateTime2), N'Calle Francisco I. Madero 77, Nogales, Veracruz', N'Hombre', N'MOTJ011105HVZRRL07', N'2723092233', N'jorge.morales@example.com', N'Comercio', N'Ambos', 0, N'Busco optimizar cadenas de distribución.', 0, NULL, N'14:00')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (39, N'Ana Sofía', N'Villalobos Rivas', CAST(N'2005-02-26T00:00:00.0000000' AS DateTime2), N'Priv. Los Álamos 12, Orizaba, Veracruz', N'Mujer', N'VIRA050226MVZNRL03', N'2726045123', N'ana.villalobos@example.com', N'Educación', N'Presencial', 1, N'Apasionada por la pedagogía y la equidad.', 1, N'Perico australiano', N'13:35')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (40, N'Óscar Iván', N'Ramos Domínguez', CAST(N'2003-08-01T00:00:00.0000000' AS DateTime2), N'Av. Central 10, Córdoba, Veracruz', N'Hombre', N'RAIO030801HVZRRM05', N'2714493322', N'oscar.ramos@example.com', N'Economía', N'Online', 1, N'Apunto a entender cómo se mueve el mundo.', 0, NULL, N'14:10')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (41, N'Renata Isabel', N'Guerra León', CAST(N'2004-03-03T00:00:00.0000000' AS DateTime2), N'Calle Naranjos 27, Fortín de las Flores, Veracruz', N'Mujer', N'GULR040303MVZRNN09', N'2718334566', N'renata.guerra@example.com', N'Psicología', N'Ambos', 0, N'Curiosa de la mente humana y el lenguaje.', 1, N'Gato siamés', N'13:45')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (42, N'Axel Emiliano', N'Carranza Olmos', CAST(N'2002-10-07T00:00:00.0000000' AS DateTime2), N'Callejón El Triunfo 9, Nogales, Veracruz', N'Hombre', N'CAOA021007HVZLLX06', N'2727449912', N'axel.carranza@example.com', N'Biología', N'Presencial', 0, N'Amante de los ecosistemas y conservación.', 0, NULL, N'14:30')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (43, N'Andrea Michelle', N'Robles Sánchez', CAST(N'2001-06-09T00:00:00.0000000' AS DateTime2), N'Calle Roble 65, Córdoba, Veracruz', N'Mujer', N'ROSA010609MVZRNL01', N'2713884477', N'andrea.robles@example.com', N'Derecho', N'Ambos', 1, N'Quiero defender los derechos de todos.', 1, N'Coneja (Luna)', N'13:20')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (44, N'Juan Pablo', N'Silva Esquivel', CAST(N'2005-04-11T00:00:00.0000000' AS DateTime2), N'Av. Oriente 13, Orizaba, Veracruz', N'Hombre', N'SIEJ050411HVZNRN02', N'2726887766', N'juan.silva@example.com', N'Matemáticas', N'Online', 1, N'Resolver problemas es mi deporte favorito.', 1, N'Gato negro', N'13:50')
INSERT [dbo].[Estudiantes] ([Id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Sexo], [CURP], [Telefono], [Email], [Carrera], [Modalidad], [EsBecado], [DescripcionPersonal], [TieneMascotas], [Mascotas], [HorarioComida]) VALUES (45, N'Ahny', N'Rayon Gonzalez', CAST(N'2025-06-21T21:05:27.7530000' AS DateTime2), N'Cordoba', N'Mujer', N'RAGA031011MVZYNHA6', N'2781149432', N'ahnygonzalez@gmail.com', N'Ingeniería en Sistemas', N'Presencial', 1, N'Me gusta la tecnología ', 1, N'Perro', NULL)
SET IDENTITY_INSERT [dbo].[Estudiantes] OFF
GO
USE [master]
GO
ALTER DATABASE [ABSystems] SET  READ_WRITE 
GO
