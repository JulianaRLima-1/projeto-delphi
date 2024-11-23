unit ufrmListarClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseGrid, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, uDM, uClientes, System.Actions, Vcl.ActnList, ufrmCadCliente;

type
  TfrmListarClientes = class(TfrmBaseGrid)
    procedure FormCreate(Sender: TObject);
    procedure acIncluirExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FTransacao: TTransacao;
    FQuery: TQuery;
    procedure carregar;
  public
    { Public declarations }
  end;

var
  frmListarClientes: TfrmListarClientes;

implementation

{$R *.dfm}

procedure TfrmListarClientes.acIncluirExecute(Sender: TObject);
begin
  inherited;
  frmCadCliente := TfrmCadCliente.Create(application);
  if frmCadCliente.ShowModal = mrOk then
  begin
    carregar;
  end;
  frmCadCliente.Free;
end;

procedure TfrmListarClientes.carregar;
var
  vCliente: TClientes;
begin
  vCliente := TClientes.Create;
  if assigned(FTransacao) then
    DM.FreeTransaction(FTransacao);
  if assigned(FQuery) then
    DM.FreeQuery(FQuery);

  FTransacao := DM.GetTransaction;
  FTransacao.StartTransaction;
  FQuery := TClientes.pesquisar(FTransacao);
  dsDados.DataSet := FQuery;
end;

procedure TfrmListarClientes.FormCreate(Sender: TObject);
begin
  inherited;
  carregar;
end;

procedure TfrmListarClientes.FormDestroy(Sender: TObject);
begin
  inherited;
  if assigned(FTransacao) then
    DM.FreeTransaction(FTransacao);
  if assigned(FQuery) then
    DM.FreeQuery(FQuery);
end;

end.
