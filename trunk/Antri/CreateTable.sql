USE RSKUPANG
IF NOT EXISTS (SELECT * 
           FROM   INFORMATION_SCHEMA.TABLES 
           WHERE  TABLE_SCHEMA = N'dbo' 
                  AND TABLE_NAME = N'RSUD_ANTRIAN' 
                  AND TABLE_TYPE = 'BASE TABLE') 
  BEGIN 
	CREATE TABLE [dbo].[RSUD_ANTRIAN](
		[NO_ANTRIAN] [int] NOT NULL,
		[LOKET] [int] NOT NULL,
	 CONSTRAINT [PK_RSUD_ANTRIAN_1] PRIMARY KEY CLUSTERED 
	(
		[LOKET] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, 
	ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]
  END