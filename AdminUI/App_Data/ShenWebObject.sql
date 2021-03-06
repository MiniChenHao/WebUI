USE [ShenWebObject]
GO
/****** Object:  Table [dbo].[t_Sys_Users]    Script Date: 09/26/2016 18:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Sys_Users](
	[UserID] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[CreateDate] [datetime] NOT NULL,
	[DeleteFlag] [int] NOT NULL,
 CONSTRAINT [PK_t_Sys_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[t_Sys_Users] ([UserID], [UserName], [Password], [Email], [CreateDate], [DeleteFlag]) VALUES (N'b883eae0-b86e-462d-9adf-618454037a3d', N'system', N'54B53072540EEEB8F8E9343E71F28176', N'2523076936@qq.com', CAST(0x0000A672010E3B78 AS DateTime), 0)
/****** Object:  Table [dbo].[t_Sys_Roles]    Script Date: 09/26/2016 18:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Sys_Roles](
	[RoleID] [uniqueidentifier] NOT NULL,
	[RoleName] [varchar](50) NULL,
	[RoleRemark] [varchar](max) NULL,
	[AllowEdit] [int] NOT NULL,
	[AllowDelete] [int] NOT NULL,
	[SortCode] [int] NULL,
	[DeleteFlag] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatorID] [varchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifierID] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_Sys_Roles', @level2type=N'COLUMN',@level2name=N'DeleteFlag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_Sys_Roles', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
INSERT [dbo].[t_Sys_Roles] ([RoleID], [RoleName], [RoleRemark], [AllowEdit], [AllowDelete], [SortCode], [DeleteFlag], [CreateDate], [CreatorID], [ModifyDate], [ModifierID]) VALUES (N'0a547f41-022a-4756-b391-0938148cbd54', N'超级管理员', N'可以进行任何操作', 0, 0, 1, 0, CAST(0x0000A675001D87C4 AS DateTime), N'B883EAE0-B86E-462D-9ADF-618454037A3D', CAST(0x0000A675001D87C4 AS DateTime), N'B883EAE0-B86E-462D-9ADF-618454037A3D')
/****** Object:  Table [dbo].[t_Sys_Menus]    Script Date: 09/26/2016 18:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Sys_Menus](
	[MenuID] [uniqueidentifier] NOT NULL,
	[ParentID] [varchar](50) NULL,
	[MenuName] [nvarchar](50) NULL,
	[MenuImg] [nvarchar](100) NULL,
	[MenuType] [int] NULL,
	[NavigateUrl] [nvarchar](200) NULL,
	[SortCode] [int] NULL,
	[DeleteFlag] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_t_Sys_Menus] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'a937318b-2819-4f1e-927a-045885c6f22f', N'b2ea3cb5-5d1e-4ff7-959d-ee186620caf9', N'删除', N'delete.png', -1, N'DELETE()', 3, 0, CAST(0x0000A55C00C3E8B4 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'faa4ab29-29d3-422b-a602-05d6ba4adf07', N'0', N'数据库管理', N'', 1, NULL, 2, 0, CAST(0x0000A52800DC0FFB AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'969e56de-dfdf-4894-b2a7-06fb165947a5', N'b2ea3cb5-5d1e-4ff7-959d-ee186620caf9', N'分配成员', N'2012081511913.png', -1, N'ALLOWMEMBER()', 4, 0, CAST(0x0000A55C00F2A262 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'db81f3bf-9183-4de9-9a25-104812f76fca', N'07a5f352-303d-444a-b6ec-a76f31c173f2', N'按钮 - 新增页', N'', 4, N'/Admin/SHBase/SysMenu/ButtonForm.aspx', 1, 0, CAST(0x0000A54C0112B8BC AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'5eeb58ad-8402-4cd5-b7cb-15ebf1d30397', N'2da088b0-b752-4b08-8d42-ca955d75892a', N'数据资源管理器', N'', 3, N'/BasePage/SysData/DataResourceManager.aspx', 1, 0, CAST(0x0000A68D00BA7C7A AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'c24c7e0d-ce3d-4cea-9409-16ac8997b109', N'cd402f11-7046-4540-8715-4fa136dcb50b', N'系统错误日志', N'413.png', 3, N'/BasePage/SysLog/SystemErrorLogList.aspx', 5, 0, CAST(0x0000A68700A0493D AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'06c6bc2b-86a5-47c3-87d2-17a6def8ec80', N'2da088b0-b752-4b08-8d42-ca955d75892a', N'表结构', N'', 3, N'/BasePage/SysData/TableStructure.aspx', 2, 0, CAST(0x0000A68D00BAED08 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'0ea7883b-a23c-45e1-b059-1cd8293f363e', N'ecd9e47d-e19b-4da8-a11a-51af36dd898e', N'菜单 - 编辑页', N'', 4, N'/BasePage/SysMenu/MenuForm.aspx', 2, 0, CAST(0x0000A54C0101E51B AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'70e330cc-58f7-4354-be5a-1dea4874277e', N'ecd9e47d-e19b-4da8-a11a-51af36dd898e', N'菜单 - 图标全取', N'', 4, N'/BasePage/SysMenu/Icons_List.aspx', 3, 0, CAST(0x0000A54C010A4192 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'2f59405e-03fb-4d5b-98ef-1e638e5928fa', N'ecd9e47d-e19b-4da8-a11a-51af36dd898e', N'新增', N'add.png', -1, N'ADD()', 1, 0, CAST(0x0000A55C00B7DD1E AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'93f6b497-4674-4ba9-82e5-29073d12161a', N'89b074cc-fb23-43d2-b22c-fb0e8682e1bc', N'编辑', N'edit.png', -1, N'EDIT()', 2, 0, CAST(0x0000A55C00C3F00E AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'91aa8e54-e13d-4917-8976-3a665378c2d9', N'b2ea3cb5-5d1e-4ff7-959d-ee186620caf9', N'部门 - 新增页', N'', 4, N'/Admin/SHBase/SysOrg/OrganizationForm.aspx', 1, 0, CAST(0x0000A54C010BD182 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'0372090f-7402-4dde-ba14-44f3338f2add', N'b7d5035d-c29f-4f79-bdc0-8b5ed3cc0657', N'项目管理', N'189.png', 2, N'', 4, 0, CAST(0x0000A55900FF2A46 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'3c12313c-081d-4027-84f8-452ff2cb9d9c', N'01d0cfe6-0cfc-489d-92dd-e5f33f459871', N'员工管理', N'20130508034816125_easyicon_net_32.png', 3, N'/Admin/SHBase/SysEmployee/EmployeeIndex.aspx', 6, 0, CAST(0x0000A5E5009ACA45 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'cd402f11-7046-4540-8715-4fa136dcb50b', N'b7d5035d-c29f-4f79-bdc0-8b5ed3cc0657', N'系统应用', N'189.png', 2, NULL, 1, 0, CAST(0x0000A5260109FC34 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'ecd9e47d-e19b-4da8-a11a-51af36dd898e', N'cd402f11-7046-4540-8715-4fa136dcb50b', N'菜单导航', N'sitemap.png', 3, N'/BasePage/SysMenu/MenuList.aspx', 1, 0, CAST(0x0000A526010A99B7 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'34a7f277-00fc-4e55-800b-53a4902ae85b', N'11fef729-2066-4853-844b-aae928031787', N'基础国家', N'map6.png', 3, N'/Admin/SHBase/SysCountry/CountryList.aspx', 1, 0, CAST(0x0000A5B900F1231E AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'8b9280f8-3ed0-44e9-9a8f-5b74125b3c05', N'ecd9e47d-e19b-4da8-a11a-51af36dd898e', N'菜单 - 新增页', N'', 4, N'/BasePage/SysMenu/MenuForm.aspx', 1, 0, CAST(0x0000A54C01017E14 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'02de0372-6a98-448a-bba6-5e1689dfa820', N'07a5f352-303d-444a-b6ec-a76f31c173f2', N'新增', N'add.png', -1, N'ADD()', 1, 0, CAST(0x0000A55C00C3DECB AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'6b9721ef-cdac-4774-a803-765f2718dd13', N'ecd9e47d-e19b-4da8-a11a-51af36dd898e', N'编辑', N'edit.png', -1, N'EDIT()', 2, 0, CAST(0x0000A55C00B8BFCD AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'587680d0-14d7-44c2-93ac-7733515bbf1d', N'89b074cc-fb23-43d2-b22c-fb0e8682e1bc', N'角色 - 新增页', N'', 4, N'/Admin/SHBase/SysRole/RoleForm.aspx', 1, 0, CAST(0x0000A55A00F49235 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'3acb9c61-4598-480f-b7b3-7ed1cb783ce5', N'b2ea3cb5-5d1e-4ff7-959d-ee186620caf9', N'编辑', N'edit.png', -1, N'EDIT()', 2, 0, CAST(0x0000A55C00C3E7EC AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'b7d5035d-c29f-4f79-bdc0-8b5ed3cc0657', N'0', N'系统管理', N'', 1, NULL, 1, 0, CAST(0x0000A50300DCAD15 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'3ebd5965-1bdc-44b6-a839-8bb94192493b', N'524f3377-73f1-4f1b-a860-b053c8a2c648', N'删除数据管理', N'147.png', 3, N'', 2, 0, CAST(0x0000A66800B574F3 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'ab62dda3-3700-45c4-8b90-8d23930c6de1', N'07a5f352-303d-444a-b6ec-a76f31c173f2', N'编辑', N'edit.png', -1, N'EDIT()', 2, 0, CAST(0x0000A55C00C3DF90 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'1313ae01-c6fb-46ca-a234-8e9ff3936943', N'34a7f277-00fc-4e55-800b-53a4902ae85b', N'新增', N'add.png', -1, N'ADD()', 1, 0, CAST(0x0000A5BD01851219 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'6721bf5d-5ad1-431b-8ce4-94e430b42431', N'cd402f11-7046-4540-8715-4fa136dcb50b', N'用户管理', N'userregedit.png', 3, N'/BasePage/SysUser/UserList.aspx', 3, 0, CAST(0x0000A54800C3FF9C AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'1b71c0c8-a8fb-41bd-8903-a024508afc3a', N'ecd9e47d-e19b-4da8-a11a-51af36dd898e', N'菜单 - 按钮分配页', N'', 4, N'/BasePage/SysMenu/AllowButtonForm.aspx', 4, 0, CAST(0x0000A55C00F58B84 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'6ce35a70-c569-4482-8ebf-a06656de0b95', N'3c12313c-081d-4027-84f8-452ff2cb9d9c', N'员工 - 员工列表页', N'', 3, N'/Admin/SHBase/SysEmployee/EmployeeList.aspx', 2, 0, CAST(0x0000A5E500F8A105 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'5c998e25-f578-4f46-a647-a2951f4c48de', N'b2ea3cb5-5d1e-4ff7-959d-ee186620caf9', N'部门 - 编辑页', N'', 4, N'/Admin/SHBase/SysOrg/OrganizationForm.aspx', 2, 0, CAST(0x0000A54C010C3B0A AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'9435568b-ef54-45aa-a1f9-a60fa1af7973', N'ecd9e47d-e19b-4da8-a11a-51af36dd898e', N'删除', N'delete.png', -1, N'DELETE()', 3, 0, CAST(0x0000A55C00BA921C AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'07a5f352-303d-444a-b6ec-a76f31c173f2', N'cd402f11-7046-4540-8715-4fa136dcb50b', N'操作按钮', N'567.png', 3, N'/BasePage/SysButton/ButtonList.aspx', 2, 0, CAST(0x0000A54800A68B64 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'11fef729-2066-4853-844b-aae928031787', N'faa4ab29-29d3-422b-a602-05d6ba4adf07', N'基础数据', N'189.png', 2, N'', 2, 0, CAST(0x0000A5B900F07C39 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'140f8476-d9a0-45df-a4d3-ac022accc258', N'b2ea3cb5-5d1e-4ff7-959d-ee186620caf9', N'部门 - 成员分配页', N'', 4, N'/Admin/SHBase/SysOrg/OrganizationSet.aspx', 3, 0, CAST(0x0000A54C010C9671 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'6e6893c3-8d64-4e06-9e4f-ad7aafb82584', N'ecd9e47d-e19b-4da8-a11a-51af36dd898e', N'分配按钮', N'bricks.png', -1, N'ALLOWBUTTON()', 4, 0, CAST(0x0000A55C00C3D633 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'524f3377-73f1-4f1b-a860-b053c8a2c648', N'faa4ab29-29d3-422b-a602-05d6ba4adf07', N'数据表', N'189.png', 2, N'', 1, 0, CAST(0x0000A54700BB0FBF AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'5347775a-6030-442d-b4c1-b6c1ef3e21df', N'b2ea3cb5-5d1e-4ff7-959d-ee186620caf9', N'新增', N'add.png', -1, N'ADD()', 1, 0, CAST(0x0000A55C00C3E715 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'bffb0829-5c11-46f5-8cb6-b9bcaf190d8b', N'6ce35a70-c569-4482-8ebf-a06656de0b95', N'新增', N'add.png', -1, N'ADD()', 1, 0, CAST(0x0000A5E500F96920 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'0294cef0-542c-4a1a-b067-ba1fe6a30e17', N'89b074cc-fb23-43d2-b22c-fb0e8682e1bc', N'角色 - 权限分配页', N'', 4, N'/Admin/SHBase/SysRole/AllotAuthorityForm.aspx', 3, 0, CAST(0x0000A55C00F4E74E AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'9603866f-866d-42aa-9a89-bd9d53802a78', N'89b074cc-fb23-43d2-b22c-fb0e8682e1bc', N'新增', N'add.png', -1, N'ADD()', 1, 0, CAST(0x0000A55C00C3EF4E AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'e13bc13e-ac71-489e-9705-bf3521986bce', N'07a5f352-303d-444a-b6ec-a76f31c173f2', N'按钮 - 编辑页', N'', 4, N'/Admin/SHBase/SysMenu/ButtonForm.aspx', 2, 0, CAST(0x0000A54C0113042B AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'2da088b0-b752-4b08-8d42-ca955d75892a', N'524f3377-73f1-4f1b-a860-b053c8a2c648', N'资源管理', N'576.png', 3, N'/BasePage/SysData/DataResourcesIndex.aspx', 1, 0, CAST(0x0000A55C0100E660 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'13d89cee-a981-4369-83a4-ce5f7b074fdf', N'b7d5035d-c29f-4f79-bdc0-8b5ed3cc0657', N'个人应用', N'189.png', 2, NULL, 2, 0, CAST(0x0000A526011F883E AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'0796b6aa-55be-4dc3-be73-cfc3c35602b7', N'3c12313c-081d-4027-84f8-452ff2cb9d9c', N'员工 - 所属部门页', N'', 3, N'/Admin/SHBase/SysEmployee/EmployeeLeft.aspx', 1, 0, CAST(0x0000A5E500F83DD2 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'f2e5c8e9-ab44-4258-80fd-d4512a3b48ec', N'07a5f352-303d-444a-b6ec-a76f31c173f2', N'按钮 - 图标全取', N'', 4, N'/Admin/SHBase/SysMenu/Icons_List.aspx', 3, 0, CAST(0x0000A54C0113388D AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'f6cd7e80-2003-439c-bc21-dc22b9586021', N'89b074cc-fb23-43d2-b22c-fb0e8682e1bc', N'角色 - 编辑页', N'', 4, N'/Admin/SHBase/SysRole/RoleForm.aspx', 2, 0, CAST(0x0000A55A00F4CF2B AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'01d0cfe6-0cfc-489d-92dd-e5f33f459871', N'b7d5035d-c29f-4f79-bdc0-8b5ed3cc0657', N'生产管理', N'189.png', 2, NULL, 3, 0, CAST(0x0000A526012015BD AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'b2ea3cb5-5d1e-4ff7-959d-ee186620caf9', N'01d0cfe6-0cfc-489d-92dd-e5f33f459871', N'部门管理', N'20130508035912738_easyicon_net_32.png', 3, N'/Admin/SHBase/SysOrg/OrganizationList.aspx', 4, 0, CAST(0x0000A54800FFA188 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'6fa3e101-a28e-479d-a634-f0bafd8c852d', N'89b074cc-fb23-43d2-b22c-fb0e8682e1bc', N'分配权限', N'chart_organisation_add.png', -1, N'ALLOWAUTHORITY()', 3, 0, CAST(0x0000A58700ED6E7F AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'89b074cc-fb23-43d2-b22c-fb0e8682e1bc', N'cd402f11-7046-4540-8715-4fa136dcb50b', N'角色管理', N'20130508035646751_easyicon_net_32.png', 3, N'/BasePage/SysRole/RoleList.aspx', 4, 0, CAST(0x0000A55400EE8BF8 AS DateTime))
INSERT [dbo].[t_Sys_Menus] ([MenuID], [ParentID], [MenuName], [MenuImg], [MenuType], [NavigateUrl], [SortCode], [DeleteFlag], [CreateDate]) VALUES (N'b14aa090-f44c-4c6e-8d2e-fd961699c5d3', N'07a5f352-303d-444a-b6ec-a76f31c173f2', N'删除', N'delete.png', -1, N'DELETE()', 3, 0, CAST(0x0000A55C00C3E04C AS DateTime))
/****** Object:  Table [dbo].[t_Sys_Buttons]    Script Date: 09/26/2016 18:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Sys_Buttons](
	[ButtonID] [uniqueidentifier] NOT NULL,
	[ButtonName] [nvarchar](50) NOT NULL,
	[ButtonImg] [nvarchar](50) NULL,
	[ButtonCode] [nvarchar](50) NULL,
	[ButtonType] [int] NULL,
	[SortCode] [int] NULL,
	[DeleteFlag] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ButtonRemark] [nvarchar](max) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'd00a31ce-31b0-4156-944d-095688f7a1ee', N'取消', N'cancel.png', N'OPENCLOSE()', -1, 21, 0, CAST(0x0000A55A010E16FD AS DateTime), N'取消按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'595a0b61-6946-4b6a-a8bd-10d0905d97e4', N'编辑', N'edit.png', N'EDIT()', -1, 2, 0, CAST(0x0000A54800B6FB64 AS DateTime), N'编辑按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'79296703-c4c8-45b5-8e2d-179f0bfa1d49', N'导出', N'page_white_excel.png', N'EXPORT()', -1, 7, 0, CAST(0x0000A55A0101F29D AS DateTime), N'导出按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'9f10eeea-c51f-4baa-8302-1935fec52ddb', N'导入', N'page_refresh.png', N'INPORT()', -1, 6, 0, CAST(0x0000A55A010142B6 AS DateTime), N'导入按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'9f068ba8-e85f-4dc8-ae96-1a46225b2942', N'删除', N'delete.png', N'DELETE()', -1, 3, 0, CAST(0x0000A55901002FA5 AS DateTime), N'删除按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'1c553246-c300-4bbe-89dd-253a572db0f4', N'新增', N'add.png', N'ADD()', -1, 1, 0, CAST(0x0000A54800B5AD2C AS DateTime), N'新增按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'4ad6c84d-6fc9-41ff-b0ab-25a8d40926f0', N'恢复', N'database_refresh.png', N'RECOVER()', -1, 33, 0, CAST(0x0000A55A011502C6 AS DateTime), N'恢复按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'a0d0e95c-86b8-4a9f-86b8-2b4a986383c6', N'还原', N'2013040601125064_easyicon_net_16.png', N'RESTORE()', -1, 12, 0, CAST(0x0000A55A0105020C AS DateTime), N'还原按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'81914272-1e83-4212-ac92-309aa9acf535', N'授权', N'wrench_orange.png', N'ACCREDIT()', -1, 29, 0, CAST(0x0000A55A0112C1E2 AS DateTime), N'授权按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'cec5a9e1-f227-4a36-a965-352411ae12ad', N'下载', N'20130406125519344_easyicon_net_16.png', N'DOWNLOAD()', -1, 10, 0, CAST(0x0000A55A0103F521 AS DateTime), N'下载按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'3f5a0eae-4543-4712-a42e-391ceb1820b7', N'关于', N'20130410120031302_easyicon_net_16.png', N'ABOUT()', -1, 32, 0, CAST(0x0000A55A01143991 AS DateTime), N'关于按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'0cebbe4d-53a7-42ce-a057-3a35db8eca46', N'发布', N'world_go.png', N'RELEASE()', -1, 16, 0, CAST(0x0000A55A01089E10 AS DateTime), N'发布按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'25d027a6-b50b-40ec-a971-45d118126ef7', N'备份', N'database_save.png', N'BACKUPS()', -1, 23, 0, CAST(0x0000A55A010FDA35 AS DateTime), N'备份按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'5d49b7d2-f63e-497f-bd82-561d77a89aec', N'分配按钮', N'bricks.png', N'ALLOWBUTTON()', -1, 30, 0, CAST(0x0000A55A01134C85 AS DateTime), N'分配按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'2a49713e-56ba-481a-af10-58cd1f75b3cb', N'举报', N'20130406014211289_easyicon_net_16.png', N'REPORT()', -1, 14, 0, CAST(0x0000A55A0106D931 AS DateTime), N'举报按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'ef99bb56-ea51-4ba5-a6ce-654cdb460360', N'上传', N'20130406125647919_easyicon_net_16.png', N'UPLOAD()', -1, 24, 0, CAST(0x0000A55A01104582 AS DateTime), N'上传按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'68d0375a-7169-458f-b9cc-6bd6226f91f3', N'分配成员', N'2012081511913.png', N'ALLOWMEMBER()', -1, 5, 0, CAST(0x0000A54C0102CEDC AS DateTime), N'分配成员按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'e7063a09-f168-42a4-8458-6e0b409ab785', N'帮助', N'help.png', N'HELP()', -1, 27, 0, CAST(0x0000A55A01119E49 AS DateTime), N'帮助按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'e7ca91ca-deca-42cf-a526-8568911d1d2f', N'审核', N'201208041220.png', N'AUDIT()', -1, 9, 0, CAST(0x0000A55A01038EE1 AS DateTime), N'审核按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'd65219ac-c26f-45a3-ae6e-8942eb3f625d', N'打印', N'printer.png', N'PRINTER()', -1, 13, 0, CAST(0x0000A55A0105AB17 AS DateTime), N'打印按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'fcf5b3c7-0232-47bf-ad00-967cd365b0ac', N'清空', N'Empty.png', N'EMPTY()', -1, 20, 0, CAST(0x0000A55A010CF86E AS DateTime), N'清空按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'3e16b83e-51c8-4375-ab01-9c8c0c9b9939', N'刷新', N'20130406015709810_easyicon_net_16.png', N'REDRESH()', -1, 28, 0, CAST(0x0000A55A01120B40 AS DateTime), N'刷新按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'bd3fd25d-cd12-4f7e-8399-9e47bf37e326', N'发送', N'email_go.png', N'SEND()', -1, 25, 0, CAST(0x0000A55A0110AFCC AS DateTime), N'发送按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'99ca0e2e-e9a6-4f29-8c95-b5206a583d16', N'详细', N'view.gif', N'DETAIL()', -1, 22, 0, CAST(0x0000A55A010F01DD AS DateTime), N'详细按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'28c37051-f78c-456b-a94f-b5578ca64e94', N'锁定', N'lock.png', N'LOCK()', -1, 18, 0, CAST(0x0000A55A010A520F AS DateTime), N'锁定按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'5a32b138-819b-4d6c-b939-b565974bec61', N'复制', N'20130406125821654_easyicon_net_16.png', N'COPY()', -1, 11, 0, CAST(0x0000A55A0104561B AS DateTime), N'复制按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'5ce37e4a-372b-4e6a-bf1e-b647252dc7cd', N'返回', N'back.png', N'BACK()', -1, 26, 0, CAST(0x0000A55A01112156 AS DateTime), N'返回按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'0d34b0ca-bd3b-495e-bb48-c48711fbccdf', N'查询', N'zoom.png', N'SEARCH()', -1, 4, 0, CAST(0x0000A55A00FFF72D AS DateTime), N'查询按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'f5231030-b117-4c93-98af-e2ee5685a4f8', N'浏览', N'folder_explore.png', N'BROWSE()', -1, 17, 0, CAST(0x0000A55A01091DE5 AS DateTime), N'浏览按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'6050cf53-25f1-45c3-8858-edc4753637ec', N'保存', N'disk.png', N'SAVEFORM()', -1, 31, 0, CAST(0x0000A55A0113A6AF AS DateTime), N'保存按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'a45035af-87d2-4e01-a18e-ee0acc08336a', N'设置', N'2012080404391.png', N'SET()', -1, 8, 0, CAST(0x0000A55A01026378 AS DateTime), N'设置按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'13516d44-87f3-4a60-b0e1-fb41ebeae1ec', N'分配权限', N'chart_organisation_add.png', N'ALLOWAUTHORITY()', -1, 19, 0, CAST(0x0000A55A010B125E AS DateTime), N'分配权限按钮')
INSERT [dbo].[t_Sys_Buttons] ([ButtonID], [ButtonName], [ButtonImg], [ButtonCode], [ButtonType], [SortCode], [DeleteFlag], [CreateDate], [ButtonRemark]) VALUES (N'166919cd-bed1-4265-ba4a-fec9cf7b97c6', N'升级', N'20130406014314162_easyicon_net_16.png', N'UPGRADE()', -1, 15, 0, CAST(0x0000A55A01076481 AS DateTime), N'升级按钮')
/****** Object:  Table [dbo].[SystemErrorLog]    Script Date: 09/26/2016 18:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemErrorLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ErrorType] [nvarchar](100) NULL,
	[ErrorMessage] [nvarchar](200) NULL,
	[PathAndQuery] [nvarchar](200) NULL,
	[ClientIP] [nvarchar](50) NULL,
	[ErrorTime] [datetime] NULL,
	[StackTrace] [nvarchar](max) NULL,
 CONSTRAINT [PK_SystemErrorLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SystemErrorLog] ON
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (1, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68601294E97 AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (2, N'System.Web.HttpException', N'会话状态已创建一个会话 ID，但由于响应已被应用程序刷新而无法保存它。', N'/Index.aspx', N'::1', CAST(0x0000A687009F596B AS DateTime), N'   在 System.Web.SessionState.SessionIDManager.SaveSessionID(HttpContext context, String id, Boolean& redirected, Boolean& cookieAdded)<br/>   在 System.Web.SessionState.SessionStateModule.CreateSessionId()<br/>   在 System.Web.SessionState.SessionStateModule.DelayedGetSessionId()<br/>   在 System.Web.SessionState.SessionStateModule.ReleaseStateGetSessionID()<br/>   在 System.Web.SessionState.SessionStateModule.OnReleaseState(Object source, EventArgs eventArgs)<br/>   在 System.Web.SessionState.SessionStateModule.OnEndRequest(Object source, EventArgs eventArgs)<br/>   在 System.Web.HttpApplication.SyncEventExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (3, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A687009F5AC8 AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (4, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68700A0AFF5 AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (5, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68700A19901 AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (6, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68700A1993A AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (7, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68700A1BAF5 AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (8, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68700A1E265 AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (9, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68700A20ACE AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (10, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68700A277B9 AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (11, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68700A464E0 AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (12, N'System.Web.HttpException', N'文件不存在。', N'/Theme/JScript/jquery-easyui-1.4.5/demo/datagrid/', N'::1', CAST(0x0000A68700B62107 AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (13, N'System.Web.HttpException', N'文件不存在。', N'/Theme/JScript/jquery-easyui-1.4.5/demo/datagrid/', N'::1', CAST(0x0000A68700B81F48 AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (14, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68700C3AE3B AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (15, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68700F00D0D AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (16, N'System.Web.HttpException', N'文件不存在。', N'/Theme/JScript/jquery-easyui-1.4.5/demo/datagrid/', N'::1', CAST(0x0000A687010148D3 AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (17, N'System.Web.HttpException', N'文件“/Admin/SHBase/SysData/DataResourcesIndex.aspx”不存在。', N'/Admin/SHBase/SysData/DataResourcesIndex.aspx', N'::1', CAST(0x0000A6870113FAFA AS DateTime), N'   在 System.Web.UI.Util.CheckVirtualFileExists(VirtualPath virtualPath)<br/>   在 System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)<br/>   在 System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)<br/>   在 System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)<br/>   在 System.Web.Compilation.BuildManager.CreateInstanceFromVirtualPath(VirtualPath virtualPath, Type requiredBaseType, HttpContext context, Boolean allowCrossApp)<br/>   在 System.Web.UI.PageHandlerFactory.GetHandlerHelper(HttpContext context, String requestType, VirtualPath virtualPath, String physicalPath)<br/>   在 System.Web.UI.PageHandlerFactory.System.Web.IHttpHandlerFactory2.GetHandler(HttpContext context, String requestType, VirtualPath virtualPath, String physicalPath)<br/>   在 System.Web.HttpApplication.MapHttpHandler(HttpContext context, String requestType, VirtualPath path, String pathTranslated, Boolean useAppConfig)<br/>   在 System.Web.HttpApplication.MapHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (20, N'System.Web.HttpException', N'会话状态已创建一个会话 ID，但由于响应已被应用程序刷新而无法保存它。', N'/Index.aspx', N'::1', CAST(0x0000A68800E60A98 AS DateTime), N'   在 System.Web.SessionState.SessionIDManager.SaveSessionID(HttpContext context, String id, Boolean& redirected, Boolean& cookieAdded)<br/>   在 System.Web.SessionState.SessionStateModule.CreateSessionId()<br/>   在 System.Web.SessionState.SessionStateModule.DelayedGetSessionId()<br/>   在 System.Web.SessionState.SessionStateModule.ReleaseStateGetSessionID()<br/>   在 System.Web.SessionState.SessionStateModule.OnReleaseState(Object source, EventArgs eventArgs)<br/>   在 System.Web.SessionState.SessionStateModule.OnEndRequest(Object source, EventArgs eventArgs)<br/>   在 System.Web.HttpApplication.SyncEventExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (21, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68800E60B75 AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (22, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68800E809BE AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (23, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68800E980BB AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (24, N'System.Web.HttpException', N'会话状态已创建一个会话 ID，但由于响应已被应用程序刷新而无法保存它。', N'/Index.aspx', N'::1', CAST(0x0000A6890095C9D8 AS DateTime), N'   在 System.Web.SessionState.SessionIDManager.SaveSessionID(HttpContext context, String id, Boolean& redirected, Boolean& cookieAdded)<br/>   在 System.Web.SessionState.SessionStateModule.CreateSessionId()<br/>   在 System.Web.SessionState.SessionStateModule.DelayedGetSessionId()<br/>   在 System.Web.SessionState.SessionStateModule.ReleaseStateGetSessionID()<br/>   在 System.Web.SessionState.SessionStateModule.OnReleaseState(Object source, EventArgs eventArgs)<br/>   在 System.Web.SessionState.SessionStateModule.OnEndRequest(Object source, EventArgs eventArgs)<br/>   在 System.Web.HttpApplication.SyncEventExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (25, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A6890095CABB AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (26, N'System.Web.HttpException', N'会话状态已创建一个会话 ID，但由于响应已被应用程序刷新而无法保存它。', N'/Index.aspx', N'::1', CAST(0x0000A68A0094D086 AS DateTime), N'   在 System.Web.SessionState.SessionIDManager.SaveSessionID(HttpContext context, String id, Boolean& redirected, Boolean& cookieAdded)<br/>   在 System.Web.SessionState.SessionStateModule.CreateSessionId()<br/>   在 System.Web.SessionState.SessionStateModule.DelayedGetSessionId()<br/>   在 System.Web.SessionState.SessionStateModule.ReleaseStateGetSessionID()<br/>   在 System.Web.SessionState.SessionStateModule.OnReleaseState(Object source, EventArgs eventArgs)<br/>   在 System.Web.SessionState.SessionStateModule.OnEndRequest(Object source, EventArgs eventArgs)<br/>   在 System.Web.HttpApplication.SyncEventExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (27, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68A0094D121 AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (28, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68A00E71EFB AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (29, N'System.Web.HttpException', N'文件“/Admin/SHBase/SysData/DataResourcesIndex.aspx”不存在。', N'/Admin/SHBase/SysData/DataResourcesIndex.aspx', N'::1', CAST(0x0000A68A00FC5D06 AS DateTime), N'   在 System.Web.UI.Util.CheckVirtualFileExists(VirtualPath virtualPath)<br/>   在 System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)<br/>   在 System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)<br/>   在 System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)<br/>   在 System.Web.Compilation.BuildManager.CreateInstanceFromVirtualPath(VirtualPath virtualPath, Type requiredBaseType, HttpContext context, Boolean allowCrossApp)<br/>   在 System.Web.UI.PageHandlerFactory.GetHandlerHelper(HttpContext context, String requestType, VirtualPath virtualPath, String physicalPath)<br/>   在 System.Web.UI.PageHandlerFactory.System.Web.IHttpHandlerFactory2.GetHandler(HttpContext context, String requestType, VirtualPath virtualPath, String physicalPath)<br/>   在 System.Web.HttpApplication.MapHttpHandler(HttpContext context, String requestType, VirtualPath path, String pathTranslated, Boolean useAppConfig)<br/>   在 System.Web.HttpApplication.MapHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (30, N'System.Web.HttpException', N'文件不存在。', N'/Theme/JScript/jquery-easyui-1.4.5/demo/layout/', N'::1', CAST(0x0000A68A00FF4700 AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (31, N'System.Web.HttpException', N'文件不存在。', N'/Theme/JScript/jquery-easyui-1.4.5/demo/layout/', N'::1', CAST(0x0000A68A01161E82 AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (32, N'System.Web.HttpException', N'文件不存在。', N'/Theme/JScript/jquery-easyui-1.4.5/demo/layout/', N'::1', CAST(0x0000A68A01163321 AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (33, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68A011CF7DD AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (34, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68B00A00F3D AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (35, N'System.Web.HttpException', N'文件“/Admin/SHBase/SysEmployee/EmployeeIndex.aspx”不存在。', N'/Admin/SHBase/SysEmployee/EmployeeIndex.aspx', N'::1', CAST(0x0000A68B00A1A8C4 AS DateTime), N'   在 System.Web.UI.Util.CheckVirtualFileExists(VirtualPath virtualPath)<br/>   在 System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)<br/>   在 System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)<br/>   在 System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)<br/>   在 System.Web.Compilation.BuildManager.CreateInstanceFromVirtualPath(VirtualPath virtualPath, Type requiredBaseType, HttpContext context, Boolean allowCrossApp)<br/>   在 System.Web.UI.PageHandlerFactory.GetHandlerHelper(HttpContext context, String requestType, VirtualPath virtualPath, String physicalPath)<br/>   在 System.Web.UI.PageHandlerFactory.System.Web.IHttpHandlerFactory2.GetHandler(HttpContext context, String requestType, VirtualPath virtualPath, String physicalPath)<br/>   在 System.Web.HttpApplication.MapHttpHandler(HttpContext context, String requestType, VirtualPath path, String pathTranslated, Boolean useAppConfig)<br/>   在 System.Web.HttpApplication.MapHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (36, N'System.Web.HttpException', N'会话状态已创建一个会话 ID，但由于响应已被应用程序刷新而无法保存它。', N'/Index.aspx', N'::1', CAST(0x0000A68D009A62F6 AS DateTime), N'   在 System.Web.SessionState.SessionIDManager.SaveSessionID(HttpContext context, String id, Boolean& redirected, Boolean& cookieAdded)<br/>   在 System.Web.SessionState.SessionStateModule.CreateSessionId()<br/>   在 System.Web.SessionState.SessionStateModule.DelayedGetSessionId()<br/>   在 System.Web.SessionState.SessionStateModule.ReleaseStateGetSessionID()<br/>   在 System.Web.SessionState.SessionStateModule.OnReleaseState(Object source, EventArgs eventArgs)<br/>   在 System.Web.SessionState.SessionStateModule.OnEndRequest(Object source, EventArgs eventArgs)<br/>   在 System.Web.HttpApplication.SyncEventExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (37, N'System.Web.HttpException', N'文件不存在。', N'/favicon.ico', N'::1', CAST(0x0000A68D009A63E5 AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (38, N'System.InvalidCastException', N'The value from column ''IsKey'' cannot be converted to property ''IsKey'' of type ''System.Boolean''.', N'/BasePage/SysData/GetDataResources.ashx?Type=TableColumnList', N'::1', CAST(0x0000A68D00AAA4C5 AS DateTime), N'   在 Microsoft.Practices.EnterpriseLibrary.Data.ColumnNameMapping.GetPropertyValue(IDataRecord row)<br/>   在 lambda_method(Closure , IDataRecord )<br/>   在 Microsoft.Practices.EnterpriseLibrary.Data.ReflectionRowMapper`1.MapRow(IDataRecord row)<br/>   在 Microsoft.Practices.EnterpriseLibrary.Data.CommandAccessor`1.DefaultResultSetMapper.<MapSet>d__7.MoveNext()<br/>   在 Microsoft.Practices.EnterpriseLibrary.Data.CommandAccessor`1.<Execute>d__0.MoveNext()<br/>   在 System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)<br/>   在 System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)<br/>   在 SysDAL.SysDataDAL.GetTableColumnList(String TableName) 位置 E:\GitHub库\WebUI\SysDAL\SysDataDAL.cs:行号 41<br/>   在 SysBLL.SysDataBLL.GetTableColumnList(String Tablename) 位置 E:\GitHub库\WebUI\SysBLL\SysDataBLL.cs:行号 22<br/>   在 AdminUI.BasePage.SysData.GetDataResources.GetTableColumnJson() 位置 E:\GitHub库\WebUI\AdminUI\BasePage\SysData\GetDataResources.ashx.cs:行号 52<br/>   在 AdminUI.BasePage.SysData.GetDataResources.ProcessRequest(HttpContext context) 位置 E:\GitHub库\WebUI\AdminUI\BasePage\SysData\GetDataResources.ashx.cs:行号 29<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (39, N'System.InvalidCastException', N'The value from column ''IsKey'' cannot be converted to property ''IsKey'' of type ''System.Boolean''.', N'/BasePage/SysData/GetDataResources.ashx?Type=TableColumnList&tableName=t_Sys_Users', N'::1', CAST(0x0000A68D00B24324 AS DateTime), N'   在 Microsoft.Practices.EnterpriseLibrary.Data.ColumnNameMapping.GetPropertyValue(IDataRecord row)<br/>   在 lambda_method(Closure , IDataRecord )<br/>   在 Microsoft.Practices.EnterpriseLibrary.Data.ReflectionRowMapper`1.MapRow(IDataRecord row)<br/>   在 Microsoft.Practices.EnterpriseLibrary.Data.CommandAccessor`1.DefaultResultSetMapper.<MapSet>d__7.MoveNext()<br/>   在 Microsoft.Practices.EnterpriseLibrary.Data.CommandAccessor`1.<Execute>d__0.MoveNext()<br/>   在 System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)<br/>   在 System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)<br/>   在 SysDAL.SysDataDAL.GetTableColumnList(String TableName) 位置 E:\GitHub库\WebUI\SysDAL\SysDataDAL.cs:行号 41<br/>   在 SysBLL.SysDataBLL.GetTableColumnList(String Tablename) 位置 E:\GitHub库\WebUI\SysBLL\SysDataBLL.cs:行号 22<br/>   在 AdminUI.BasePage.SysData.GetDataResources.GetTableColumnJson(HttpContext context) 位置 E:\GitHub库\WebUI\AdminUI\BasePage\SysData\GetDataResources.ashx.cs:行号 55<br/>   在 AdminUI.BasePage.SysData.GetDataResources.ProcessRequest(HttpContext context) 位置 E:\GitHub库\WebUI\AdminUI\BasePage\SysData\GetDataResources.ashx.cs:行号 29<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (40, N'System.Web.HttpException', N'文件“/BasePage/SysData/DataResourcesWest.aspx”不存在。', N'/BasePage/SysData/DataResourcesWest.aspx', N'::1', CAST(0x0000A68D00BFE033 AS DateTime), N'   在 System.Web.UI.Util.CheckVirtualFileExists(VirtualPath virtualPath)<br/>   在 System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)<br/>   在 System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)<br/>   在 System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)<br/>   在 System.Web.Compilation.BuildManager.CreateInstanceFromVirtualPath(VirtualPath virtualPath, Type requiredBaseType, HttpContext context, Boolean allowCrossApp)<br/>   在 System.Web.UI.PageHandlerFactory.GetHandlerHelper(HttpContext context, String requestType, VirtualPath virtualPath, String physicalPath)<br/>   在 System.Web.UI.PageHandlerFactory.System.Web.IHttpHandlerFactory2.GetHandler(HttpContext context, String requestType, VirtualPath virtualPath, String physicalPath)<br/>   在 System.Web.HttpApplication.MapHttpHandler(HttpContext context, String requestType, VirtualPath path, String pathTranslated, Boolean useAppConfig)<br/>   在 System.Web.HttpApplication.MapHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (41, N'System.Web.HttpException', N'文件“/BasePage/SysData/DataResourcesWest.aspx”不存在。', N'/BasePage/SysData/DataResourcesWest.aspx', N'::1', CAST(0x0000A68D00BFE033 AS DateTime), N'   在 System.Web.UI.Util.CheckVirtualFileExists(VirtualPath virtualPath)<br/>   在 System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)<br/>   在 System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)<br/>   在 System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)<br/>   在 System.Web.Compilation.BuildManager.CreateInstanceFromVirtualPath(VirtualPath virtualPath, Type requiredBaseType, HttpContext context, Boolean allowCrossApp)<br/>   在 System.Web.UI.PageHandlerFactory.GetHandlerHelper(HttpContext context, String requestType, VirtualPath virtualPath, String physicalPath)<br/>   在 System.Web.UI.PageHandlerFactory.System.Web.IHttpHandlerFactory2.GetHandler(HttpContext context, String requestType, VirtualPath virtualPath, String physicalPath)<br/>   在 System.Web.HttpApplication.MapHttpHandler(HttpContext context, String requestType, VirtualPath path, String pathTranslated, Boolean useAppConfig)<br/>   在 System.Web.HttpApplication.MapHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (42, N'System.Web.HttpException', N'文件“/BasePage/SysData/DataResourcesWest.aspx”不存在。', N'/BasePage/SysData/DataResourcesWest.aspx', N'::1', CAST(0x0000A68D00BFE033 AS DateTime), N'   在 System.Web.UI.Util.CheckVirtualFileExists(VirtualPath virtualPath)<br/>   在 System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)<br/>   在 System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)<br/>   在 System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)<br/>   在 System.Web.Compilation.BuildManager.CreateInstanceFromVirtualPath(VirtualPath virtualPath, Type requiredBaseType, HttpContext context, Boolean allowCrossApp)<br/>   在 System.Web.UI.PageHandlerFactory.GetHandlerHelper(HttpContext context, String requestType, VirtualPath virtualPath, String physicalPath)<br/>   在 System.Web.UI.PageHandlerFactory.System.Web.IHttpHandlerFactory2.GetHandler(HttpContext context, String requestType, VirtualPath virtualPath, String physicalPath)<br/>   在 System.Web.HttpApplication.MapHttpHandler(HttpContext context, String requestType, VirtualPath path, String pathTranslated, Boolean useAppConfig)<br/>   在 System.Web.HttpApplication.MapHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (43, N'System.Web.HttpException', N'文件“/BasePage/SysData/DataResourcesWest.aspx”不存在。', N'/BasePage/SysData/DataResourcesWest.aspx', N'::1', CAST(0x0000A68D00BFE07A AS DateTime), N'   在 System.Web.UI.Util.CheckVirtualFileExists(VirtualPath virtualPath)<br/>   在 System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)<br/>   在 System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)<br/>   在 System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)<br/>   在 System.Web.Compilation.BuildManager.CreateInstanceFromVirtualPath(VirtualPath virtualPath, Type requiredBaseType, HttpContext context, Boolean allowCrossApp)<br/>   在 System.Web.UI.PageHandlerFactory.GetHandlerHelper(HttpContext context, String requestType, VirtualPath virtualPath, String physicalPath)<br/>   在 System.Web.UI.PageHandlerFactory.System.Web.IHttpHandlerFactory2.GetHandler(HttpContext context, String requestType, VirtualPath virtualPath, String physicalPath)<br/>   在 System.Web.HttpApplication.MapHttpHandler(HttpContext context, String requestType, VirtualPath path, String pathTranslated, Boolean useAppConfig)<br/>   在 System.Web.HttpApplication.MapHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (44, N'System.Web.HttpException', N'不允许用于访问路径“/app/search.do”的 HTTP 谓词 POST。', N'/app/search.do', N'::1', CAST(0x0000A68D00C57ED5 AS DateTime), N'   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (45, N'System.Web.HttpException', N'不允许用于访问路径“/app/search.do”的 HTTP 谓词 POST。', N'/app/search.do', N'::1', CAST(0x0000A68D00C57ED5 AS DateTime), N'   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
INSERT [dbo].[SystemErrorLog] ([ID], [ErrorType], [ErrorMessage], [PathAndQuery], [ClientIP], [ErrorTime], [StackTrace]) VALUES (46, N'System.Web.HttpException', N'文件不存在。', N'/Theme/JScript/jquery-easyui-1.4.5/demo/panel/', N'::1', CAST(0x0000A68D01055AFE AS DateTime), N'   在 System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)<br/>   在 System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)<br/>   在 System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)<br/>   在 System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()<br/>   在 System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)')
SET IDENTITY_INSERT [dbo].[SystemErrorLog] OFF
/****** Object:  UserDefinedFunction [dbo].[SplitToTable]    Script Date: 09/26/2016 18:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,谌昊>
-- Create date: <Create Date,,2016-7-6>
-- Description:	<Description,,拆分字符串为表格>
-- =============================================
CREATE FUNCTION [dbo].[SplitToTable]
(
    @SplitString nvarchar(max),
    @Separator nvarchar(10)=' '
)
RETURNS @SplitStringsTable TABLE
(
[id] int identity(1,1),
[value] nvarchar(max)
)
AS
BEGIN
	DECLARE @CurrentIndex int;
    DECLARE @NextIndex int;
    DECLARE @ReturnText nvarchar(max);
    SELECT @CurrentIndex=1;
    WHILE(@CurrentIndex<=len(@SplitString))
        BEGIN
            SELECT @NextIndex=charindex(@Separator,@SplitString,@CurrentIndex);
            IF(@NextIndex=0 OR @NextIndex IS NULL)
                SELECT @NextIndex=len(@SplitString)+1;
                SELECT @ReturnText=substring(@SplitString,@CurrentIndex,@NextIndex-@CurrentIndex);
                INSERT INTO @SplitStringsTable([value]) VALUES(@ReturnText);
                SELECT @CurrentIndex=@NextIndex+1;
            END
    RETURN;
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_T_SYS_GetTableNameList]    Script Date: 09/26/2016 18:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,谌昊>
-- Create date: <Create Date,,2016-9-24>
-- Description:	<Description,,获取数据库表格名称列表>
-- =============================================
CREATE PROCEDURE [dbo].[PROC_T_SYS_GetTableNameList]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT ROW_NUMBER() OVER(ORDER BY refdate ASC ) AS RowNo, Name AS TABLE_NAME FROM sysobjects WHERE xtype = 'u' AND status >= 0 AND Name != 'sysdiagrams'
    
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_T_SYS_GetTableColumnList]    Script Date: 09/26/2016 18:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,谌昊>
-- Create date: <Create Date,,2016-9-24>
-- Description:	<Description,,获取表的所有列>
-- =============================================
CREATE PROCEDURE [dbo].[PROC_T_SYS_GetTableColumnList]
	-- Add the parameters for the stored procedure here
	@TableName NVARCHAR(50) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT
       [RowNo] = ROW_NUMBER() OVER(ORDER BY A.id , A .colorder ASC),
       [ColumnName] = A.name ,
       [DataType] = B.name ,
       [Length] = COLUMNPROPERTY(A .id, A. name, 'PRECISION'),
       [IsNull] = A.isnullable ,
       [IsMark] = COLUMNPROPERTY(A .id, A.name ,'IsIdentity'),
       [IsKey] =
             CASE WHEN
             EXISTS
             (
                   SELECT 1 FROM sysobjects WHERE xtype ='PK' AND parent_obj = a. id AND name IN
                   (
                         SELECT name FROM sysindexes WHERE indid IN
                         (
                               SELECT indid FROM sysindexkeys WHERE id = a.id AND colid=a .colid
                         )
                   )
             )
             THEN 1
             ELSE 0 END,
       [Defaults] = ISNULL(E .text, ''),
       [Explanation] = ISNULL(G .[value], '')
	FROM syscolumns AS A
	LEFT JOIN systypes B on A. xusertype = B. xusertype
	INNER JOIN sysobjects D ON A. id = D. id  AND D. xtype='U' AND  D.name <> 'dtproperties'
	LEFT JOIN syscomments E ON A. cdefault = E. id
	LEFT JOIN sys. extended_properties G ON A.id = G.major_id AND A.colid = G.minor_id
	LEFT JOIN sys. extended_properties F ON D.id = F.major_id AND F.minor_id = 0
	WHERE D .name = @TableName

END
GO
/****** Object:  StoredProcedure [dbo].[PROC_T_SYS_GetSystemErrorLogList]    Script Date: 09/26/2016 18:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,谌昊>
-- Create date: <Create Date,,2016-9-20>
-- Description:	<Description,,获取系统错误日志列表>
-- =============================================
CREATE PROCEDURE [dbo].[PROC_T_SYS_GetSystemErrorLogList] 
	-- Add the parameters for the stored procedure here
	@PageIndex INT = 0,
	@PageSize INT = 10,
	@OUTTotalCount INT OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	IF(@PageIndex <= 0)
	BEGIN
		SET @PageIndex = 1
	END
	
	IF(@PageSize <= 0)
	BEGIN
		SET @PageSize = 10
	END
	
	SELECT @OUTTotalCount = COUNT(*) FROM dbo.SystemErrorLog
	
	SELECT * FROM 
	(
		SELECT ROW_NUMBER() OVER(ORDER BY ErrorTime DESC) AS RowNo, ID, ErrorType, ErrorMessage, PathAndQuery, ClientIP, ErrorTime, StackTrace 
		FROM dbo.SystemErrorLog
    ) AS T
    WHERE T.RowNo > ((@PageIndex - 1) * @PageSize) AND T.RowNo <= (@PageIndex * @PageSize)
    
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_T_SYS_GetRoleList]    Script Date: 09/26/2016 18:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,谌昊>
-- Create date: <Create Date,,2016-9-2>
-- Description:	<Description,,查询角色列表>
-- =============================================
CREATE PROCEDURE [dbo].[PROC_T_SYS_GetRoleList]
	-- Add the parameters for the stored procedure here
	@RoleID UNIQUEIDENTIFIER = '00000000-0000-0000-0000-000000000000',
	@RoleName NVARCHAR(50) = '',
	@DeleteFlag INT = -1,
	@OUTTotalCount INT OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT @OUTTotalCount = COUNT(*)
    FROM ShenWebObject.dbo.t_Sys_Roles(NOLOCK) AS A
    WHERE 1 = 1
    AND(@RoleID IS NULL OR @RoleID = '00000000-0000-0000-0000-000000000000' OR A.RoleID = @RoleID)
    AND(@RoleName IS  NULL OR @RoleName = '' OR A.RoleName = @RoleName)
    AND(@DeleteFlag IS NULL OR @DeleteFlag = -1 OR A.DeleteFlag = @DeleteFlag)

    SELECT RoleID, RoleName, RoleRemark, AllowEdit, AllowDelete, SortCode, 
           DeleteFlag, CreateDate, CreatorID, ModifyDate, ModifierID 
    FROM ShenWebObject.dbo.t_Sys_Roles(NOLOCK) AS A
    WHERE 1 = 1
    AND(@RoleID IS NULL OR @RoleID = '00000000-0000-0000-0000-000000000000' OR A.RoleID = @RoleID)
    AND(@RoleName IS  NULL OR @RoleName = '' OR A.RoleName = @RoleName)
    AND(@DeleteFlag IS NULL OR @DeleteFlag = -1 OR A.DeleteFlag = @DeleteFlag)
    
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_T_SYS_GetMenuList]    Script Date: 09/26/2016 18:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,谌昊>
-- Create date: <Create Date,,2016-7-5>
-- Description:	<Description,,查询菜单>
-- =============================================
CREATE PROCEDURE [dbo].[PROC_T_SYS_GetMenuList]
	-- Add the parameters for the stored procedure here
	@MenuID UNIQUEIDENTIFIER = '00000000-0000-0000-0000-000000000000',
	@ParentID VARCHAR(50) = '',
	@MenuName NVARCHAR(50) = '',
	@MenuType INT = 0,
	@DeleteFlag INT = 0, --删除标记：-1 全部，0 未删除， 1 已删除
	@OUTTotalCount INT OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT @OUTTotalCount = COUNT(*) FROM dbo.t_Sys_Menus
	WHERE 1 = 1
	AND (@MenuID IS NULL OR @MenuID = '00000000-0000-0000-0000-000000000000' OR MenuID = @MenuID)
	AND (@ParentID IS NULL OR @ParentID = '' OR ParentID = @ParentID)
	AND (@MenuName IS NULL OR @MenuName  = '' OR MenuName = @MenuName)
	AND (@MenuType IS NULL OR @MenuType = 0 OR MenuType = @MenuType)
	AND (@DeleteFlag IS NULL OR @DeleteFlag = -1 OR DeleteFlag = @DeleteFlag)
	
	SELECT ROW_NUMBER() OVER(ORDER BY SortCode ASC) AS RowNo, MenuID, ParentID, MenuName, MenuImg, MenuType, NavigateUrl, SortCode, DeleteFlag, CreateDate FROM dbo.t_Sys_Menus
	WHERE 1 = 1
	AND (@MenuID IS NULL OR @MenuID = '00000000-0000-0000-0000-000000000000' OR MenuID = @MenuID)
	AND (@ParentID IS NULL OR @ParentID = '' OR ParentID = @ParentID)
	AND (@MenuName IS NULL OR @MenuName  = '' OR MenuName = @MenuName)
	AND (@MenuType IS NULL OR @MenuType = 0 OR MenuType = @MenuType)
	AND (@DeleteFlag IS NULL OR @DeleteFlag = -1 OR DeleteFlag = @DeleteFlag)
    
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_T_SYS_GetMenuAndChildrenByID]    Script Date: 09/26/2016 18:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,谌昊>
-- Create date: <Create Date,,2016-9-1>
-- Description:	<Description,,根据菜单ID查询菜单与子菜单>
-- =============================================
CREATE PROCEDURE [dbo].[PROC_T_SYS_GetMenuAndChildrenByID]
	-- Add the parameters for the stored procedure here
	@MenuID UNIQUEIDENTIFIER = '00000000-0000-0000-0000-000000000000'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE @myTable TABLE
	(
		MenuID UNIQUEIDENTIFIER
	)
	
	INSERT INTO @myTable ( MenuID )
    SELECT MenuID FROM dbo.t_Sys_Menus(NOLOCK) AS A WHERE A.MenuID = @MenuID
    
    WHILE(@@ROWCOUNT > 0)
    BEGIN
		INSERT INTO @myTable ( MenuID )
		SELECT MenuID FROM dbo.t_Sys_Menus(NOLOCK) AS A 
		WHERE ParentID IN (SELECT CONVERT(NVARCHAR(50), MenuID) FROM @myTable)
		AND A.MenuID NOT IN (SELECT MenuID FROM @myTable)
    END
    
    SELECT MenuID, ParentID, MenuName, MenuImg, MenuType, NavigateUrl,
           SortCode, DeleteFlag, CreateDate 
	FROM dbo.t_Sys_Menus WHERE MenuID IN (SELECT MenuID FROM @myTable)
    
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_T_SYS_GetButtonList]    Script Date: 09/26/2016 18:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,谌昊>
-- Create date: <Create Date,,2016-8-22>
-- Description:	<Description,,查询按钮>
-- =============================================
CREATE PROCEDURE [dbo].[PROC_T_SYS_GetButtonList]
	@ButtonID UNIQUEIDENTIFIER = '00000000-0000-0000-0000-000000000000',
	@ButtonName NVARCHAR(50) = '',
	@DeleteFlag INT = 0, --删除标记：-1 全部，0 未删除， 1 已删除
	@OUTTotalCount INT OUTPUT,
	@PageIndex INT = 0,
	@PageSize INT = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT @OUTTotalCount = COUNT(*) FROM ShenWebObject.dbo.t_Sys_Buttons(NOLOCK) AS A
	WHERE 1 = 1 
	AND (@ButtonID IS NULL OR @ButtonID = '00000000-0000-0000-0000-000000000000' OR A.ButtonID = @ButtonID)
	AND (@ButtonName IS NULL OR @ButtonName = '' OR A.ButtonName = @ButtonName)
	AND (@DeleteFlag IS NULL OR @DeleteFlag = -1 OR A.DeleteFlag = @DeleteFlag)
	
	SELECT * FROM 
	(
		SELECT ROW_NUMBER() OVER(ORDER BY A.SortCode ASC) AS RowNo, A.* FROM ShenWebObject.dbo.t_Sys_Buttons(NOLOCK) AS A
		WHERE 1 = 1 
		AND (@ButtonID IS NULL OR @ButtonID = '00000000-0000-0000-0000-000000000000' OR A.ButtonID = @ButtonID)
		AND (@ButtonName IS NULL OR @ButtonName = '' OR A.ButtonName = @ButtonName)
		AND (@DeleteFlag IS NULL OR @DeleteFlag = -1 OR A.DeleteFlag = @DeleteFlag)
    ) AS T WHERE T.RowNo > ((@PageIndex - 1) * @PageSize) AND T.RowNo <= (@PageIndex * @PageSize)
    
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_T_SYS_UserLogin]    Script Date: 09/26/2016 18:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,谌昊>
-- Create date: <Create Date,,2016-8-30>
-- Description:	<Description,,后端用户登录>
-- =============================================
CREATE PROCEDURE [dbo].[PROC_T_SYS_UserLogin]
	-- Add the parameters for the stored procedure here
	@UserName NVARCHAR(50),
	@Password NVARCHAR(50),
	@OUTTotalCount INT OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT @OUTTotalCount = COUNT(*) FROM dbo.t_Sys_Users WHERE UserName = @UserName AND [Password] = @Password
    SELECT UserID, UserName, [Password] FROM dbo.t_Sys_Users WHERE UserName = @UserName AND [Password] = @Password
    
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_T_SYS_SystemErrorLogAdd]    Script Date: 09/26/2016 18:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,谌昊>
-- Create date: <Create Date,,2016-9-19>
-- Description:	<Description,,系统错误日志添加>
-- =============================================
CREATE PROCEDURE [dbo].[PROC_T_SYS_SystemErrorLogAdd]
	-- Add the parameters for the stored procedure here
	@ErrorType NVARCHAR(100) = '',
	@ErrorMessage NVARCHAR(200) = '',
	@PathAndQuery NVARCHAR(200) = '',
	@ClientIP NVARCHAR(50) = '',
	@ErrorTime DATETIME,
	@StackTrace NVARCHAR(MAX) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO dbo.SystemErrorLog ( ErrorType , ErrorMessage , PathAndQuery , ClientIP , ErrorTime , StackTrace )
    VALUES  ( @ErrorType ,  @ErrorMessage ,  @PathAndQuery ,  @ClientIP ,  @ErrorTime ,  @StackTrace )
    
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_T_SYS_MenuEdit]    Script Date: 09/26/2016 18:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,谌昊>
-- Create date: <Create Date,,2016-7-12>
-- Description:	<Description,,菜单编辑>
-- =============================================
CREATE PROCEDURE [dbo].[PROC_T_SYS_MenuEdit]
	-- Add the parameters for the stored procedure here
	@Type INT  = 0, --1: 添加，2: 修改，3: 逻辑删除
	@MenuID UNIQUEIDENTIFIER = '00000000-0000-0000-0000-000000000000',
	@ParentID VARCHAR(50) = '',
	@MenuName NVARCHAR(50) = '', 
	@MenuImg NVARCHAR(100) = '', 
	@MenuType INT = 0, 
	@NavigateUrl NVARCHAR(200) = '', 
	@DeleteFlag INT = 0,
	@SortCode INT = 0
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

	IF(@Type = 1)
	BEGIN
		INSERT INTO dbo.t_Sys_Menus (MenuID, ParentID, MenuName, MenuImg, MenuType, NavigateUrl, SortCode, DeleteFlag, CreateDate)
		VALUES (@MenuID, @ParentID, @MenuName, @MenuImg, @MenuType, @NavigateUrl, @SortCode, 0, GETDATE())
	END
	IF(@Type = 2)
	BEGIN
		UPDATE dbo.t_Sys_Menus
		SET ParentID = @ParentID,
			MenuName = @MenuName,
			MenuImg = @MenuImg,
			MenuType = @MenuType,
			NavigateUrl = @NavigateUrl,
			SortCode = @SortCode
		WHERE MenuID = @MenuID
	END
	IF(@Type = 3)
	BEGIN
		UPDATE dbo.t_Sys_Menus
		SET DeleteFlag = @DeleteFlag
		WHERE MenuID = @MenuID
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_T_SYS_MenuDelete]    Script Date: 09/26/2016 18:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,谌昊>
-- Create date: <Create Date,,2016-8-30>
-- Description:	<Description,,完全删除菜单数据>
-- =============================================
CREATE PROCEDURE [dbo].[PROC_T_SYS_MenuDelete]
	-- Add the parameters for the stored procedure here
	@MenuID UNIQUEIDENTIFIER = '00000000-0000-0000-0000-000000000000'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

    DECLARE @myTable TABLE
	(
		MenuID UNIQUEIDENTIFIER
	)
	INSERT INTO @myTable ( MenuID )
	SELECT MenuID FROM dbo.t_Sys_Menus WHERE MenuID = @MenuID
	WHILE (@@ROWCOUNT > 0)
	BEGIN
		INSERT INTO @myTable ( MenuID )
		SELECT MenuID FROM dbo.t_Sys_Menus AS A 
		WHERE ParentID IN (SELECT CONVERT(NVARCHAR(50), MenuID) FROM @myTable ) 
		AND A.MenuID NOT IN (SELECT MenuID FROM @myTable )
	END
	
	DELETE FROM dbo.t_Sys_Menus WHERE MenuID IN (SELECT MenuID FROM @myTable )
	--SELECT * FROM dbo.t_Sys_Menus WHERE MenuID IN (SELECT MenuID FROM @myTable )
    
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_T_SYS_GetUserList]    Script Date: 09/26/2016 18:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,谌昊>
-- Create date: <Create Date,,2016-8-31>
-- Description:	<Description,,查询用户列表>
-- =============================================
CREATE PROCEDURE [dbo].[PROC_T_SYS_GetUserList]
	-- Add the parameters for the stored procedure here
	@UserID UNIQUEIDENTIFIER = '00000000-0000-0000-0000-000000000000',
	@UserName NVARCHAR(50) = '',
	@DeleteFlag INT = -1,
	@OUTTotalCount INT OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT @OUTTotalCount = COUNT(*) 
	FROM dbo.t_Sys_Users(NOLOCK) AS A 
    WHERE  1 = 1 
    AND (@UserID IS NULL OR @UserID = '00000000-0000-0000-0000-000000000000' OR @UserID = A.UserID) 
    AND (@UserName IS NULL OR @UserName = '' OR @UserName = A.UserName)
    AND (@DeleteFlag IS NULL OR @DeleteFlag = -1 OR @DeleteFlag = A.DeleteFlag)

    SELECT ROW_NUMBER() OVER(ORDER BY CreateDate DESC) AS RowNo, UserID, UserName, [Password], Email, CreateDate, DeleteFlag
    FROM dbo.t_Sys_Users(NOLOCK) AS A 
    WHERE  1 = 1 
    AND (@UserID IS NULL OR @UserID = '00000000-0000-0000-0000-000000000000' OR @UserID = A.UserID) 
    AND (@UserName IS NULL OR @UserName = '' OR @UserName = A.UserName)
    AND (@DeleteFlag IS NULL OR @DeleteFlag = -1 OR @DeleteFlag = A.DeleteFlag)
    
END
GO
/****** Object:  Default [DF_t_Sys_Buttons_DeleteFlag]    Script Date: 09/26/2016 18:10:57 ******/
ALTER TABLE [dbo].[t_Sys_Buttons] ADD  CONSTRAINT [DF_t_Sys_Buttons_DeleteFlag]  DEFAULT ((0)) FOR [DeleteFlag]
GO
/****** Object:  Default [DF_t_Sys_Buttons_CreateDate]    Script Date: 09/26/2016 18:10:57 ******/
ALTER TABLE [dbo].[t_Sys_Buttons] ADD  CONSTRAINT [DF_t_Sys_Buttons_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_t_Sys_Menus_DeleteFlag]    Script Date: 09/26/2016 18:10:57 ******/
ALTER TABLE [dbo].[t_Sys_Menus] ADD  CONSTRAINT [DF_t_Sys_Menus_DeleteFlag]  DEFAULT ((0)) FOR [DeleteFlag]
GO
/****** Object:  Default [DF_t_Sys_Menus_CreateDate]    Script Date: 09/26/2016 18:10:57 ******/
ALTER TABLE [dbo].[t_Sys_Menus] ADD  CONSTRAINT [DF_t_Sys_Menus_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_t_Sys_Roles_DeleteFlag]    Script Date: 09/26/2016 18:10:57 ******/
ALTER TABLE [dbo].[t_Sys_Roles] ADD  CONSTRAINT [DF_t_Sys_Roles_DeleteFlag]  DEFAULT ((0)) FOR [DeleteFlag]
GO
/****** Object:  Default [DF_t_Sys_Roles_CreateDate]    Script Date: 09/26/2016 18:10:57 ******/
ALTER TABLE [dbo].[t_Sys_Roles] ADD  CONSTRAINT [DF_t_Sys_Roles_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_t_Sys_Users_CreateDate]    Script Date: 09/26/2016 18:10:57 ******/
ALTER TABLE [dbo].[t_Sys_Users] ADD  CONSTRAINT [DF_t_Sys_Users_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_t_Sys_Users_DeleteFlag]    Script Date: 09/26/2016 18:10:57 ******/
ALTER TABLE [dbo].[t_Sys_Users] ADD  CONSTRAINT [DF_t_Sys_Users_DeleteFlag]  DEFAULT ((0)) FOR [DeleteFlag]
GO
