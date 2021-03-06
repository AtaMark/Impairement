USE [Institution]
GO
/****** Object:  Table [dbo].[account]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[account](
	[id_account] [varchar](12) NOT NULL,
	[account_description] [varchar](50) NULL,
	[branch_id] [int] NOT NULL,
	[customer_number] [varchar](12) NOT NULL,
 CONSTRAINT [pk_account] PRIMARY KEY CLUSTERED 
(
	[id_account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[branch]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[branch](
	[id_branch] [int] NOT NULL,
	[branch_name] [varchar](50) NULL,
	[account_id] [varchar](12) NULL,
 CONSTRAINT [pk_branch] PRIMARY KEY CLUSTERED 
(
	[id_branch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[creditofficer]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[creditofficer](
	[id_credit_officer] [varchar](10) NOT NULL,
	[credit_officer_name] [varchar](50) NULL,
	[loan_application_number] [varchar](10) NULL,
 CONSTRAINT [pk_creditofficer] PRIMARY KEY CLUSTERED 
(
	[id_credit_officer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customer]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customer](
	[customer_number] [varchar](12) NOT NULL,
	[account_holder_name] [varchar](50) NULL,
	[contact1] [varchar](14) NULL,
	[contact2] [int] NULL,
	[genda] [varchar](6) NULL,
	[group_id] [int] NULL,
	[region_id] [int] NOT NULL,
 CONSTRAINT [pk_customer] PRIMARY KEY CLUSTERED 
(
	[customer_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[group]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[group](
	[id_group] [int] NOT NULL,
	[group_description] [varchar](100) NULL,
 CONSTRAINT [pk_group] PRIMARY KEY CLUSTERED 
(
	[id_group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[impairement]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[impairement](
	[id_impairement] [int] NOT NULL,
	[amortization__type] [varchar](45) NULL,
	[provision] [decimal](10, 0) NULL,
	[restructured] [int] NULL,
	[risk_class] [varchar](20) NULL,
	[osb_less_dcfs] [decimal](10, 0) NULL,
	[impairement_loss_year1] [decimal](10, 0) NULL,
	[impairement_loss_year2] [decimal](10, 0) NULL,
	[written_off_year2] [decimal](10, 0) NULL,
	[recovered_in_year2] [decimal](10, 0) NULL,
	[o_principle] [decimal](10, 0) NULL,
	[impairement] [decimal](10, 0) NULL,
	[is_it_still_impaired] [decimal](10, 0) NULL,
	[is_it_writen_off] [decimal](10, 0) NULL,
	[recovery_from_impairement] [decimal](10, 0) NULL,
	[product_id] [varchar](5) NOT NULL,
	[sector_id] [int] NOT NULL,
	[account_id] [varchar](12) NOT NULL,
	[customer_number] [varchar](12) NOT NULL,
	[branch_id] [int] NOT NULL,
 CONSTRAINT [pk_impairement] PRIMARY KEY CLUSTERED 
(
	[id_impairement] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loanheader]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[loanheader](
	[application_id] [varchar](10) NOT NULL,
	[customer_number] [varchar](12) NULL,
	[application_date] [date] NULL,
	[branch_id] [int] NULL,
	[sector_id] [int] NULL,
 CONSTRAINT [pk_loanheader] PRIMARY KEY CLUSTERED 
(
	[application_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loanline]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[loanline](
	[id_loan_line] [int] NOT NULL,
	[application_id] [varchar](10) NULL,
	[date_of_disbursement] [date] NULL,
	[amount] [decimal](10, 0) NULL,
	[os_principle] [decimal](10, 0) NULL,
	[os_interest] [decimal](10, 0) NULL,
	[loan_balance] [decimal](10, 0) NULL,
	[terms] [int] NULL,
	[arrears_amount] [decimal](10, 0) NULL,
	[interest_rate] [decimal](10, 0) NULL,
	[arrears_principle] [decimal](10, 0) NULL,
	[arrears_interest] [decimal](10, 0) NULL,
	[loan_series] [int] NULL,
	[last_due] [int] NULL,
	[business_sector] [int] NULL,
	[sub_sector] [int] NULL,
	[sub_sub_sector] [int] NULL,
	[purpose] [int] NULL,
	[repayment_account] [varchar](12) NULL,
	[interest] [decimal](10, 0) NULL,
	[installment_star__date] [date] NULL,
	[credit_office__ID] [varchar](10) NULL,
	[frequency] [varchar](45) NULL,
	[calculation_method] [int] NULL,
	[number_of_loans] [int] NULL,
	[clearBalance] [decimal](10, 0) NULL,
	[provisionOSP] [decimal](10, 0) NULL,
	[provisionOSI] [decimal](10, 0) NULL,
	[provisionLOM] [decimal](10, 0) NULL,
	[provisionAsAT] [decimal](10, 0) NULL,
	[provisionATEOM] [decimal](10, 0) NULL,
	[daysLate_Number] [int] NULL,
	[daysLateAv] [int] NULL,
	[interestTOEOM] [decimal](10, 0) NULL,
	[gl_interest_month] [decimal](10, 0) NULL,
	[interestpaid] [decimal](10, 0) NULL,
	[principle_in_start_date] [decimal](10, 0) NULL,
	[due_days] [decimal](10, 0) NULL,
	[last_installment_paid_date] [date] NULL,
	[suspended_interest] [decimal](10, 0) NULL,
	[interest_receivable] [decimal](10, 0) NULL,
	[actual_interest_receivable] [decimal](10, 0) NULL,
	[out_standing_balance] [decimal](10, 0) NULL,
	[installments_paid] [decimal](10, 0) NULL,
	[loan_cycle] [int] NULL,
	[recovered_amount] [decimal](10, 0) NULL,
	[savings] [decimal](10, 0) NULL,
	[unrecovered] [decimal](10, 0) NULL,
	[trade] [varchar](45) NULL,
 CONSTRAINT [pk_loanline] PRIMARY KEY CLUSTERED 
(
	[id_loan_line] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lossdefaultpersector]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lossdefaultpersector](
	[id_loss_default_per_sector] [int] NOT NULL,
	[sector_id] [int] NOT NULL,
 CONSTRAINT [pk_lossdefaultpersector] PRIMARY KEY CLUSTERED 
(
	[id_loss_default_per_sector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[macroeconomicfactor]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[macroeconomicfactor](
	[id_macro_economic_factor] [int] NOT NULL,
	[factor] [varchar](250) NULL,
 CONSTRAINT [pk_macroeconomicfactor] PRIMARY KEY CLUSTERED 
(
	[id_macro_economic_factor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[product]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product](
	[id_product] [varchar](5) NOT NULL,
	[product_name] [varchar](50) NULL,
	[loan_application_id] [varchar](10) NULL,
 CONSTRAINT [pk_product] PRIMARY KEY CLUSTERED 
(
	[id_product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[purpose]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[purpose](
	[id_purpose] [int] NOT NULL,
	[purpose_description] [varchar](100) NULL,
	[application_id] [varchar](10) NOT NULL,
 CONSTRAINT [pk_purpose] PRIMARY KEY CLUSTERED 
(
	[id_purpose] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[recoveries]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[recoveries](
	[id_recoveries] [int] NOT NULL,
	[account_id] [varchar](12) NOT NULL,
	[branch_id] [int] NOT NULL,
	[product_id] [varchar](5) NOT NULL,
 CONSTRAINT [pk_recoveries] PRIMARY KEY CLUSTERED 
(
	[id_recoveries] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[region]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[region](
	[id_region] [int] NOT NULL,
	[region_description] [varchar](50) NULL,
 CONSTRAINT [pk_region] PRIMARY KEY CLUSTERED 
(
	[id_region] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sector]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sector](
	[id_sector] [int] NOT NULL,
	[sector_description] [varchar](50) NULL,
 CONSTRAINT [pk_sector] PRIMARY KEY CLUSTERED 
(
	[id_sector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[security]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[security](
	[id_security] [int] NOT NULL,
	[description] [varchar](100) NULL,
	[loan_application_id] [varchar](10) NULL,
	[value_of_security] [decimal](10, 0) NULL,
	[market_value] [decimal](10, 0) NULL,
	[forced_sale_value] [decimal](10, 0) NULL,
	[adjusted_sales_value] [decimal](10, 0) NULL,
	[discounted_cash_flows] [decimal](10, 0) NULL,
 CONSTRAINT [pk_security] PRIMARY KEY CLUSTERED 
(
	[id_security] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[subsector]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[subsector](
	[id_sub_sector] [int] NOT NULL,
	[sub_sector_description] [varchar](100) NULL,
	[sector_id] [int] NOT NULL,
 CONSTRAINT [pk_subsector] PRIMARY KEY CLUSTERED 
(
	[id_sub_sector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[subsubsector]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[subsubsector](
	[id_sub_sub_sector] [int] NOT NULL,
	[sub_sub_sector_description] [varchar](100) NULL,
	[subSector_id] [int] NOT NULL,
 CONSTRAINT [pk_subsubsector] PRIMARY KEY CLUSTERED 
(
	[id_sub_sub_sector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[writtenoff]    Script Date: 04-Jul-18 3:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[writtenoff](
	[id_written_off] [int] NOT NULL,
	[os_balance] [decimal](10, 0) NULL,
	[WrittenOffcol] [varchar](45) NULL,
	[customer_number] [varchar](12) NOT NULL,
	[application_id] [varchar](10) NOT NULL,
	[account_id] [varchar](12) NOT NULL,
	[branch_id] [int] NOT NULL,
 CONSTRAINT [pk_writtenoff] PRIMARY KEY CLUSTERED 
(
	[id_written_off] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [fk_Account_Branch1] FOREIGN KEY([branch_id])
REFERENCES [dbo].[branch] ([id_branch])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [fk_Account_Branch1]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [fk_Account_Customer1] FOREIGN KEY([customer_number])
REFERENCES [dbo].[customer] ([customer_number])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [fk_Account_Customer1]
GO
ALTER TABLE [dbo].[creditofficer]  WITH CHECK ADD  CONSTRAINT [loan_application_number] FOREIGN KEY([loan_application_number])
REFERENCES [dbo].[loanheader] ([application_id])
GO
ALTER TABLE [dbo].[creditofficer] CHECK CONSTRAINT [loan_application_number]
GO
ALTER TABLE [dbo].[customer]  WITH CHECK ADD  CONSTRAINT [fk_Customer_Region1] FOREIGN KEY([region_id])
REFERENCES [dbo].[region] ([id_region])
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [fk_Customer_Region1]
GO
ALTER TABLE [dbo].[customer]  WITH CHECK ADD  CONSTRAINT [group_id] FOREIGN KEY([group_id])
REFERENCES [dbo].[group] ([id_group])
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [group_id]
GO
ALTER TABLE [dbo].[impairement]  WITH CHECK ADD  CONSTRAINT [fk_impairement_Account1] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([id_account])
GO
ALTER TABLE [dbo].[impairement] CHECK CONSTRAINT [fk_impairement_Account1]
GO
ALTER TABLE [dbo].[impairement]  WITH CHECK ADD  CONSTRAINT [fk_impairement_Branch1] FOREIGN KEY([branch_id])
REFERENCES [dbo].[branch] ([id_branch])
GO
ALTER TABLE [dbo].[impairement] CHECK CONSTRAINT [fk_impairement_Branch1]
GO
ALTER TABLE [dbo].[impairement]  WITH CHECK ADD  CONSTRAINT [fk_impairement_Customer1] FOREIGN KEY([customer_number])
REFERENCES [dbo].[customer] ([customer_number])
GO
ALTER TABLE [dbo].[impairement] CHECK CONSTRAINT [fk_impairement_Customer1]
GO
ALTER TABLE [dbo].[impairement]  WITH CHECK ADD  CONSTRAINT [fk_impairement_Product1] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id_product])
GO
ALTER TABLE [dbo].[impairement] CHECK CONSTRAINT [fk_impairement_Product1]
GO
ALTER TABLE [dbo].[impairement]  WITH CHECK ADD  CONSTRAINT [fk_impairement_Sector1] FOREIGN KEY([sector_id])
REFERENCES [dbo].[sector] ([id_sector])
GO
ALTER TABLE [dbo].[impairement] CHECK CONSTRAINT [fk_impairement_Sector1]
GO
ALTER TABLE [dbo].[loanheader]  WITH CHECK ADD  CONSTRAINT [branch_id] FOREIGN KEY([branch_id])
REFERENCES [dbo].[branch] ([id_branch])
GO
ALTER TABLE [dbo].[loanheader] CHECK CONSTRAINT [branch_id]
GO
ALTER TABLE [dbo].[loanheader]  WITH CHECK ADD  CONSTRAINT [customer_number] FOREIGN KEY([customer_number])
REFERENCES [dbo].[customer] ([customer_number])
GO
ALTER TABLE [dbo].[loanheader] CHECK CONSTRAINT [customer_number]
GO
ALTER TABLE [dbo].[loanheader]  WITH CHECK ADD  CONSTRAINT [sector_id] FOREIGN KEY([sector_id])
REFERENCES [dbo].[sector] ([id_sector])
GO
ALTER TABLE [dbo].[loanheader] CHECK CONSTRAINT [sector_id]
GO
ALTER TABLE [dbo].[loanline]  WITH CHECK ADD  CONSTRAINT [application_id] FOREIGN KEY([application_id])
REFERENCES [dbo].[loanheader] ([application_id])
GO
ALTER TABLE [dbo].[loanline] CHECK CONSTRAINT [application_id]
GO
ALTER TABLE [dbo].[lossdefaultpersector]  WITH CHECK ADD  CONSTRAINT [fk_LossDefaultPerSector_Sector1] FOREIGN KEY([sector_id])
REFERENCES [dbo].[sector] ([id_sector])
GO
ALTER TABLE [dbo].[lossdefaultpersector] CHECK CONSTRAINT [fk_LossDefaultPerSector_Sector1]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [loan_application_id] FOREIGN KEY([loan_application_id])
REFERENCES [dbo].[loanheader] ([application_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [loan_application_id]
GO
ALTER TABLE [dbo].[purpose]  WITH CHECK ADD  CONSTRAINT [fk_Purpose_LoanHeader1] FOREIGN KEY([application_id])
REFERENCES [dbo].[loanheader] ([application_id])
GO
ALTER TABLE [dbo].[purpose] CHECK CONSTRAINT [fk_Purpose_LoanHeader1]
GO
ALTER TABLE [dbo].[recoveries]  WITH CHECK ADD  CONSTRAINT [fk_Recoveries_Account1] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([id_account])
GO
ALTER TABLE [dbo].[recoveries] CHECK CONSTRAINT [fk_Recoveries_Account1]
GO
ALTER TABLE [dbo].[recoveries]  WITH CHECK ADD  CONSTRAINT [fk_Recoveries_Branch1] FOREIGN KEY([branch_id])
REFERENCES [dbo].[branch] ([id_branch])
GO
ALTER TABLE [dbo].[recoveries] CHECK CONSTRAINT [fk_Recoveries_Branch1]
GO
ALTER TABLE [dbo].[recoveries]  WITH CHECK ADD  CONSTRAINT [fk_Recoveries_Product1] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id_product])
GO
ALTER TABLE [dbo].[recoveries] CHECK CONSTRAINT [fk_Recoveries_Product1]
GO
ALTER TABLE [dbo].[security]  WITH CHECK ADD  CONSTRAINT [loan_applicaion_id] FOREIGN KEY([loan_application_id])
REFERENCES [dbo].[loanheader] ([application_id])
GO
ALTER TABLE [dbo].[security] CHECK CONSTRAINT [loan_applicaion_id]
GO
ALTER TABLE [dbo].[subsector]  WITH CHECK ADD  CONSTRAINT [fk_SubSector_Sector1] FOREIGN KEY([sector_id])
REFERENCES [dbo].[sector] ([id_sector])
GO
ALTER TABLE [dbo].[subsector] CHECK CONSTRAINT [fk_SubSector_Sector1]
GO
ALTER TABLE [dbo].[subsubsector]  WITH CHECK ADD  CONSTRAINT [fk_SubSubSector_SubSector1] FOREIGN KEY([subSector_id])
REFERENCES [dbo].[subsector] ([id_sub_sector])
GO
ALTER TABLE [dbo].[subsubsector] CHECK CONSTRAINT [fk_SubSubSector_SubSector1]
GO
ALTER TABLE [dbo].[writtenoff]  WITH CHECK ADD  CONSTRAINT [fk_WrittenOff_Account1] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([id_account])
GO
ALTER TABLE [dbo].[writtenoff] CHECK CONSTRAINT [fk_WrittenOff_Account1]
GO
ALTER TABLE [dbo].[writtenoff]  WITH CHECK ADD  CONSTRAINT [fk_WrittenOff_Branch1] FOREIGN KEY([branch_id])
REFERENCES [dbo].[branch] ([id_branch])
GO
ALTER TABLE [dbo].[writtenoff] CHECK CONSTRAINT [fk_WrittenOff_Branch1]
GO
ALTER TABLE [dbo].[writtenoff]  WITH CHECK ADD  CONSTRAINT [fk_WrittenOff_Customer1] FOREIGN KEY([customer_number])
REFERENCES [dbo].[customer] ([customer_number])
GO
ALTER TABLE [dbo].[writtenoff] CHECK CONSTRAINT [fk_WrittenOff_Customer1]
GO
ALTER TABLE [dbo].[writtenoff]  WITH CHECK ADD  CONSTRAINT [fk_WrittenOff_LoanHeader1] FOREIGN KEY([application_id])
REFERENCES [dbo].[loanheader] ([application_id])
GO
ALTER TABLE [dbo].[writtenoff] CHECK CONSTRAINT [fk_WrittenOff_LoanHeader1]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'	' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'branch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A loan officer works on loans' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'creditofficer', @level2type=N'COLUMN',@level2name=N'loan_application_number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first telephone number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'customer', @level2type=N'COLUMN',@level2name=N'contact1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Either female or male' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'customer', @level2type=N'COLUMN',@level2name=N'genda'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'References the group_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'customer', @level2type=N'COLUMN',@level2name=N'group_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Impairement loss for the first year' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'impairement', @level2type=N'COLUMN',@level2name=N'impairement_loss_year1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Impairement lossesfor the 2nd year' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'impairement', @level2type=N'COLUMN',@level2name=N'impairement_loss_year2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Calculated field' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'impairement', @level2type=N'COLUMN',@level2name=N'is_it_still_impaired'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Refers to the sector ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loanline', @level2type=N'COLUMN',@level2name=N'business_sector'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sub sector ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loanline', @level2type=N'COLUMN',@level2name=N'sub_sector'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sub sector ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loanline', @level2type=N'COLUMN',@level2name=N'sub_sub_sector'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Purpose ID. Looks up the purpose table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loanline', @level2type=N'COLUMN',@level2name=N'purpose'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Refers to the account number to be used for repayment of loan' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loanline', @level2type=N'COLUMN',@level2name=N'repayment_account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Credit officer ID. Looks up credit offcer table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loanline', @level2type=N'COLUMN',@level2name=N'credit_office__ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Set interger values that represent
1 -> Reducing bal
2 -> Flat
3 -> blank' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loanline', @level2type=N'COLUMN',@level2name=N'calculation_method'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The % installments paid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loanline', @level2type=N'COLUMN',@level2name=N'installments_paid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of unrecovered loan' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loanline', @level2type=N'COLUMN',@level2name=N'unrecovered'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Note yet clear' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loanline', @level2type=N'COLUMN',@level2name=N'trade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'	' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loanline'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is a mandatory field' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'recoveries', @level2type=N'COLUMN',@level2name=N'account_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is a mandatory field' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'recoveries', @level2type=N'COLUMN',@level2name=N'branch_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is a mandatory field' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'recoveries', @level2type=N'COLUMN',@level2name=N'product_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the security' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'security', @level2type=N'COLUMN',@level2name=N'value_of_security'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The market value of the security' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'security', @level2type=N'COLUMN',@level2name=N'market_value'
GO
