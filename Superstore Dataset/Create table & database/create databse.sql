create Database SuperStore
on
(
  Name = SuperStore_dat, 
  FileName = 'D:\full project\project(Superstore Dataset)\table and database\SuperStoredat.mdf',
  Size = 15,
  MaxSize = 25,
  FileGrowth = 5 
)
log on 
(
  Name = SuperStore_log,
  FileName = 'D:\full project\project(Superstore Dataset)\table and database\SuperStoreLog.ldf',
  Size = 15MB,
  Maxsize = 25MB,
  FileGrowth = 5MB
)