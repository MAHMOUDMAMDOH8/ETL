use master ;
create Database Sales
on
(
  Name = Sales_dat, 
  FileName = 'D:\full project\Project 3\Database & table\Salesdat.mdf',
  Size = 15,
  MaxSize = 25,
  FileGrowth = 5 
)
log on 
(
  Name = Sales_log,
  FileName = 'D:\full project\Project 3\Database & table\SalesLog.ldf',
  Size = 15MB,
  Maxsize = 25MB,
  FileGrowth = 5MB
)