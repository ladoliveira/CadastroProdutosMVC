USE [Estudo]
GO
ALTER TABLE [dbo].[Produtos] DROP CONSTRAINT [FK_Produtos_Categorias]
GO
/****** Object:  Table [dbo].[Produtos]    Script Date: 09/05/2020 10:52:12 ******/
DROP TABLE [dbo].[Produtos]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 09/05/2020 10:52:12 ******/
DROP TABLE [dbo].[Categorias]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 09/05/2020 10:52:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[CategoriaId] [int] IDENTITY(1,1) NOT NULL,
	[CategoriaNome] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[CategoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Produtos]    Script Date: 09/05/2020 10:52:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produtos](
	[ProdutoId] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](100) NOT NULL,
	[Descricao] [nvarchar](150) NOT NULL,
	[CategoriaId] [int] NOT NULL,
	[Preco] [decimal](18, 2) NOT NULL,
	[Imagem] [nvarchar](250) NULL,
 CONSTRAINT [PK_Produtos] PRIMARY KEY CLUSTERED 
(
	[ProdutoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([CategoriaId], [CategoriaNome]) VALUES (1, N'Acessórios')
INSERT [dbo].[Categorias] ([CategoriaId], [CategoriaNome]) VALUES (2, N'Tablets')
INSERT [dbo].[Categorias] ([CategoriaId], [CategoriaNome]) VALUES (3, N'SmartPhones')
INSERT [dbo].[Categorias] ([CategoriaId], [CategoriaNome]) VALUES (4, N'LapTops')
INSERT [dbo].[Categorias] ([CategoriaId], [CategoriaNome]) VALUES (5, N'Descktops')
INSERT [dbo].[Categorias] ([CategoriaId], [CategoriaNome]) VALUES (6, N'TVs')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
SET IDENTITY_INSERT [dbo].[Produtos] ON 

INSERT [dbo].[Produtos] ([ProdutoId], [Nome], [Descricao], [CategoriaId], [Preco], [Imagem]) VALUES (2, N'Celular', N'Motorolla J8', 3, CAST(1300.00 AS Decimal(18, 2)), N'/ProdutoImagens/20200509-104514369.jpg')
SET IDENTITY_INSERT [dbo].[Produtos] OFF
ALTER TABLE [dbo].[Produtos]  WITH CHECK ADD  CONSTRAINT [FK_Produtos_Categorias] FOREIGN KEY([CategoriaId])
REFERENCES [dbo].[Categorias] ([CategoriaId])
GO
ALTER TABLE [dbo].[Produtos] CHECK CONSTRAINT [FK_Produtos_Categorias]
GO
