USE [master]
GO
ALTER DATABASE [BlogProject] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BlogProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BlogProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BlogProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BlogProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BlogProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BlogProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [BlogProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BlogProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BlogProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BlogProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BlogProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BlogProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BlogProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BlogProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BlogProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BlogProject] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BlogProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BlogProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BlogProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BlogProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BlogProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BlogProject] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BlogProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BlogProject] SET RECOVERY FULL 
GO
ALTER DATABASE [BlogProject] SET  MULTI_USER 
GO
ALTER DATABASE [BlogProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BlogProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BlogProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BlogProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BlogProject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BlogProject] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BlogProject', N'ON'
GO
ALTER DATABASE [BlogProject] SET QUERY_STORE = OFF
GO
USE [BlogProject]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10.10.2021 09:34:57 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10.10.2021 09:34:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10.10.2021 09:34:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10.10.2021 09:34:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10.10.2021 09:34:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10.10.2021 09:34:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10.10.2021 09:34:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[PicturePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10.10.2021 09:34:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 10.10.2021 09:34:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 10.10.2021 09:34:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[CreDate] [datetime2](7) NOT NULL,
	[ContentID] [int] NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contents]    Script Date: 10.10.2021 09:34:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contents](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[CreDate] [datetime2](7) NOT NULL,
	[ViewCount] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[ShortText] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_Contents] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscribe]    Script Date: 10.10.2021 09:34:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscribe](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmailAdress] [nvarchar](max) NULL,
	[CreDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Subscribe] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211002072846_InitialDatabase', N'5.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211002074251_ContentAndCommentRelation', N'5.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211003081252_UserOtherInfo', N'5.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211003111441_UserPhotoPathUpdate', N'5.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211006200958_CreateSubscribeTable', N'5.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211009095303_ContentShortDescription', N'5.0.10')
GO
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 

INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (1, N'user', N'USER', N'8a9e1fe5-da8b-47fa-8f89-f80e22df8f5a')
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (1, 1)
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [Gender], [PicturePath]) VALUES (1, N'miodolceamor_3@hotmail.com', N'MIODOLCEAMOR_3@HOTMAIL.COM', N'miodolceamor_3@hotmail.com', N'MIODOLCEAMOR_3@HOTMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPEDAIFqb5IYEUgrmv0RvErccZuC3WUjep2rIUO/ULVwhSdReFZdPdsUzWh3QpVQng==', N'UKTSWESZ5N65NKZTSG6JTWS5HMP7LQL5', N'533eaec3-1fb9-4e0f-8ade-b3819f15a717', NULL, 0, 0, NULL, 1, 0, N'Kaan Meşe', NULL, N'1.jpg')
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [Name], [Description]) VALUES (1, N'.Net Framework', N'.Net hakkında güncell bilgiler içerir....')
INSERT [dbo].[Categories] ([ID], [Name], [Description]) VALUES (2, N'C#', N'Güncel derslerine ulaşabilirsiniz....')
INSERT [dbo].[Categories] ([ID], [Name], [Description]) VALUES (3, N'Sql Server', N'Sql Server dersleri')
INSERT [dbo].[Categories] ([ID], [Name], [Description]) VALUES (4, N'Design Patterns', N'hepsi burada')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Contents] ON 

INSERT [dbo].[Contents] ([ID], [Title], [Text], [CreDate], [ViewCount], [CategoryID], [UserID], [ShortText]) VALUES (3, N'C# Değişkenler', N'<p><b>Merhaba Arkadaşlar,</b></p><p>Bu dersimde sizler c# dilindeki veri tiplerinden bahsedeceğim. C# dilinde veri tipleri value Type ve reference Type olarak iki ana grupta incelenmektedir.</p><p><br></p><h1>VALUE TYPE</h1><p>&nbsp;BLA BLA BLA BLA BLA BLA BLA BLA</p><p><br></p><h1>REFERENCE TYPE</h1><p>BLA BLA BLA BLA BLA BLA BLA BLA</p><p><br></p><p>Umarım faydalı olmuştur. Bir sonraki dersimizde görüşmek üzere....</p>', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 2, 1, N'')
INSERT [dbo].[Contents] ([ID], [Title], [Text], [CreDate], [ViewCount], [CategoryID], [UserID], [ShortText]) VALUES (4, N'Sql Server  Nedir ?', N'<h2 style="font-family: ProximaNova-Regular; line-height: 1.1; color: rgb(57, 66, 76); margin-top: 26px; margin-bottom: 13px; font-size: 30px;">Microsoft SQL Server Nedir?</h2><p style="margin-right: 0px; margin-bottom: 13px; margin-left: 0px; color: rgb(93, 94, 95); font-size: 14px; line-height: 26px; font-family: &quot;Open Sans&quot;, sans-serif;">Microsoft SQL Server™, verilerin güvenle ve bütünlük içerisinde depolanmasını ve aynı anda birden fazla kullanıcı tarafından erişilmesini sağlayan kurumsal çaplı bir ilişkisel veri tabanı yönetim sistemidir(RDBMS). Birbiriyle ilişkili verilerin sistematik bir şekilde kaydedilmesini ve bu verilerden beslenen uygulamalar tarafından ihtiyaç anında kullanılmasına olanak sağlayarak işletmelerin BT altyapılarındaki veri aktarımını sorunsuz bir şekilde yönetmelerini sağlar.</p><p style="margin-right: 0px; margin-bottom: 13px; margin-left: 0px; color: rgb(93, 94, 95); font-size: 14px; line-height: 26px; font-family: &quot;Open Sans&quot;, sans-serif;">SQL Server, işletmeler için kritik önem taşıyan verileri şifreleme, verilere erişim sağlayan kişileri gözlemleme ve erişim kısıtlamaları tanımlama gibi güvenlik özellikleri sayesinde kullanıcılara kapsamlı bir denetim kapasitesi sunar. Yüksek Kullanılabilirlik (High Availability) ve olağanüstü durum kurtarma özelliklerini tek bir çözümde birleştiren SQL Server, hızlı yük devretme ve yük dengeleme desteği ile aksaklık süresini en aza indirir ve güvenli veri akışının optimize edilmesini sağlar.</p><p style="margin-right: 0px; margin-bottom: 13px; margin-left: 0px; color: rgb(93, 94, 95); font-size: 14px; line-height: 26px; font-family: &quot;Open Sans&quot;, sans-serif;">Bilişim, sağlık ve finans gibi çeşitli sektörlerde önde gelen şirketler tarafından tercih edilen Microsoft SQL Server, her tip kullanıcının ihtiyaçlarına uyum sağlayabilen ölçeklenebilen bir yapıya sahiptir.</p><p style="margin-right: 0px; margin-bottom: 13px; margin-left: 0px; color: rgb(93, 94, 95); font-size: 14px; line-height: 26px; font-family: &quot;Open Sans&quot;, sans-serif;"><span style="font-weight: 700;">Microsoft SQL Server ile Neler Yapabilirsiniz?</span></p><ul style="margin-bottom: 13px; color: rgb(93, 94, 95); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;"><li>Veri işleme ve depolama</li><li>Veri indeksleme ve sorgulama</li><li>Veri tabanı yönetimi</li><li>Veri akışı optimizasyonu</li><li>Veri raporlama</li><li>İlke tabanlı veri erişimi</li></ul>', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 3, 3, 1, N'')
INSERT [dbo].[Contents] ([ID], [Title], [Text], [CreDate], [ViewCount], [CategoryID], [UserID], [ShortText]) VALUES (5, N'C# Nedir? C Sharp Programlama Diliyle Neler Yapılabilir?', N'<div class="content-body__description" itemprop="description" style="-webkit-tap-highlight-color: transparent; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; margin-top: 16px; font-size: 1.5em; line-height: 1.5em; color: rgb(34, 34, 34); letter-spacing: -0.2px;">Microsoft tarafından geliştirilen bir tür programlama dili olan C Sharp, modern algoritması ve orta seviye zorluğu sayesinde yazılımcıların ilk tercih ettiği dillerden birisi oluyor. Biz de bu yazımızda hem yazılımcıların hem de yazılımcı olmak isteyenlerin merak ettiği C# sorularını yanıtladık.</div><div class="inread-tagon" style="-webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; letter-spacing: -0.2px;"></div><div class="content-body__detail" itemprop="articleBody" style="-webkit-tap-highlight-color: transparent; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; margin-top: 16px; font-size: 1.125em; line-height: 1.75em; color: rgb(34, 34, 34); letter-spacing: -0.2px;"><p style="-webkit-tap-highlight-color: transparent;"><em style="-webkit-tap-highlight-color: transparent;"><span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">C#&nbsp;</span></em>yani diğer adıyla&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;"><em style="-webkit-tap-highlight-color: transparent;">C Sharp</em>&nbsp;nedir?</span>&nbsp;C#, Microsoft tarafından geliştirilen bir programlama dilidir. Programlama dilleri arasında en çok tercih edilen&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">C ve C++</span>&nbsp;ile etkileşimli şekilde geliştirilen ve modern bir kodlama sahip olan&nbsp;<em style="-webkit-tap-highlight-color: transparent;"><span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">C#</span></em>, birçok platform destekleyen Java dili ile de oldukça fazla benzerlik gösteriyor. Bu benzerliklerden en önemlisi ise&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">.NET Framework</span>&nbsp;platformunda nesnesel bir dil olması.</p><p style="-webkit-tap-highlight-color: transparent;">C# her ne kadar önceleri C++ ve Visual Basic dillerindeki tutumsuzluk ve oluşan sorunlar yüzünden geliştirilmiş olsa da şu anki stabilitesi sayesinde, bu iki programlama dilinin önüne&nbsp;geçmiş durumda. Yazılımcıların en çok tercih ettiği dillerden birisi haline gelen C#, sunduğu gelişmiş&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">hata giderme (debugger)</span>&nbsp;özelliği sayesinde de yazılımcıların işlerini bir hayli kolaylaştırıyor.</p><p style="-webkit-tap-highlight-color: transparent;">Debugger özelliği için class yani sınıflandırma yöntemi kullanan C#, "syntax" hataları yani dizinlerdeki hataları yazılımcıya ayrı bir ekranda göstererek yazılımcının bu&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">hataları kolayca tespit&nbsp;</span>etmesini sağlıyor. Ayrıca yazılımcılar tarafından oldukça çok tercih edildiği için de internette kaynak yani C# dersleri oldukça fazla.</p><h2 style="-webkit-tap-highlight-color: transparent; font-family: TMSans; font-weight: 700; border-left: 6px solid rgb(255, 87, 34); padding: 5px 10px; margin-bottom: 10px; clear: both; font-size: 1.375em;">C# için gereken ".NET Framework" nedir?</h2><p style="-webkit-tap-highlight-color: transparent;"><img class="lazyloaded" alt="c sharp örnekleri" data-original="/images/editor/default/0002/31/9ce367bbb03197fcf09539f324f4ecc8ee594730.jpeg" src="https://www.webtekno.com/images/editor/default/0002/31/9ce367bbb03197fcf09539f324f4ecc8ee594730.jpeg" style="-webkit-tap-highlight-color: transparent; max-width: calc(100% + 60px); height: 443px; background: url(&quot;../images/loading-gray.gif&quot;) center center / 45px no-repeat rgb(221, 221, 221); width: 788px; display: inline;"></p><p style="-webkit-tap-highlight-color: transparent;"><span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">C Sharp kodları</span>, C++ ve Visual Basic kodlarından farklı algoritmaya sahip olduğu için yazılımın kodlarını direkt olarak derleyemiyor. C#, kodları yazılım olarak iki aşamada derliyor.<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">&nbsp;MIL derlemesi</span>&nbsp;denilen bu aşamalardan ilkine&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">Assembly&nbsp;</span>deniliyor. İkinci aşamadaki uzantısı ise&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">.EXE</span>&nbsp;oluyor. C# ile geliştirilen bir yazılım bu halde iken sistemler tarafından çalıştırılamadığı için devreye .NET Framework giriyor.</p><p style="-webkit-tap-highlight-color: transparent;">Yine Microsoft tarafından C# için geliştirilen .NET Framework, Microsoft Intermediate Language (MIL) olarak derlenen kodları tekrar derleyerek, uygulamayı sistemlerin&nbsp;yani bilgisayarların çalıştıracağı hale getiriyor. Yani kısaca .NET Framework, bir tür tercümanlık görevi üstleniyor.&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">C# programlama dilini</span>&nbsp;bilgisayarımızın anlayacağı şekilde tercüme ediyor.</p><p style="-webkit-tap-highlight-color: transparent;">Peki neden&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">Java, Visual Basic, C++</span>&nbsp;gibi programlama dilleri .NET Framework’e ihtiyaç duymuyor? Çünkü bazı diller kodları direkt olarak sistem dillerine çevirebiliyor, bazı dillerin de kendi bünyesinde bu işe yarayacak arayüzleri var. Mesela Java dili kodları önce byte denilen sayılara çeviriyor, bu sayıları da Java Virtual Machine dediğimiz bir sanal makinede derleyip bilgisayarların anlayacağı hale getiriyor.</p><h2 style="-webkit-tap-highlight-color: transparent; font-family: TMSans; font-weight: 700; border-left: 6px solid rgb(255, 87, 34); padding: 5px 10px; margin-bottom: 10px; clear: both; font-size: 1.375em;">C Sharp kısa tarihçesi:</h2><p style="-webkit-tap-highlight-color: transparent;"><img class="lazyloaded" alt="c sharp dersleri" data-original="/images/editor/default/0002/31/9622cb7d97020509283fe5e91e533e5274cf93a3.jpeg" src="https://www.webtekno.com/images/editor/default/0002/31/9622cb7d97020509283fe5e91e533e5274cf93a3.jpeg" style="-webkit-tap-highlight-color: transparent; max-width: calc(100% + 60px); height: 443px; background: url(&quot;../images/loading-gray.gif&quot;) center center / 45px no-repeat rgb(221, 221, 221); width: 788px; display: inline;"></p><p style="-webkit-tap-highlight-color: transparent;">İlk olarak&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">Anders Heljsberg ve ekibi&nbsp;</span>tarafından 2000 yılında geliştirilmesine başlanan ve 2002 yılında da&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">C# 1.0</span>&nbsp;olarak yayınlanan&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">C Sharp programlama dili</span>, o günden beri Windows’un desteği ile geliştirilmeye devam ediliyor. İlk yayınlandıktan sonraki 10 yılda 5.0 sürümüne güncellenen ve orta sınıf olarak nitelendirilen&nbsp;C#, özellikle modern sistemlere uygunluğu ile de yazılımcılardan tam not almış durumda.</p><p style="-webkit-tap-highlight-color: transparent;">Şu anda yeni bir algoritma mimarisi üzerinde çalışan Microsoft, bu sayede C# diline güncellemeleri çok daha kolay şekilde getirebilecek.</p><h2 style="-webkit-tap-highlight-color: transparent; font-family: TMSans; font-weight: 700; border-left: 6px solid rgb(255, 87, 34); padding: 5px 10px; margin-bottom: 10px; clear: both; font-size: 1.375em;">C Sharp ile neler yapılır?</h2><p style="-webkit-tap-highlight-color: transparent;"><img class="lazyloaded" alt="c sharp nedir" data-original="/images/editor/default/0002/31/eef958581b585a52c21af7cc7732da359d11caad.jpeg" src="https://www.webtekno.com/images/editor/default/0002/31/eef958581b585a52c21af7cc7732da359d11caad.jpeg" style="-webkit-tap-highlight-color: transparent; max-width: calc(100% + 60px); height: 443px; background: url(&quot;../images/loading-gray.gif&quot;) center center / 45px no-repeat rgb(221, 221, 221); width: 788px; display: inline;"></p><p style="-webkit-tap-highlight-color: transparent;"><span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">C# programlama dili</span>&nbsp;ile hayal ettiğiniz her şeyi yapabilir, kodlayabilirsiniz desek herhalde doğru olacaktır. Zira tasarımda ve yazılımda hayal dünyasının sınırı yoktur. C# programlama dili de en modern dil olduğu için yazılımcılara hayalindeki her şeyi programlama imkanı tanıyor. Peki C# ile hangi platformlarda neler kodlanır?</p><ul style="-webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 20px;"><li style="-webkit-tap-highlight-color: transparent;">Web Web Uygulamaları (Asp.NET)</li><li style="-webkit-tap-highlight-color: transparent;">Mobil uygulamalar</li><li style="-webkit-tap-highlight-color: transparent;">Web servisleri uygulamaları</li><li style="-webkit-tap-highlight-color: transparent;">Konsol uygulamaları</li><li style="-webkit-tap-highlight-color: transparent;">DLL yazma</li><li style="-webkit-tap-highlight-color: transparent;">Windows Form Uygulamaları</li><li style="-webkit-tap-highlight-color: transparent;">Oyun tasarlama</li></ul><h3 style="-webkit-tap-highlight-color: transparent; font-family: TMSans; font-weight: 700; border-left: 6px solid rgb(255, 87, 34); padding: 5px 10px; margin-bottom: 10px; clear: both; font-size: 1.375em;">Web Web Uygulamaları (Asp.NET):</h3><p style="-webkit-tap-highlight-color: transparent;"><img class="lazyloaded" alt="c sharp kodları" data-original="/images/editor/default/0002/31/2250cd990e6c0e09a6b1ccc60851db59ca25f863.jpeg" src="https://www.webtekno.com/images/editor/default/0002/31/2250cd990e6c0e09a6b1ccc60851db59ca25f863.jpeg" style="-webkit-tap-highlight-color: transparent; max-width: calc(100% + 60px); height: 443px; background: url(&quot;../images/loading-gray.gif&quot;) center center / 45px no-repeat rgb(221, 221, 221); width: 788px; display: inline;"></p><p style="-webkit-tap-highlight-color: transparent;"><span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">C# ile Asp.NET</span>&nbsp;yazılabildiği için web tasarımcılar da genellikle bu dili kullanıyorlar. Asp.NET kullanılarak oluşturulan bir web uygulaması içerisinde onlarca Asp.NET web uygulaması barındırabileceği için C# ile kodlamak hem rahatlık hem de uygulamaları derleme açısından çok kolaylık tanıyor.&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">.XML biçimindeki</span>&nbsp;bu dosyalar, web sayfası ve uygulamalarının tüm temel ve teknik bilgilerini içerebilir.</p><h3 style="-webkit-tap-highlight-color: transparent; font-family: TMSans; font-weight: 700; border-left: 6px solid rgb(255, 87, 34); padding: 5px 10px; margin-bottom: 10px; clear: both; font-size: 1.375em;">Mobil uygulamalar:</h3><p style="-webkit-tap-highlight-color: transparent;"><img class="lazyloaded" alt="c sharp mobil uygulama" data-original="/images/editor/default/0002/31/0f15e267833798fa416e028094777d2a12f3395d.jpeg" src="https://www.webtekno.com/images/editor/default/0002/31/0f15e267833798fa416e028094777d2a12f3395d.jpeg" style="-webkit-tap-highlight-color: transparent; max-width: calc(100% + 60px); height: 443px; background: url(&quot;../images/loading-gray.gif&quot;) center center / 45px no-repeat rgb(221, 221, 221); width: 788px; display: inline;"></p><p style="-webkit-tap-highlight-color: transparent;">Her ne kadar artık&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">Windows Phone&nbsp;</span>kalmamış olsa da yine de belirtmek istedik.<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">&nbsp;Xamarin</span>&nbsp;sayesinde C# programlama dili ile Windows Phone için mobil uygulama geliştirebilirsiniz. Yine de bunu pek tavsiye etmiyoruz, çünkü Windows Phone''un fişi çekildi. Bir umut, Microsoft''ın Surface Phone adını verdiği akıllı telefonlar piyasada tutarsa, o zaman tekrar gündeme gelebilir. Bir bakın, bilginiz olsun yeterli desek yeridir.</p><h3 style="-webkit-tap-highlight-color: transparent; font-family: TMSans; font-weight: 700; border-left: 6px solid rgb(255, 87, 34); padding: 5px 10px; margin-bottom: 10px; clear: both; font-size: 1.375em;">Web servisleri uygulamaları:</h3><p style="-webkit-tap-highlight-color: transparent;"><img class="lazyloaded" alt="c# öğrenme" data-original="/images/editor/default/0002/31/9756071b6ca6c8189c8256e1b1665c11fdf037fe.jpeg" src="https://www.webtekno.com/images/editor/default/0002/31/9756071b6ca6c8189c8256e1b1665c11fdf037fe.jpeg" style="-webkit-tap-highlight-color: transparent; max-width: calc(100% + 60px); height: 443px; background: url(&quot;../images/loading-gray.gif&quot;) center center / 45px no-repeat rgb(221, 221, 221); width: 788px; display: inline;"></p><p style="-webkit-tap-highlight-color: transparent;"><span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">C#</span>&nbsp;ile kısaca web sayfası servisleri ile alakalı uygulamalar geliştirebilirsiniz. Bu geliştirdiğiniz web servis uygulamalarını ise&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">FTP</span>&nbsp;veya&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">XML</span>&nbsp;veri transferleri sayesinde&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">web sayfa ve uygulamalarına</span>&nbsp;aktarabilirsiniz.</p><h3 style="-webkit-tap-highlight-color: transparent; font-family: TMSans; font-weight: 700; border-left: 6px solid rgb(255, 87, 34); padding: 5px 10px; margin-bottom: 10px; clear: both; font-size: 1.375em;">Konsol uygulamaları:</h3><p style="-webkit-tap-highlight-color: transparent;"><img class="lazyloaded" alt="c# cmd" data-original="/images/editor/default/0002/31/232c980b66b6094c428a63f46c71b846de28aaf6.jpeg" src="https://www.webtekno.com/images/editor/default/0002/31/232c980b66b6094c428a63f46c71b846de28aaf6.jpeg" style="-webkit-tap-highlight-color: transparent; max-width: calc(100% + 60px); height: 443px; background: url(&quot;../images/loading-gray.gif&quot;) center center / 45px no-repeat rgb(221, 221, 221); width: 788px; display: inline;"></p><p style="-webkit-tap-highlight-color: transparent;">Bu özellik sayesinde ise yazdığınız Windows tabanlı çalışacak uygulama kodlarınızı&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">CMD ekranı</span>&nbsp;sayesinde bilgisayarınıza tanıtabilirsiniz.&nbsp;</p><h3 style="-webkit-tap-highlight-color: transparent; font-family: TMSans; font-weight: 700; border-left: 6px solid rgb(255, 87, 34); padding: 5px 10px; margin-bottom: 10px; clear: both; font-size: 1.375em;">DLL yazma:</h3><p style="-webkit-tap-highlight-color: transparent;"><img class="lazyloaded" alt="c# programlama" data-original="/images/editor/default/0002/31/2a2d5572363d19e6b65c3cfda7d1dfeef10f1ac9.jpeg" src="https://www.webtekno.com/images/editor/default/0002/31/2a2d5572363d19e6b65c3cfda7d1dfeef10f1ac9.jpeg" style="-webkit-tap-highlight-color: transparent; max-width: calc(100% + 60px); height: 443px; background: url(&quot;../images/loading-gray.gif&quot;) center center / 45px no-repeat rgb(221, 221, 221); width: 788px; display: inline;"></p><p style="-webkit-tap-highlight-color: transparent;"><span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">C Sharp programlama dilinin DLL yazma özelliğini</span>&nbsp;söylemeden önce dilerseniz&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">DLL nedir&nbsp;</span>sorusunun cevabını verelim. Açılımı Dinamic Link Library olan DLL’nin Türkçe karşılığı ise dinamik kod kütüphanesidir. Peki bu ne demek? Mesela diyelim ki C# ile bir tür yapı oluşturdunuz ve bu yapının çalışabilmesi için ise sürekli kendini tekrar ederek çalıştırılması gereken bir kod satırı var.&nbsp;</p><p style="-webkit-tap-highlight-color: transparent;">Döngü olacağı için bu kod satırını sonsuza kadar yazamazsınız, değil mi? İşte burada DLL yardımınıza koşuyor. Bu gereken kod satırlarını DLL içine yazıyoruz ve uygulamamız ne zaman bu kodlara ihtiyaç duyarsa&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">DLL’yi çağırarak&nbsp;</span>gereken kodları istiyor.</p><h3 style="-webkit-tap-highlight-color: transparent; font-family: TMSans; font-weight: 700; border-left: 6px solid rgb(255, 87, 34); padding: 5px 10px; margin-bottom: 10px; clear: both; font-size: 1.375em;">Windows Form Uygulamaları:</h3><p style="-webkit-tap-highlight-color: transparent;"><img class="lazyloaded" alt="c# dersleri" data-original="/images/editor/default/0002/31/976361eca79e30dd6cbb6fb9e9cf3a3e018927c5.jpeg" src="https://www.webtekno.com/images/editor/default/0002/31/976361eca79e30dd6cbb6fb9e9cf3a3e018927c5.jpeg" style="-webkit-tap-highlight-color: transparent; max-width: calc(100% + 60px); height: 443px; background: url(&quot;../images/loading-gray.gif&quot;) center center / 45px no-repeat rgb(221, 221, 221); width: 788px; display: inline;"></p><p style="-webkit-tap-highlight-color: transparent;">İngilizce anlamı&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">Graphical User Interface (GUI)</span>&nbsp;olan bu uygulamalar ise, bilgisayarımızda çalışacak grafik arayüzlü programlara deniliyor. Yani mesela Steam bir&nbsp;<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">grafik arayüzü bulunan uygulama</span>&nbsp;olduğu için Windows form uygulaması kategorisine de giriyor.</p><h3 style="-webkit-tap-highlight-color: transparent; font-family: TMSans; font-weight: 700; border-left: 6px solid rgb(255, 87, 34); padding: 5px 10px; margin-bottom: 10px; clear: both; font-size: 1.375em;">Oyun tasarlama:</h3><p style="-webkit-tap-highlight-color: transparent;"><img class="lazyloaded" alt="c# kodlama dersleri" data-original="/images/editor/default/0002/31/542fe6d1b59873c26931e4ed9b7ab3c80efb6756.jpeg" src="https://www.webtekno.com/images/editor/default/0002/31/542fe6d1b59873c26931e4ed9b7ab3c80efb6756.jpeg" style="-webkit-tap-highlight-color: transparent; max-width: calc(100% + 60px); height: 443px; background: url(&quot;../images/loading-gray.gif&quot;) center center / 45px no-repeat rgb(221, 221, 221); width: 788px; display: inline;"></p><p style="-webkit-tap-highlight-color: transparent;"><span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">Unity</span>&nbsp;dahil hemen hemen bütün<span style="-webkit-tap-highlight-color: transparent; font-weight: bolder;">&nbsp;oyun motorları C# desteklediği için&nbsp;</span>oyun tasarlamada da kullanılabiliyor. Bu dillerle tasarlanan oyunların çoğu, aslında günümüzdeki popüler oyunlar arasında yer alıyor. Yani eğer bir oyun tasarımcısı olmak istiyor, görsel değil de işin teknik tarafını merak ediyorsanız C Sharp bilmeniz şart. Elbette piyasada alternatifler var. Ancak işin temeli C Sharp.&nbsp;</p><p style="-webkit-tap-highlight-color: transparent;"><br></p><p style="-webkit-tap-highlight-color: transparent;">Evet bu günlükte bu kadar bir sonraki dersimizde <u><b>GÖRÜŞÜRÜZ...</b></u></p></div>', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 2, 1, N'')
INSERT [dbo].[Contents] ([ID], [Title], [Text], [CreDate], [ViewCount], [CategoryID], [UserID], [ShortText]) VALUES (6, N'bu bir test makalesidir....', N'<p>bu bir email test makalesidir....</p>', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 1, 1, N'')
INSERT [dbo].[Contents] ([ID], [Title], [Text], [CreDate], [ViewCount], [CategoryID], [UserID], [ShortText]) VALUES (7, N'test içerik 2...', N'<p>bu bir test içeriği</p>', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 1, 1, N'')
INSERT [dbo].[Contents] ([ID], [Title], [Text], [CreDate], [ViewCount], [CategoryID], [UserID], [ShortText]) VALUES (8, N'Enum Nedir?', N'<p><b>Enum (Enumaration)</b></p><p><br></p><p>Bu yapı yazılım dilinde enum, enumaration ya da enum sabitleri olarak adlandırılır. Değişkenlerin alabileceği değerlerin sabit (belli) olduğu durumlarda programı daha okunabilir hale getirmek için kullanılır. Programda birçok değişkene tek tek sayısal değer vermek yerine "enum" kullanılabilir. Özet olarak "enum" yapısı sayıları anlamlı şekilde isimlendirerek kullanabilmeye izin verir.</p><p><br></p><p><b>En genel "enum" bildirimi şu şekilde yapılır :</b></p><p><br></p><p><b>public enum SehirPlakalari</b></p><p><b>{</b></p><p><b>&nbsp; &nbsp;Ankara = 6, Kocaeli = 41, İzmir = 35, Adana = 1, Hatay = 31</b></p><p><b>}</b></p><p><br></p><p>SehirPlakalari isimli Enum yapısı içerisinde birkaç sehir ve bunlara atanan sayısal değerler tanımlanabilir. Enum yapısının içindeki verilere erişmek için ‘GetNames’metodu kullanılır. Bu metot sayesinde bir "enum" sabiti içerisindeki değerler alınıp string (karakter katarı) formatında bir diziye atanabilir.</p><p><br></p><p>GetNames( ) Metodunun Kullanımı :</p><p><br></p><p>string[] SehirPlakalariDizisi = Enum.Getnames(typeof(SehirPlakalari));</p><p><br></p><p>Bu kod ‘SehirPlakaları’ isimli "enum"daki sabitleri yani tanımlanan şehirleri karakter katarı tipinde tanımlanmış ‘SehirPlakalarıDizisi’ adlı diziye atar.</p><p><br></p><p>ToString() Methodunun Kullanımı :</p><p><br></p><p>ToString() metoduna aşağıda belirtilen parametreler verilerek Enum sabiti içerisindeki istenilen değerlere ulaşılabilir.</p><p><br></p><p>Parametre&nbsp; &nbsp; &nbsp;Görevi</p><p>G veya g&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Değeri genel formatta yazar.</p><p>D veya d&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Değerin sayısal karşılığını yazar.</p><p>X veya x&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Değerin Hexadecimal karşılığını yazar.</p><p><br></p><p>Konu ile ilgili örnek bir uygulama aşağıda verilmiştir. Uygulamada IsletimSistemi isminde bir "enum" oluşturulmuştur.</p><p><br></p><p>using System;</p><p>using System.Collections.Generic;</p><p>using System.Linq;</p><p>using System.Text;&nbsp;</p><p>namespace ConsoleApplication3</p><p>{</p><p>&nbsp; &nbsp; class Program</p><p>&nbsp; &nbsp; {</p><p>&nbsp; &nbsp; &nbsp; &nbsp; enum IsletimSistemi</p><p>&nbsp; &nbsp; &nbsp; &nbsp; {</p><p>&nbsp; &nbsp; &nbsp; &nbsp; windows = 99, linux = 123,</p><p>&nbsp; &nbsp; &nbsp; &nbsp; }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; static void Main(String[] args)</p><p>&nbsp; &nbsp; &nbsp; &nbsp; {&nbsp; &nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; int GirilenDeger;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IsletimSistemi IslSis = new IsletimSistemi();</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Console.WriteLine("İşletim Sisteminizi Seçiniz");</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Console.WriteLine("1. Windows için");</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Console.WriteLine("2. Linux için");</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; GirilenDeger = Convert.ToInt32(Console.ReadLine());</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; switch (GirilenDeger)</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; case 1:</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IslSis = IsletimSistemi.windows;</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Console.WriteLine("İşletim Sistemi = " + IslSis.ToString("G"));</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Console.WriteLine("İşletim sistemine Enum içinde verilen değer = " + IslSis.ToString("D"));</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Console.WriteLine("Değerin hexadecimal karşılığı = " + IslSis.ToString("X"));</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; break;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;case 2:</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IslSis = IsletimSistemi.linux;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Console.WriteLine("İşletim Sistemi = " +&nbsp; &nbsp; &nbsp; &nbsp;IslSis.ToString("G"));</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Console.WriteLine("İşletim sistemine Enum içinde verilen değer = " + IslSis.ToString("D"));</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Console.WriteLine("Değerin hexadecimal karşılığı = " + IslSis.ToString("X"));</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; break;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;default:</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Console.WriteLine("Bu isletim sistemi mevcut değil");</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; break;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; }</p><p>&nbsp; &nbsp; &nbsp;}</p><p>}</p>', CAST(N'2021-10-09T13:05:59.8852721' AS DateTime2), 3, 2, 1, N'Bu yapı yazılım dilinde enum, enumaration ya da enum sabitleri olarak adlandırılır. Değişkenlerin alabileceği değerlerin sabit (belli) olduğu durumlarda programı daha okunabilir hale getirmek için kullanılır. Programda birçok değişkene tek tek sayısal değer vermek yerine "enum" kullanılabilir. ')
SET IDENTITY_INSERT [dbo].[Contents] OFF
GO
SET IDENTITY_INSERT [dbo].[Subscribe] ON 

INSERT [dbo].[Subscribe] ([ID], [EmailAdress], [CreDate]) VALUES (17, N'ekrem.yildirim@windowslive.com', CAST(N'2021-10-09T11:12:11.6895617' AS DateTime2))
INSERT [dbo].[Subscribe] ([ID], [EmailAdress], [CreDate]) VALUES (18, N'kayaogluemre@gmail.com', CAST(N'2021-10-09T11:15:33.2254017' AS DateTime2))
INSERT [dbo].[Subscribe] ([ID], [EmailAdress], [CreDate]) VALUES (19, N'muhammet333@msn.com', CAST(N'2021-10-09T11:15:38.8774720' AS DateTime2))
INSERT [dbo].[Subscribe] ([ID], [EmailAdress], [CreDate]) VALUES (20, N'esppri@gmail.com', CAST(N'2021-10-09T11:16:03.2585615' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Subscribe] OFF
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 10.10.2021 09:34:57 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 10.10.2021 09:34:57 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 10.10.2021 09:34:57 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 10.10.2021 09:34:57 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 10.10.2021 09:34:57 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 10.10.2021 09:34:57 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 10.10.2021 09:34:57 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_ContentID]    Script Date: 10.10.2021 09:34:57 ******/
CREATE NONCLUSTERED INDEX [IX_Comments_ContentID] ON [dbo].[Comments]
(
	[ContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_UserID]    Script Date: 10.10.2021 09:34:57 ******/
CREATE NONCLUSTERED INDEX [IX_Comments_UserID] ON [dbo].[Comments]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Contents_CategoryID]    Script Date: 10.10.2021 09:34:57 ******/
CREATE NONCLUSTERED INDEX [IX_Contents_CategoryID] ON [dbo].[Contents]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Contents_UserID]    Script Date: 10.10.2021 09:34:57 ******/
CREATE NONCLUSTERED INDEX [IX_Contents_UserID] ON [dbo].[Contents]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contents] ADD  DEFAULT (N'') FOR [ShortText]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_AspNetUsers_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_AspNetUsers_UserID]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Contents_ContentID] FOREIGN KEY([ContentID])
REFERENCES [dbo].[Contents] ([ID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Contents_ContentID]
GO
ALTER TABLE [dbo].[Contents]  WITH CHECK ADD  CONSTRAINT [FK_Contents_AspNetUsers_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Contents] CHECK CONSTRAINT [FK_Contents_AspNetUsers_UserID]
GO
ALTER TABLE [dbo].[Contents]  WITH CHECK ADD  CONSTRAINT [FK_Contents_Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Contents] CHECK CONSTRAINT [FK_Contents_Categories_CategoryID]
GO
USE [master]
GO
ALTER DATABASE [BlogProject] SET  READ_WRITE 
GO
