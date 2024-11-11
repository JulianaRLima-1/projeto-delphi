program progCadastro;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uCadClientes in 'uCadClientes.pas' {frmCadClientes},
  uFrmBaseCad in 'uFrmBaseCad.pas' {frmBaseCad},
  uFrmBaseGrid in 'uFrmBaseGrid.pas' {frmBaseGrid},
  ufrmListarClientes in 'ufrmListarClientes.pas' {frmListarClientes},
  uDM in 'uDM.pas' {DM: TDataModule},
  uClientes in 'uClientes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmCadClientes, frmCadClientes);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
