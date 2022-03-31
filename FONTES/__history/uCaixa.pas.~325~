unit uCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, UDM, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TfrmCaixa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    gridCaixa: TDBGrid;
    btnAbertura: TButton;
    btnExcluir: TButton;
    btnIncluir: TButton;
    Panel4: TPanel;
    btnFechamento: TButton;
    btnReabertura: TButton;
    qrCaixa: TFDQuery;
    qrMovCaixa: TFDQuery;
    dsCaixa: TDataSource;
    dsMovCaixa: TDataSource;
    qrMovCaixaCODIGO: TIntegerField;
    qrMovCaixaDESCRICAO: TStringField;
    qrMovCaixaVALOR: TFMTBCDField;
    qrMovCaixaSAIDA: TFMTBCDField;
    qrMovCaixaENTRADA: TFMTBCDField;
    qrMovCaixaTIPO: TStringField;
    Panel5: TPanel;
    Label3: TLabel;
    Panel6: TPanel;
    btnFiltrar: TButton;
    pcPrincipal: TPageControl;
    tsConsulta: TTabSheet;
    tsMovManual: TTabSheet;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    rgTipo: TRadioGroup;
    Label8: TLabel;
    Panel7: TPanel;
    Button2: TButton;
    Button3: TButton;
    qrMovCaixaDATA: TDateField;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    qrCaixaCODIGO: TIntegerField;
    qrCaixaDATA: TDateField;
    qrCaixaSITUACAO: TStringField;
    qrCaixaSALDO: TFMTBCDField;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    Panel8: TPanel;
    edtValorTotal: TEdit;
    Panel9: TPanel;
    dtpDe: TDateTimePicker;
    dtpAte: TDateTimePicker;
    Panel10: TPanel;
    Label4: TLabel;
    label5: TLabel;
    Panel11: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel12: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    qrContasPagar: TFDQuery;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    StringField1: TStringField;
    FMTBCDField1: TFMTBCDField;
    qrContasReceber: TFDQuery;
    IntegerField2: TIntegerField;
    DateField2: TDateField;
    StringField2: TStringField;
    FMTBCDField2: TFMTBCDField;
    procedure btnIncluirClick(Sender: TObject);
    procedure pcPrincipalChange(Sender: TObject);
    procedure qrMovCaixaAfterInsert(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAberturaClick(Sender: TObject);
    procedure btnFechamentoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnReaberturaClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridCaixaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    procedure CalcularSaldoCaixa;
    procedure FiltraCaixa;
    procedure DesabilitaBotao;
  end;

var
  frmCaixa: TfrmCaixa;

implementation

{$R *.dfm}

uses uAberturaCaixa, uFechamentoCaixa;

procedure TfrmCaixa.btnAberturaClick(Sender: TObject);
begin
  frmAberturaCaixa := tfrmAberturaCaixa.create(self);
  try
    frmAberturaCaixa.showModal;
  finally
    freeandnil(frmAberturaCaixa);
  end;
end;

procedure TfrmCaixa.btnExcluirClick(Sender: TObject);
begin
  Try
    if Application.MessageBox('Deseja realmente excluir a movimentação?', 'ATENÇÃO', mb_iconquestion + mb_yesno) = idYes then
    begin
      if (qrMovCaixaSAIDA.AsFloat <> 0) then
      begin
        qrCaixa.Edit;
        qrCaixaSALDO.AsFloat := qrCaixaSALDO.AsFloat + qrMovCaixaSAIDA.AsFloat;
        qrCaixa.Post;
      end
      else if (qrMovCaixaENTRADA.AsFloat <> 0) then
      begin
        qrCaixa.Edit;
        qrCaixaSALDO.AsFloat := qrCaixaSALDO.AsFloat - qrMovCaixaENTRADA.AsFloat;
        qrCaixa.Post;
      end;

      qrCaixa.Refresh;
      qrMovCaixa.delete;
    end;
  Except
    ShowMessage('Nenhuma conta para excluir!');
  End;
end;

procedure TfrmCaixa.btnFechamentoClick(Sender: TObject);
begin
  frmFechamentoCaixa := tfrmFechamentoCaixa.create(self);
  try
    frmFechamentoCaixa.showModal;
  finally
    freeandnil(frmFechamentoCaixa);
  end;
end;

procedure TfrmCaixa.btnFiltrarClick(Sender: TObject);
begin
  FiltraCaixa;
  CalcularSaldoCaixa;
end;

procedure TfrmCaixa.btnIncluirClick(Sender: TObject);
begin
  qrMovCaixa.Insert;
  pcPrincipal.ActivePage := tsMovManual;
  dbedit6.Text := DateToStr(date);
end;

procedure TfrmCaixa.btnReaberturaClick(Sender: TObject);
begin
  if dm.qrCaixaSITUACAO.AsString <> 'FECHADO' then
  begin
    application.messagebox('Caixa não está fechado!', 'Atenção', mb_ok + mb_iconerror);
    exit;
  end;

  if application.MessageBox('Confirma a reabertura deste caixa?', 'Caixa', mb_yesno + mb_iconquestion) = idyes then
  begin
    dm.qrCaixa.Edit;
    dm.qrCaixaSITUACAO.asString := 'ABERTO';
    dm.qrCaixa.Post;
    dm.conexao.Commit;
    frmcaixa.qrMovCaixa.Refresh;
    dtpDe.Date := dm.qrCaixaDATA.AsDateTime;
    dtpAte.Date := dm.qrCaixaDATA.AsDateTime;
    application.MessageBox('Caixa REABERTO com Sucesso!', 'Aviso', mb_ok + MB_ICONINFORMATION);
    FiltraCaixa;
    CalcularSaldoCaixa;
    DesabilitaBotao;
  end;
end;

procedure TfrmCaixa.Button1Click(Sender: TObject);
begin
  FiltraCaixa;
  CalcularSaldoCaixa;
end;

procedure TfrmCaixa.Button2Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente cancelar?', 'ATENÇÃO', mb_iconquestion + mb_yesno) = idYes then
  Begin
    qrMovCaixa.Cancel;
    pcPrincipal.ActivePage := tsConsulta;
  End;
end;

procedure TfrmCaixa.Button3Click(Sender: TObject);
begin
  Try
    if rgTipo.ItemIndex = 0 then
    begin
      qrMovCaixaENTRADA.AsFloat := qrMovCaixaVALOR.AsFloat;
      qrMovCaixaSAIDA.AsFloat := 0;
      qrCaixa.edit;
      qrCaixaSALDO.AsFloat := qrCaixaSALDO.AsFloat + qrMovCaixaVALOR.AsFloat;
      qrCaixa.post;
      qrCaixa.Refresh;
    end
    else if rgTipo.ItemIndex = 1 then
    begin
      qrMovCaixaSAIDA.AsFloat := qrMovCaixaVALOR.AsFloat;
      qrMovCaixaENTRADA.AsFloat := 0;
      qrCaixa.Edit;
      qrCaixaSALDO.AsFloat := qrCaixaSALDO.AsFloat - qrMovCaixaVALOR.AsFloat;
      qrCaixa.post;
      qrCaixa.Refresh;
    end;

    qrMovCaixaTIPO.AsString := 'CAIXA';

    qrMovCaixa.Post;
    FiltraCaixa;
    CalcularSaldoCaixa;
    pcPrincipal.ActivePage := tsConsulta;
  Except
    if DBEdit5.Text = '' then
      ShowMessage('Insira alguma registro antes de gravar!')
    else
      ShowMessage('Insira alguma registro antes de gravar!');
  End;
end;

procedure TfrmCaixa.CalcularSaldoCaixa;
 VAR V_SOMA : Currency;
begin
  v_soma := 0;
  qrMovCaixa.First;
  while not qrMovCaixa.EOF do
  begin
    if not (qrMovCaixa.FieldByName('VALOR').IsNull) then
      v_soma := v_soma + qrMovCaixa.FieldByName('ENTRADA').Value;
      qrMovCaixa.Next;
  end;

  qrMovCaixa.First;
  while not qrMovCaixa.EOF do
  begin
    if not (qrMovCaixa.FieldByName('VALOR').IsNull) then
      v_soma := v_soma - qrMovCaixa.FieldByName('SAIDA').Value;
      qrMovCaixa.Next;
  end;
  edtValorTotal.Text  := FormatFloat('R$#,##0.00', v_soma);
end;

procedure TfrmCaixa.DesabilitaBotao;
begin
  if qrCaixaSITUACAO.AsString = 'FECHADO' then
  begin
    btnIncluir.Enabled := false;
    btnExcluir.Enabled := false;
    btnFechamento.Enabled := false;
    btnAbertura.Enabled := true;
    btnReabertura.Enabled := true;
  end
  else if qrCaixaSITUACAO.AsString = 'ABERTO' then
  begin
    btnIncluir.Enabled := true;
    btnExcluir.Enabled := true;
    btnFechamento.Enabled := true;
    btnAbertura.Enabled := false;
    btnReabertura.Enabled := false;
  end;
end;

procedure TfrmCaixa.FiltraCaixa;
begin
  qrMovCaixa.sql.Clear;
  qrMovCaixa.sql.Add('select * from movimentacao_caixa');
  qrMovCaixa.sql.Add('where data >= :datai and data <= :dataf');
  qrMovCaixa.ParamByName('datai').AsDate := dtpDe.Date;
  qrMovCaixa.ParamByName('dataf').AsDate := dtpAte.Date;
  qrMovCaixa.Open;

  qrCaixa.Refresh;
end;

procedure TfrmCaixa.FormActivate(Sender: TObject);
begin
  dtpDe.Date := qrCaixaDATA.AsDateTime;
  dtpAte.Date := qrCaixaDATA.AsDateTime;
end;

procedure TfrmCaixa.FormCreate(Sender: TObject);
begin
  qrCaixa.active := true;
  qrMovCaixa.active := true;

  CalcularSaldoCaixa;
  DesabilitaBotao;
  FiltraCaixa;
end;

procedure TfrmCaixa.FormShow(Sender: TObject);
begin
  btnFiltrarClick(sender);
end;

procedure TfrmCaixa.gridCaixaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if qrMovCaixaSAIDA.AsFloat > 0 then
    gridCaixa.Canvas.Font.Color := clRed;

  gridCaixa.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmCaixa.pcPrincipalChange(Sender: TObject);
begin
  if (qrMovCaixa.State = dsInsert) or
  (qrMovCaixa.State = dsEdit) then
  Begin
    Application.MessageBox('Grave ou cancele antes de voltar!', 'ATENÇÃO', MB_ICONEXCLAMATION);
    pcPrincipal.ActivePage := tsMovManual;
  End
  Else
  Begin
    Application.MessageBox('Voce so pode acessar essa aba inserindo ou editando alguma conta!', 'ATENÇÃO', MB_ICONEXCLAMATION);
    pcPrincipal.ActivePage := tsConsulta;
  End;
end;

procedure TfrmCaixa.qrMovCaixaAfterInsert(DataSet: TDataSet);
var query : TFDQuery;
    codigo : Integer;
begin
  query := TFDQuery.Create(self);//CRIA COMPONENTE NA MEMORIA
  query.Connection := Dm.Conexao;//VINCULA O COMPONENTE DE CONEXAO COM A QUERY
  query.Active := false;//DESATIVA CONEXAO DO QUERY COM O BANCO DE DADOS
  query.SQL.Add('SELECT MAX (CODIGO) AS CODIGO FROM MOVIMENTACAO_CAIXA');//SQL DE CONSULTA NO BANCO
  query.Active := True;

  if (query.FieldByName('CODIGO').IsNull) then //VALIDA SE A COLUNA CODIGO É NULL
    Codigo := 1
  else
    codigo := query.FieldByName('CODIGO').AsInteger + 1;

  query.Free;//LIMPA A VARIAVEL QUERY DA MEMÓRIA

  qrMovCaixaCODIGO.AsInteger := codigo;
end;

end.
