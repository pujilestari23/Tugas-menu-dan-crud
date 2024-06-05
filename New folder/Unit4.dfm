object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 144
  Top = 110
  Height = 150
  Width = 215
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\ACER\Documents\Kuliah Sem 4\Visual2\New folder\Unconfir' +
      'med 248917.crdownload'
    Left = 24
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from kategori;')
    Params = <>
    Left = 96
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 152
    Top = 32
  end
end
