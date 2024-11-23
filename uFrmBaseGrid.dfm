object frmBaseGrid: TfrmBaseGrid
  Left = 0
  Top = 0
  Caption = 'frmBaseGrid'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlCentral: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 401
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 626
    ExplicitHeight = 397
    object Grid: TDBGrid
      Left = 0
      Top = 0
      Width = 628
      Height = 401
      Align = alClient
      DataSource = dsDados
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object pnlButton: TPanel
    Left = 0
    Top = 401
    Width = 628
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 397
    ExplicitWidth = 626
    DesignSize = (
      628
      41)
    object btnFechar: TButton
      Left = 530
      Top = 6
      Width = 75
      Height = 25
      Action = acFechar
      Anchors = [akTop, akRight]
      TabOrder = 0
      ExplicitLeft = 528
    end
    object btnEditar: TButton
      Left = 434
      Top = 6
      Width = 75
      Height = 25
      Action = acEditar
      Anchors = [akTop, akRight]
      TabOrder = 1
      ExplicitLeft = 432
    end
    object btnExcluir: TButton
      Left = 338
      Top = 6
      Width = 75
      Height = 25
      Action = acExcluir
      Anchors = [akTop, akRight]
      TabOrder = 2
      ExplicitLeft = 336
    end
    object btnQuatro: TButton
      Left = 242
      Top = 6
      Width = 75
      Height = 25
      Action = acIncluir
      Anchors = [akTop, akRight]
      TabOrder = 3
      ExplicitLeft = 240
    end
  end
  object dsDados: TDataSource
    Left = 520
    Top = 32
  end
  object acGeral: TActionList
    Left = 528
    Top = 104
    object acIncluir: TAction
      Caption = '&Incluir'
    end
    object acExcluir: TAction
      Caption = '&Excluir'
    end
    object acEditar: TAction
      Caption = '&Editar'
    end
    object acFechar: TAction
      Caption = '&Fechar'
    end
  end
end
