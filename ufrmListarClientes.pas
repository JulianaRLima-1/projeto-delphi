unit ufrmListarClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseGrid, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, uDM, uClientes;

type
  TfrmListarClientes = class(TfrmBaseGrid)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FTransacao : TTransacao;
    FQuery : TQuery;
  public
    { Public declarations }
  end;

var
  frmListarClientes: TfrmListarClientes;

implementation

{$R *.dfm}

procedure TfrmListarClientes.FormCreate(Sender: TObject);
begin
  inherited;
 FTransacao := DM.GetTransaction;
 FTransacao.StartTransaction;
 FQuery := TClientes.pesquisar(FTransacao);
 dsDados.DataSet := FQuery;
end;

end.
