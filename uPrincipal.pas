unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    mniCadastro: TMenuItem;
    mniClientes: TMenuItem;
    mniVendas: TMenuItem;
    procedure mniClientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uCadClientes, uFrmBaseGrid;

procedure TForm1.mniClientesClick(Sender: TObject);
begin
frmBaseGrid:=TfrmBaseGrid.Create(application);
frmBaseGrid.ShowModal;
frmBaseGrid.Free;
end;

end.
