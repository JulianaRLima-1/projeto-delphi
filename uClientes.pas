unit uClientes;

interface

uses uDM;

type
  TClientes = class
    private
    public
    class function pesquisar(pTransacao: TTransacao): TQuery;
  end;

implementation

{ TClientes }

class function TClientes.pesquisar(pTransacao: TTransacao): TQuery;
begin
 Result := DM.GetQuery(pTransacao);
 Result.SQL.Add('select * from vendas');
 Result.open;
end;

end.
