inherited frmUsuarios: TfrmUsuarios
  Caption = 'Cadastro de usu'#225'rios'
  OnShow = FormShow
  TextHeight = 21
  inherited PnlPrincipal: TCardPanel
    ActiveCard = cardCadastro
    inherited cardCadastro: TCard
      object Label2: TLabel [0]
        Left = 12
        Top = 43
        Width = 43
        Height = 21
        Caption = 'Nome'
      end
      object Label3: TLabel [1]
        Left = 12
        Top = 78
        Width = 39
        Height = 21
        Caption = 'Login'
      end
      object Label4: TLabel [2]
        Left = 12
        Top = 113
        Width = 43
        Height = 21
        Caption = 'Senha'
      end
      object Label5: TLabel [3]
        Left = 12
        Top = 152
        Width = 42
        Height = 21
        Caption = 'Status'
      end
      inherited Panel1: TPanel
        inherited btnSalvar: TButton
          OnClick = btnSalvarClick
        end
      end
      object edtNome: TEdit
        Left = 72
        Top = 40
        Width = 425
        Height = 29
        TabOrder = 1
        TextHint = 'Digite o nome'
      end
      object edtLogin: TEdit
        Left = 72
        Top = 75
        Width = 425
        Height = 29
        TabOrder = 2
        TextHint = 'Digite o login'
      end
      object edtSenha: TEdit
        Left = 72
        Top = 110
        Width = 425
        Height = 29
        PasswordChar = '*'
        TabOrder = 3
        TextHint = 'Digite a senha'
      end
      object ToggleStatus: TToggleSwitch
        Left = 72
        Top = 152
        Width = 130
        Height = 23
        StateCaptions.CaptionOn = 'Ativo'
        StateCaptions.CaptionOff = 'Bloqueado'
        TabOrder = 4
      end
    end
    inherited cardPesquisa: TCard
      inherited pnlPesquisa: TPanel
        inherited btnPesquisar: TButton
          OnClick = btnPesquisarClick
        end
      end
      inherited pnlGrid: TPanel
        inherited DBGrid1: TDBGrid
          DataSource = DataSource1
          Columns = <
            item
              Expanded = False
              FieldName = 'id'
              Title.Caption = 'ID'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome'
              Title.Caption = 'Nome'
              Width = 382
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'login'
              Title.Caption = 'Login'
              Width = 207
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'status'
              Title.Caption = 'Status'
              Width = 129
              Visible = True
            end>
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 776
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = dmUsuarios.cdsUsuarios
    Left = 776
    Top = 368
  end
end
