USE [ClothingStore]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 10/2/2024 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [varchar](50) NULL,
	[created_at] [date] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart_product]    Script Date: 10/2/2024 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_product](
	[id] [int] NOT NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[cart_id] [int] NULL,
	[product_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartProduct]    Script Date: 10/2/2024 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartProduct](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[cart_id] [int] NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
 CONSTRAINT [PK_CartProduct] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/2/2024 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 10/2/2024 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[color_product]    Script Date: 10/2/2024 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[color_product](
	[id] [int] NOT NULL,
	[color_id] [int] NULL,
	[product_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ColorProduct]    Script Date: 10/2/2024 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColorProduct](
	[id] [int] NOT NULL,
	[color_id] [int] NULL,
	[product_id] [int] NULL,
 CONSTRAINT [PK_ColorProduct] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 10/2/2024 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url] [varchar](500) NULL,
	[product_id] [int] NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/2/2024 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[price] [float] NULL,
	[rating] [float] NULL,
	[created_at] [date] NULL,
	[category_id] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 10/2/2024 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[size_product]    Script Date: 10/2/2024 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size_product](
	[id] [int] NOT NULL,
	[product_id] [int] NULL,
	[size_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SizeProduct]    Script Date: 10/2/2024 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SizeProduct](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[size_id] [int] NULL,
	[product_id] [int] NULL,
 CONSTRAINT [PK_SizeProduct] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/2/2024 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [varchar](50) NOT NULL,
	[name] [nvarchar](100) NULL,
	[password] [varchar](50) NULL,
	[role] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([id], [user_id], [created_at]) VALUES (1, N'vanvu', CAST(N'2024-09-28' AS Date))
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
INSERT [dbo].[cart_product] ([id], [price], [quantity], [cart_id], [product_id]) VALUES (1, 100000, 14, 1, 1)
INSERT [dbo].[cart_product] ([id], [price], [quantity], [cart_id], [product_id]) VALUES (2, 1000000, 10, 1, 2)
GO
SET IDENTITY_INSERT [dbo].[CartProduct] ON 

INSERT [dbo].[CartProduct] ([id], [product_id], [cart_id], [quantity], [price]) VALUES (1, 1, 1, 4, 100000)
SET IDENTITY_INSERT [dbo].[CartProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Quần áo nam')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Quần áo nữ')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([id], [name]) VALUES (1, N'Xanh lá')
INSERT [dbo].[Color] ([id], [name]) VALUES (2, N'Đỏ')
INSERT [dbo].[Color] ([id], [name]) VALUES (3, N'Trắng')
INSERT [dbo].[Color] ([id], [name]) VALUES (4, N'Đen')
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
INSERT [dbo].[color_product] ([id], [color_id], [product_id]) VALUES (1, 1, 1)
INSERT [dbo].[color_product] ([id], [color_id], [product_id]) VALUES (2, 1, 2)
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([id], [url], [product_id]) VALUES (1, N'https://scontent.fdad3-5.fna.fbcdn.net/v/t39.30808-1/452621989_1501692044564581_7673503454330024363_n.jpg?stp=dst-jpg_s200x200&_nc_cat=106&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeEAK0-OeHKOdaWjeFG0y-GUsbvcP6qWJ6-xu9w_qpYnr-ITZF4tuS4bnXQSYVR1ADvX6PkmIVzT3esCaKJSbPpH&_nc_ohc=KW15IfYBPa0Q7kNvgGpHlHL&_nc_ht=scontent.fdad3-5.fna&_nc_gid=AFX-03M6SiY3oIJqRKXZQ7S&oh=00_AYDMHwj_c4s_VLTBWMeWAoApdp2sYmt-cMkpm6gd9yGpBA&oe', 1)
INSERT [dbo].[Image] ([id], [url], [product_id]) VALUES (2, N'https://scontent.fdad3-4.fna.fbcdn.net/v/t1.6435-9/186240791_653369416063519_8603395208356543873_n.jpg?stp=dst-jpg_s960x960&_nc_cat=104&ccb=1-7&_nc_sid=cc71e4&_nc_eui2=AeGZmM_jbSB-IWSWFi6_BZZuEFQxqGG_w-EQVDGoYb_D4RJ6O6xzJaobatIRTiwD5q6kmxIgg5LoWlHp4d7HBnbZ&_nc_ohc=7hjrj3zI1hwQ7kNvgHfDQiM&_nc_ht=scontent.fdad3-4.fna&_nc_gid=AFX-03M6SiY3oIJqRKXZQ7S&oh=00_AYD6KYUPaRJxK3xGGy0WPNGRza3qRf5MXB8FkbcsEGTKKw&oe', 1)
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [price], [rating], [created_at], [category_id], [quantity]) VALUES (1, N'Áo sơ mi nam', 100000, 4, CAST(N'2024-09-29' AS Date), 1, 10)
INSERT [dbo].[Product] ([id], [name], [price], [rating], [created_at], [category_id], [quantity]) VALUES (2, N'Váy nữ', 120000, 4, CAST(N'2024-09-29' AS Date), 2, 10)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([id], [name]) VALUES (1, N'S')
INSERT [dbo].[Size] ([id], [name]) VALUES (2, N'M')
INSERT [dbo].[Size] ([id], [name]) VALUES (3, N'L')
INSERT [dbo].[Size] ([id], [name]) VALUES (4, N'XL')
INSERT [dbo].[Size] ([id], [name]) VALUES (5, N'XXL')
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
INSERT [dbo].[size_product] ([id], [product_id], [size_id]) VALUES (1, 1, 1)
INSERT [dbo].[size_product] ([id], [product_id], [size_id]) VALUES (2, 1, 2)
INSERT [dbo].[size_product] ([id], [product_id], [size_id]) VALUES (3, 1, 3)
INSERT [dbo].[size_product] ([id], [product_id], [size_id]) VALUES (4, 2, 1)
INSERT [dbo].[size_product] ([id], [product_id], [size_id]) VALUES (5, 2, 2)
GO
SET IDENTITY_INSERT [dbo].[SizeProduct] ON 

INSERT [dbo].[SizeProduct] ([id], [size_id], [product_id]) VALUES (1, 1, 1)
INSERT [dbo].[SizeProduct] ([id], [size_id], [product_id]) VALUES (2, 2, 1)
INSERT [dbo].[SizeProduct] ([id], [size_id], [product_id]) VALUES (3, 3, 2)
INSERT [dbo].[SizeProduct] ([id], [size_id], [product_id]) VALUES (4, 1, 2)
SET IDENTITY_INSERT [dbo].[SizeProduct] OFF
GO
INSERT [dbo].[User] ([user_id], [name], [password], [role]) VALUES (N'vanvu', N'Nguyễn Văn Vũ', N'123456', N'admin')
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_User]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FKaf0wt8hgkk8v5rfpwdwq7se0t] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FKaf0wt8hgkk8v5rfpwdwq7se0t]
GO
ALTER TABLE [dbo].[cart_product]  WITH CHECK ADD  CONSTRAINT [FK2kdlr8hs2bwl14u8oop49vrxi] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[cart_product] CHECK CONSTRAINT [FK2kdlr8hs2bwl14u8oop49vrxi]
GO
ALTER TABLE [dbo].[cart_product]  WITH CHECK ADD  CONSTRAINT [FKlv5x4iresnv4xspvomrwd8ej9] FOREIGN KEY([cart_id])
REFERENCES [dbo].[Cart] ([id])
GO
ALTER TABLE [dbo].[cart_product] CHECK CONSTRAINT [FKlv5x4iresnv4xspvomrwd8ej9]
GO
ALTER TABLE [dbo].[CartProduct]  WITH CHECK ADD  CONSTRAINT [FK_CartProduct_Cart] FOREIGN KEY([cart_id])
REFERENCES [dbo].[Cart] ([id])
GO
ALTER TABLE [dbo].[CartProduct] CHECK CONSTRAINT [FK_CartProduct_Cart]
GO
ALTER TABLE [dbo].[CartProduct]  WITH CHECK ADD  CONSTRAINT [FK_CartProduct_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[CartProduct] CHECK CONSTRAINT [FK_CartProduct_Product]
GO
ALTER TABLE [dbo].[color_product]  WITH CHECK ADD  CONSTRAINT [FK27kr4lcg6wgrpnqwt7fr2a3uk] FOREIGN KEY([color_id])
REFERENCES [dbo].[Color] ([id])
GO
ALTER TABLE [dbo].[color_product] CHECK CONSTRAINT [FK27kr4lcg6wgrpnqwt7fr2a3uk]
GO
ALTER TABLE [dbo].[color_product]  WITH CHECK ADD  CONSTRAINT [FK2a9x5hjd4onstvhnl41fdhw5p] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[color_product] CHECK CONSTRAINT [FK2a9x5hjd4onstvhnl41fdhw5p]
GO
ALTER TABLE [dbo].[ColorProduct]  WITH CHECK ADD  CONSTRAINT [FK_ColorProduct_Color] FOREIGN KEY([color_id])
REFERENCES [dbo].[Color] ([id])
GO
ALTER TABLE [dbo].[ColorProduct] CHECK CONSTRAINT [FK_ColorProduct_Color]
GO
ALTER TABLE [dbo].[ColorProduct]  WITH CHECK ADD  CONSTRAINT [FK_ColorProduct_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[ColorProduct] CHECK CONSTRAINT [FK_ColorProduct_Product]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Product]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FKgpextbyee3uk9u6o2381m7ft1] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FKgpextbyee3uk9u6o2381m7ft1]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK1mtsbur82frn64de7balymq9s] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK1mtsbur82frn64de7balymq9s]
GO
ALTER TABLE [dbo].[size_product]  WITH CHECK ADD  CONSTRAINT [FKi1ysvc8ok8h6wa6t9f8oe6njg] FOREIGN KEY([size_id])
REFERENCES [dbo].[Size] ([id])
GO
ALTER TABLE [dbo].[size_product] CHECK CONSTRAINT [FKi1ysvc8ok8h6wa6t9f8oe6njg]
GO
ALTER TABLE [dbo].[size_product]  WITH CHECK ADD  CONSTRAINT [FKmnesxf69qwvk7og5n8klp4q9m] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[size_product] CHECK CONSTRAINT [FKmnesxf69qwvk7og5n8klp4q9m]
GO
ALTER TABLE [dbo].[SizeProduct]  WITH CHECK ADD  CONSTRAINT [FK_SizeProduct_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[SizeProduct] CHECK CONSTRAINT [FK_SizeProduct_Product]
GO
ALTER TABLE [dbo].[SizeProduct]  WITH CHECK ADD  CONSTRAINT [FK_SizeProduct_Size] FOREIGN KEY([size_id])
REFERENCES [dbo].[Size] ([id])
GO
ALTER TABLE [dbo].[SizeProduct] CHECK CONSTRAINT [FK_SizeProduct_Size]
GO
