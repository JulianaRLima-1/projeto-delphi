unit uClientes;

interface

uses SYSTEM.SysUtils,uDM;

type
  TPessoa = class
  private
    FSobrenome: String;
    FBairro: String;
    FCodCli: integer;
    FInscrEstd: String;
    FCPFCNPJ: String;
    FNumero: String;
    FNome: String;
    FCidade: String;
    FPais: String;
    FEndereco: String;
    FTipoPessoa: string;
    procedure SetBairro(const Value: String);
    procedure SetCidade(const Value: String);
    procedure SetCodCli(const Value: integer);
    procedure SetCPFCNPJ(const Value: String);
    procedure SetEndereco(const Value: String);
    procedure SetInscrEstd(const Value: String);
    procedure SetNome(const Value: String);
    procedure SetNumero(const Value: String);
    procedure SetPais(const Value: String);
    procedure SetSobrenome(const Value: String);
    procedure SetTipoPessoa(const Value: string);
  public
    property CodCli: integer read FCodCli write SetCodCli;
    property TipoPessoa: string read FTipoPessoa write SetTipoPessoa;
    property Nome: String read FNome write SetNome;
    property Sobrenome: String read FSobrenome write SetSobrenome;
    property CPFCNPJ: String read FCPFCNPJ write SetCPFCNPJ;
    property InscrEstd: String read FInscrEstd write SetInscrEstd;
    property Endereco: String read FEndereco write SetEndereco;
    property Numero: String read FNumero write SetNumero;
    property Bairro: String read FBairro write SetBairro;
    property Cidade: String read FCidade write SetCidade;
    property Pais: String read FPais write SetPais;
  end;

  TClientes = class
  private
  public
    Pessoa: TPessoa;
    class function pesquisar(pTransacao: TTransacao): TQuery;
    function Salvar: boolean;
    Constructor create;
    Destructor destroy; override;
  end;

implementation

{ TClientes }

constructor TClientes.create;
begin
  Pessoa := TPessoa.create;
end;

destructor TClientes.destroy;
begin
  Pessoa.Free;
  inherited;
end;

class function TClientes.pesquisar(pTransacao: TTransacao): TQuery;
begin
  Result := DM.GetQuery(pTransacao);
  Result.SQL.Add('select * from pessoa');
  Result.open;
end;

function TClientes.Salvar: boolean;
var
  vTransacao: TTransacao;
  vQuery: TQuery;
begin
  vTransacao := DM.GetTransaction;
  vQuery := DM.GetQuery(vTransacao);
  vQuery.SQL.Add('INSERT INTO pessoa');
  vQuery.SQL.Add('  (');
  vQuery.SQL.Add('     idpessoa');
  vQuery.SQL.Add('    ,pessoa');
  vQuery.SQL.Add('    ,nome');
  vQuery.SQL.Add('    ,sobrenome');
  vQuery.SQL.Add('    ,cpfcnpj');
  vQuery.SQL.Add('    ,inscricaoestadual');
  vQuery.SQL.Add('    ,endereco');
  vQuery.SQL.Add('    ,numero');
  vQuery.SQL.Add('    ,bairro');
  vQuery.SQL.Add('    ,cidade');
  vQuery.SQL.Add('    ,pais');
  vQuery.SQL.Add('  )');
  vQuery.SQL.Add('VALUES');
  vQuery.SQL.Add('  (');
  vQuery.SQL.Add('     GEN_ID(GEN_COD_CLIENTE, 1)');
  vQuery.SQL.Add(' ,'+ QuotedStr(Pessoa.TipoPessoa));
  vQuery.SQL.Add(' ,'+ QuotedStr(Pessoa.Nome));
  vQuery.SQL.Add(' ,'+ QuotedStr(Pessoa.Sobrenome));
  vQuery.SQL.Add(' ,'+ QuotedStr(Pessoa.CPFCNPJ));
  vQuery.SQL.Add(' ,'+ QuotedStr(Pessoa.InscrEstd));
  vQuery.SQL.Add(' ,'+ QuotedStr(Pessoa.Endereco));
  vQuery.SQL.Add(' ,'+ QuotedStr(Pessoa.Numero));
  vQuery.SQL.Add(' ,'+ QuotedStr(Pessoa.Bairro));
  vQuery.SQL.Add(' ,'+ QuotedStr(Pessoa.Cidade));
  vQuery.SQL.Add(' ,'+ QuotedStr(Pessoa.Pais));
  vQuery.SQL.Add('  )');

  vTransacao.StartTransaction;
  vQuery.ExecSQL;
  vTransacao.Commit;

  vQuery.Free;
  vTransacao.Free;

  Result := True;
end;

{ TPessoa }

procedure TPessoa.SetBairro(const Value: String);
begin
  FBairro := Value;
end;

procedure TPessoa.SetCidade(const Value: String);
begin
  FCidade := Value;
end;

procedure TPessoa.SetCodCli(const Value: integer);
begin
  FCodCli := Value;
end;

procedure TPessoa.SetCPFCNPJ(const Value: String);
begin
  FCPFCNPJ := Value;
end;

procedure TPessoa.SetEndereco(const Value: String);
begin
  FEndereco := Value;
end;

procedure TPessoa.SetInscrEstd(const Value: String);
begin
  FInscrEstd := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TPessoa.SetNumero(const Value: String);
begin
  FNumero := Value;
end;

procedure TPessoa.SetPais(const Value: String);
begin
  FPais := Value;
end;

procedure TPessoa.SetSobrenome(const Value: String);
begin
  FSobrenome := Value;
end;

procedure TPessoa.SetTipoPessoa(const Value: string);
begin
  FTipoPessoa := Value;
end;

end.
