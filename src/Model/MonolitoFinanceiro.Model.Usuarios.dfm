object dmUsuarios: TdmUsuarios
  Height = 480
  Width = 640
  object sqlUsuarios: TFDQuery
    Active = True
    Connection = dmConexao.sqlConexao
    SQL.Strings = (
      'select * from usuarios')
    Left = 40
    Top = 32
  end
  object cdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuarios'
    Left = 176
    Top = 32
    object cdsUsuariosid: TStringField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 36
    end
    object cdsUsuariosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object cdsUsuarioslogin: TStringField
      FieldName = 'login'
      Origin = 'login'
      Required = True
    end
    object cdsUsuariossenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
    end
    object cdsUsuariosstatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsUsuariosdata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      Required = True
    end
  end
  object dspUsuarios: TDataSetProvider
    DataSet = sqlUsuarios
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 96
    Top = 32
  end
end
