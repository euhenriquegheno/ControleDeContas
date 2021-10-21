unit uConsFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDM, uCadFuncionarios, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmConsFuncionarios = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtConsulta: TEdit;
    btConsultar: TButton;
    rgOrdenacao: TRadioGroup;
    DBGrid1: TDBGrid;
    qrConsFuncionarios: TFDQuery;
    dsFuncionarios: TDataSource;
    qrConsFuncionariosCODIGO: TIntegerField;
    qrConsFuncionariosNOME: TStringField;
    qrConsFuncionariosENDERECO: TStringField;
    qrConsFuncionariosCIDADE: TStringField;
    qrConsFuncionariosUF: TStringField;
    qrConsFuncionariosBAIRRO: TStringField;
    qrConsFuncionariosCPF_CNPJ: TStringField;
    qrConsFuncionariosDATA_CADASTRO: TDateField;
    procedure btConsultarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtConsultaChange(Sender: TObject);
  private
    { Private declarations }
  public
    cod_funcionario : Integer;
    nome_funcionario : String;

    Procedure ListarFuncionarios;
  end;

var
  FrmConsFuncionarios: TFrmConsFuncionarios;

implementation

{$R *.dfm}

procedure TFrmConsFuncionarios.btConsultarClick(Sender: TObject);
begin
  ListarFuncionarios;
end;

procedure TFrmConsFuncionarios.DBGrid1DblClick(Sender: TObject);
begin
  cod_funcionario := qrConsFuncionariosCODIGO.AsInteger;
  nome_funcionario := qrConsFuncionariosNOME.AsString;

  FrmConsFuncionarios.Close;
end;

procedure TFrmConsFuncionarios.edtConsultaChange(Sender: TObject);
begin
  ListarFuncionarios;
end;

procedure TFrmConsFuncionarios.FormActivate(Sender: TObject);
begin
  ListarFuncionarios;
end;

procedure TFrmConsFuncionarios.ListarFuncionarios;
begin
  qrConsFuncionarios.Close;
  qrConsFuncionarios.SQL.Clear;
  qrConsFuncionarios.SQL.Add('SELECT * FROM FUNCIONARIOS');

  if (edtConsulta.Text <> '') then
  Begin
    Try
      StrToInt(edtConsulta.Text);
      qrConsFuncionarios.SQL.Add('WHERE (CODIGO = ' + edtConsulta.text +')');
    Except
      qrConsFuncionarios.SQL.Add('WHERE(UPPER(NOME) LIKE' + QuotedStr('%' + AnsiUpperCase(edtConsulta.Text) +'%')+ ')');
    End;
  End;

  if (rgOrdenacao.ItemIndex = 0) then
    qrConsFuncionarios.SQL.Add('Order By CODIGO')
  Else if (rgOrdenacao.ItemIndex = 1) then
    qrConsFuncionarios.SQL.Add('Order By NOME');

  qrConsFuncionarios.Open;
end;

end.
