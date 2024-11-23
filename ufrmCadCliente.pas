unit ufrmCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseCad, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, uClientes;

type
  TfrmCadCliente = class(TfrmBaseCad)
    edtNome: TEdit;
    lblCodigo: TLabel;
    rdgTipoPessoa: TRadioGroup;
    lblNome: TLabel;
    lblCPF: TLabel;
    edtCPF: TEdit;
    edtInsEstadual: TEdit;
    lblInsEstadual: TLabel;
    edtEndereco: TEdit;
    lblEndereco: TLabel;
    lblBairro: TLabel;
    edtBairro: TEdit;
    lblNumero: TLabel;
    edtNumero: TEdit;
    lblSobrenome: TLabel;
    edtSobrenome: TEdit;
    edtCidade: TEdit;
    lblCidade: TLabel;
    edtPais: TEdit;
    lblPais: TLabel;
    procedure acOkExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

{$R *.dfm}

procedure TfrmCadCliente.acOkExecute(Sender: TObject);
var
  vCliente : TClientes;
begin
  inherited;
  if trim(edtNome.Text)<>'' then
  begin
    vCliente := TClientes.create;
    vCliente.Pessoa.TipoPessoa := 'F';
    if rdgTipoPessoa.ItemIndex>0 then
     vCliente.Pessoa.TipoPessoa := 'J';
    vCliente.Pessoa.Nome := edtNome.Text;
    vCliente.Pessoa.Sobrenome := edtSobrenome.Text;
    vCliente.Pessoa.CPFCNPJ := edtCPF.Text;
    vCliente.Pessoa.InscrEstd := edtInsEstadual.Text;
    vCliente.Pessoa.Endereco := edtEndereco.Text;
    vCliente.Pessoa.Numero := edtNumero.Text;
    vCliente.Pessoa.Bairro := edtBairro.Text;
    vCliente.Pessoa.Cidade := edtCidade.Text;
    vCliente.Pessoa.Pais := edtPais.Text;
    vCliente.Salvar;
    ModalResult := mrOk;
     end;

    vCliente.Free;
  end;

end.
