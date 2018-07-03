EXEC [dbo].[CreateTable] 'Fact', 'Sale',
N'
  [Invoice Date Key] datetime2(7),
  [Delivery Date Key] datetime2(7),
  [WWI Invoice ID] int,
  [Description]varchar(200),
  [Package] varchar(100),
  [Quantity] int,
  [Unit Price] decimal,
  [Tax Rate] decimal,
  [Total Excluding Tax] decimal,
  [Tax Amount] decimal,
  [Profit] decimal,
  [Total Including Tax] decimal,
  [Total Dry Items] int,
  [Total Chiller Items] int,
  [WWI City ID] int,
  [WWI Customer ID] int,
  [WWI Bill To Customer ID] int,
  [WWI Stock Item ID] int,
  [WWI Saleperson ID] int,
  [Last Modified When] datetime2(7),
  [Lineage Key] int,
  [City Key] int
',
'DISTRIBUTION = ROUND_ROBIN,
  CLUSTERED COLUMNSTORE INDEX'