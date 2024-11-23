inherited frmListarClientes: TfrmListarClientes
  Caption = 'frmListarClientes'
  ClientWidth = 628
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  inherited pnlCentral: TPanel
    Width = 628
    inherited Grid: TDBGrid
      Height = 397
    end
  end
  inherited pnlButton: TPanel
    Width = 628
    inherited btnFechar: TButton
      Left = 524
      ExplicitLeft = 522
    end
    inherited btnEditar: TButton
      Left = 428
      ExplicitLeft = 426
    end
    inherited btnExcluir: TButton
      Left = 332
      ExplicitLeft = 330
    end
    inherited btnQuatro: TButton
      Left = 236
      ExplicitLeft = 234
    end
  end
  inherited acGeral: TActionList
    inherited acIncluir: TAction
      OnExecute = acIncluirExecute
    end
  end
end
