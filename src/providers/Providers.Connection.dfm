object ProviderConnection: TProviderConnection
  Height = 293
  Width = 374
  PixelsPerInch = 120
  object FDConn: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      
        'Database=C:\Users\ECO-03\Documents\GitHub\ProtoSystem\bin\data\P' +
        'rotoSystem.s3db'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 160
    Top = 130
  end
end
