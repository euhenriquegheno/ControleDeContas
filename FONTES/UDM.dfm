object Dm: TDm
  OnCreate = DataModuleCreate
  Height = 197
  Width = 385
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Database=C:\Github\ControleDeContas\BANCO\BANCO.FDB'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 104
    Top = 56
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 224
    Top = 56
  end
  object qrCaixa: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from caixa')
    Left = 264
    Top = 128
    object qrCaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object qrCaixaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qrCaixaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 50
    end
    object qrCaixaSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Precision = 18
      Size = 2
    end
  end
  object qrMovCaixa: TFDQuery
    AfterInsert = qrMovCaixaAfterInsert
    Connection = Conexao
    SQL.Strings = (
      'select * from movimentacao_caixa')
    Left = 176
    Top = 128
    object qrMovCaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrMovCaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qrMovCaixaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object qrMovCaixaSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Origin = 'SAIDA'
      Precision = 18
      Size = 2
    end
    object qrMovCaixaENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      Precision = 18
      Size = 2
    end
    object qrMovCaixaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 50
    end
    object qrMovCaixaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
  end
end
