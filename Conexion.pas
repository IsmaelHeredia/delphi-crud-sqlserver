// Written By Ismael Heredia in the year 2016

unit Conexion;

interface

uses Windows, SysUtils, Data.SqlExpr,
  Data.DBXMSSQL, Data.DB, Data.Win.ADODB, Classes, Producto, Proveedor, Usuario;

type
  TConexion = class
  private
  public
    conexion_now: TADOConnection;
    c: string;
    Constructor Create; overload;
    function Conectar(): boolean;
    function Desconectar(): boolean;
  end;

implementation

constructor TConexion.Create;
begin
  inherited;
  conexion_now := TADOConnection.Create(nil);
  c := '''';
end;

function TConexion.Conectar(): boolean;
begin
  try
    begin
      conexion_now.LoginPrompt := false;
      conexion_now.ConnectionString :=
        'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=admin;Password=123456;Initial Catalog=sistema;Data Source=localhost\SQLEXPRESS';
      conexion_now.Connected := true;
      Result := true;
    end;
  except
    begin
      Result := false;
    end;
  end;
end;

function TConexion.Desconectar(): boolean;
begin
  try
    begin
      conexion_now.Connected := false;
      Result := true;
    end;
  except
    begin
      Result := false;
    end;
  end;
end;

end.
