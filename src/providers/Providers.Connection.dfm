object ProviderConnection: TProviderConnection
  Height = 234
  Width = 299
  object FDConn: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      'OpenMode=ReadWrite'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 128
    Top = 104
  end
end
