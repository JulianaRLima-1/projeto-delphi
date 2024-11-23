unit uFrmBaseGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, System.Actions,
  Vcl.ActnList;

type
  TfrmBaseGrid = class(TForm)
    pnlCentral: TPanel;
    pnlButton: TPanel;
    Grid: TDBGrid;
    btnFechar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    btnQuatro: TButton;
    dsDados: TDataSource;
    acGeral: TActionList;
    acIncluir: TAction;
    acExcluir: TAction;
    acEditar: TAction;
    acFechar: TAction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaseGrid: TfrmBaseGrid;

implementation

{$R *.dfm}

end.
