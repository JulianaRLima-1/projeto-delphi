inherited frmCadCliente: TfrmCadCliente
  Caption = 'frmCadCliente'
  ClientWidth = 628
  TextHeight = 15
  inherited pnlButton: TPanel
    Width = 628
  end
  inherited pnlCentral: TPanel
    Width = 628
    object lblCodigo: TLabel
      Left = 56
      Top = 24
      Width = 6
      Height = 15
      Caption = '0'
    end
    object lblNome: TLabel
      Left = 56
      Top = 92
      Width = 36
      Height = 15
      Caption = 'Nome:'
    end
    object lblCPF: TLabel
      Left = 57
      Top = 184
      Width = 24
      Height = 15
      Caption = 'CPF:'
    end
    object lblInsEstadual: TLabel
      Left = 272
      Top = 184
      Width = 97
      Height = 15
      Caption = 'Inscri'#231#227'o Estadual:'
    end
    object lblEndereco: TLabel
      Left = 56
      Top = 234
      Width = 52
      Height = 15
      Caption = 'Endere'#231'o:'
    end
    object lblBairro: TLabel
      Left = 56
      Top = 284
      Width = 34
      Height = 15
      Caption = 'Bairro:'
    end
    object lblNumero: TLabel
      Left = 432
      Top = 234
      Width = 47
      Height = 15
      Caption = 'Numero:'
    end
    object lblSobrenome: TLabel
      Left = 57
      Top = 134
      Width = 64
      Height = 15
      Caption = 'Sobrenome:'
    end
    object lblCidade: TLabel
      Left = 56
      Top = 332
      Width = 40
      Height = 15
      Caption = 'Cidade:'
    end
    object lblPais: TLabel
      Left = 393
      Top = 332
      Width = 24
      Height = 15
      Caption = 'Pa'#237's:'
    end
    object edtNome: TEdit
      Left = 57
      Top = 105
      Width = 521
      Height = 23
      TabOrder = 1
    end
    object rdgTipoPessoa: TRadioGroup
      Left = 56
      Top = 37
      Width = 185
      Height = 49
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Fisica'
        'Juridica')
      ShowFrame = False
      TabOrder = 0
    end
    object edtCPF: TEdit
      Left = 57
      Top = 205
      Width = 177
      Height = 23
      TabOrder = 3
    end
    object edtInsEstadual: TEdit
      Left = 272
      Top = 205
      Width = 305
      Height = 23
      TabOrder = 4
    end
    object edtEndereco: TEdit
      Left = 57
      Top = 255
      Width = 330
      Height = 23
      TabOrder = 5
    end
    object edtBairro: TEdit
      Left = 56
      Top = 305
      Width = 521
      Height = 23
      TabOrder = 7
    end
    object edtNumero: TEdit
      Left = 432
      Top = 255
      Width = 145
      Height = 23
      TabOrder = 6
    end
    object edtSobrenome: TEdit
      Left = 56
      Top = 155
      Width = 521
      Height = 23
      TabOrder = 2
    end
    object edtCidade: TEdit
      Left = 56
      Top = 353
      Width = 313
      Height = 23
      TabOrder = 8
    end
    object edtPais: TEdit
      Left = 393
      Top = 353
      Width = 185
      Height = 23
      TabOrder = 9
    end
  end
  inherited acGeral: TActionList
    inherited acOk: TAction
      OnExecute = acOkExecute
    end
  end
end
