unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, UDM,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CONTAS_PAGAR, EFuncoes,
  Vcl.Imaging.pngimage, Vcl.Menus, CONTAS_RECEBER, Vcl.WinXPickers;
type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    pcPrincipal: TPageControl;
    tsContas: TTabSheet;
    tsLembretes: TTabSheet;
    qrContas: TFDQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel3: TPanel;
    Button5: TButton;
    Panel4: TPanel;
    Button6: TButton;
    Panel5: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Panel6: TPanel;
    Label2: TLabel;
    Image2: TImage;
    Panel7: TPanel;
    Label3: TLabel;
    Image4: TImage;
    Panel8: TPanel;
    Label4: TLabel;
    Image5: TImage;
    MainMenu1: TMainMenu;
    CONTASAPAGAR1: TMenuItem;
    CONTASARECEBER1: TMenuItem;
    EMPRESA1: TMenuItem;
    CLIENTES1: TMenuItem;
    Panel9: TPanel;
    Label5: TLabel;
    Image6: TImage;
    AGENDA1: TMenuItem;
    pnBotoes: TPanel;
    Panel11: TPanel;
    Label6: TLabel;
    Image7: TImage;
    Panel12: TPanel;
    Label7: TLabel;
    Image8: TImage;
    FUNCIONRIOS1: TMenuItem;
    CATEGORIAS1: TMenuItem;
    Panel13: TPanel;
    Panel14: TPanel;
    Label8: TLabel;
    lblContaPagar: TLabel;
    Button1: TButton;
    query: TFDQuery;
    queryQTDECONTASPAGAR: TIntegerField;
    DatePicker1: TDatePicker;
    btnAtualizaDashBoard: TButton;
    Label9: TLabel;
    Panel15: TPanel;
    lblContaReceber: TLabel;
    Label11: TLabel;
    Button7: TButton;
    query2: TFDQuery;
    query2QTDECONTASRECEBER: TIntegerField;
    query3: TFDQuery;
    Panel16: TPanel;
    lblAgendamento: TLabel;
    Label12: TLabel;
    Button8: TButton;
    query3QTDEAGENDAMENTO: TIntegerField;
    Label10: TLabel;
    Panel17: TPanel;
    Image3: TImage;
    Image9: TImage;
    Panel10: TPanel;
    Label13: TLabel;
    Image10: TImage;
    CAIXA1: TMenuItem;
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Panel11Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Panel12Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAtualizaDashBoardClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
  private

  public
    function getRelatorioCaminho(pFileName: string): string;
    procedure AtualizarDashBoard;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses SOBRE, uCadEmpresa, uCadCliente, UAgenda, uCadFuncionarios, uCadCategorias;



procedure TFrmPrincipal.AtualizarDashBoard;
var qr : TFDQuery;
begin
  qr := NewQuery();
  qr.sql.Clear;
  qr.SQL.Add('select count(*) as qtdeContasPagar from contas_pagar');
  qr.sql.Add('where (data_vencimento = ''' + formatadataSql(DatePicker1.Date) + ''') and situacao = ''ABERTO''');
  dm.ExecuteQuery(qr, ctOpen);

  lblContaPagar.Caption := 'Vencem hoje ' + qr.Fields[0].AsString +
    ' contas a pagar!';

  qr.sql.Clear;
  qr.SQL.Add('select count(*) as qtdeContasReceber from contas_receber');
  qr.sql.Add('where (data_vencimento = ''' + formatadataSql(DatePicker1.Date) + ''') and situacao = ''ABERTO''');
  dm.ExecuteQuery(qr, ctOpen);

  lblContaReceber.Caption := 'Vencem hoje ' + qr.Fields[0].AsString +
    ' contas a receber!';

  qr.sql.Clear;
  qr.SQL.Add('select count(*) as qtdeAgendamento from agendamentos');
  qr.sql.Add('where (data = ''' + formatadataSql(DatePicker1.Date) + ''')');
  dm.ExecuteQuery(qr, ctOpen);

  lblAgendamento.Caption := 'Voce tem ' + qr.Fields[0].AsString + ' agendamento(s) para hoje!';
end;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  frmContasPagar := tfrmContasPagar.Create(self);
  try
    frmContasPagar.DateTimePicker1.Date := date;
    frmContasPagar.DateTimePicker2.Date := date;
    frmContasPagar.ComboBox1.ItemIndex := 1;
    frmContasPagar.ListarContas;
    frmContasPagar.ShowModal;
  finally
    freeandnil(frmContasPagar);
    AtualizarDashBoard;
  end;
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
begin
  pcPrincipal.ActivePage := tsContas;
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
begin
  Try
    qrContas.Post;
  Except
    ShowMessage('Nenhum lembrete para gravar');
  End;
end;

procedure TFrmPrincipal.Button4Click(Sender: TObject);
begin
  Try
    qrContas.Delete;
  Except
    ShowMessage('Nenhum lembrete para ser excluido!');
  End;
end;

procedure TFrmPrincipal.Button5Click(Sender: TObject);
begin
  pcPrincipal.ActivePage := tsLembretes;
end;

procedure TFrmPrincipal.Button6Click(Sender: TObject);
begin
  FrmSobre := TFrmSobre.Create(Self);
  try
    FrmSobre.ShowModal;
  finally
    freeandnil(frmSobre);
  end;
end;

procedure TFrmPrincipal.Button7Click(Sender: TObject);
begin
  frmContasReceber := tfrmContasReceber.Create(self);
  try
    frmContasReceber.DateTimePicker1.Date := date;
    frmContasReceber.DateTimePicker2.Date := date;
    frmContasReceber.ComboBox1.ItemIndex := 1;
    frmContasReceber.ListarContas;
    frmContasReceber.ShowModal;
  finally
    freeandnil(frmContasReceber);
    AtualizarDashBoard;
  end;
end;

procedure TFrmPrincipal.Button8Click(Sender: TObject);
begin
  FrmAgenda := tfrmAgenda.Create(self);
  try
    frmAgenda.DateTimePicker1.Date := Date;
    frmAgenda.ListarAgendamentos;
    frmAgenda.ShowModal;
  finally
    freeandnil(frmAgenda);
    AtualizarDashBoard;
  end;
end;

procedure TFrmPrincipal.btnAtualizaDashBoardClick(Sender: TObject);
begin
  AtualizarDashBoard
end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin
  if not (qrContas.FieldByName('LEMBRETES').IsNull) then
    if Application.MessageBox('Voce tem um lembrete ativo. Deseja olhar qual � o Lembrete?', 'ATEN��O', mb_iconquestion + mb_yesno) = idYes then
    Begin
      pcPrincipal.ActivePage := tsLembretes;
    End;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  QRContas.Active := True;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  DatePicker1.Date := date;
  AtualizarDashBoard;
end;

function TFrmPrincipal.getRelatorioCaminho(pFileName: string): string;
var
  FilePath, LocalFilePath: string;
begin
  result := '';
  if (Trim(pFileName) <> '') then
  begin
    pFileName := AnsiLowerCase(pFileName);
    if (Pos('.fr3', pFileName) <= 0) then
      pFileName := pFileName + '.fr3';
    FilePath := pathDelim + 'rel' + pathDelim;
    LocalFilePath := ExtractFilePath(Application.ExeName) + pathDelim + 'rel' + pathDelim;
    if (fileExists(LocalFilePath + pFileName)) then {CAMINHO DEFAULT SISTEMA}
      result := LocalFilePath + pFileName
    else if (fileExists(FilePath + pFileName)) then {CAMINHO DEFAULT SISTEMA}
      result := FilePath + pFileName
    else
    begin
      ShowMessage('Desculpe, relat�rio ' + pFileName + ' n�o encontrado.' + sLineBreak + sLineBreak + 'Pasta de relat�rios: ' + FilePath);
      Abort;
    end;
  end;
end;

procedure TFrmPrincipal.Image9Click(Sender: TObject);
begin
  if pnBotoes.Visible then
    pnBotoes.Visible := false
  else
    pnBotoes.Visible := true;
end;

procedure TFrmPrincipal.Panel11Click(Sender: TObject);
begin
  FrmCadFuncionarios := TFrmCadFuncionarios.Create(self);
  try
    FrmCadFuncionarios.ShowModal;
  finally
    freeandnil(frmCadFuncionarios);
  end;
end;

procedure TFrmPrincipal.Panel12Click(Sender: TObject);
begin
  FrmCategorias := TFrmCategorias.Create(Self);
  try
    FrmCategorias.ShowModal;
  finally
    freeandnil(frmCategorias);
  end;
end;

procedure TFrmPrincipal.Panel5Click(Sender: TObject);
begin
  FrmContasPagar := TFrmContasPagar.Create(Self);
  try
    FrmContasPagar.ShowModal;
  finally
    freeandnil(frmContasPagar);
    frmPrincipal.btnAtualizaDashBoard.Click;
  end;
end;

procedure TFrmPrincipal.Panel6Click(Sender: TObject);
begin
  FrmContasReceber :=TFrmContasReceber.Create(Self);
  try
    FrmContasReceber.ShowModal;
  finally
    freeandnil(frmContasReceber);
    AtualizarDashBoard;
  end;
end;

procedure TFrmPrincipal.Panel7Click(Sender: TObject);
begin
  FrmEmpresa := TFrmEmpresa.Create(Self);
  try
    FrmEmpresa.ShowModal;
  finally
    freeandnil(frmEmpresa);
  end;
end;

procedure TFrmPrincipal.Panel8Click(Sender: TObject);
begin
  FrmCadCliente := TFrmCadCliente.Create(Self);
  try
    FrmCadCliente.ShowModal;
  finally
    freeandnil(frmCadCliente);
  end;
end;

procedure TFrmPrincipal.Panel9Click(Sender: TObject);
begin
  FrmAgenda := TFrmAgenda.Create(Self);
  try
    FrmAgenda.ShowModal;
  finally
    freeandnil(frmAgenda);
  end;
end;

end.
