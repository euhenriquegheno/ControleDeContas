unit form.contas.receber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, UDM, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Menus, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.Imaging.pngimage, EFuncoes;

type
  TFrmContasReceber = class(TForm)
    Panel1: TPanel;
    pcPrincipal: TPageControl;
    tsContasReceber: TTabSheet;
    tsCadastro: TTabSheet;
    Panel2: TPanel;
    NK: TDBGrid;
    qrContasReceber: TFDQuery;
    dsConsulta: TDataSource;
    BtnVoltar: TButton;
    Label6: TLabel;
    edtConsulta: TEdit;
    Label11: TLabel;
    DateTimePicker1: TDateTimePicker;
    BtnBuscar: TButton;
    Label8: TLabel;
    CbSituacao: TComboBox;
    BtnExcluir: TButton;
    BtnIncluir: TButton;
    BtnAlterar: TButton;
    PopupMenu1: TPopupMenu;
    EXCLUIR1: TMenuItem;
    INCLUIR1: TMenuItem;
    ALTERAR1: TMenuItem;
    CANCELAR1: TMenuItem;
    PAGAR1: TMenuItem;
    REABRIR1: TMenuItem;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    Panel4: TPanel;
    GRAVAR1: TMenuItem;
    Panel7: TPanel;
    Label7: TLabel;
    BtnCalcular: TButton;
    edtValorTotal: TMaskEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label14: TLabel;
    BtnBuscarCliente: TImage;
    DateTimePicker2: TDateTimePicker;
    Label17: TLabel;
    Label18: TLabel;
    StaticText1: TStaticText;
    Label15: TLabel;
    DBEdit6: TDBEdit;
    Label16: TLabel;
    BntBuscarCategoria: TImage;
    edtConsultaCategorias: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    edtConsultaBanco: TEdit;
    BtnLimparCliente: TButton;
    BtnLimparCategoria: TButton;
    Panel10: TPanel;
    lbRegistros: TLabel;
    BtnGerarRel: TButton;
    Image7: TImage;
    BtnReabrir: TImage;
    BtnReceber: TImage;
    BtnCancelar: TImage;
    BtnGravar: TImage;
    EdtCliente: TEdit;
    EdtCategoria: TEdit;
    qrContasReceberCODIGO: TIntegerField;
    qrContasReceberVALOR: TFMTBCDField;
    qrContasReceberDATA_VENCIMENTO: TDateField;
    qrContasReceberSITUACAO: TStringField;
    qrContasReceberCOD_CLIENTE: TIntegerField;
    qrContasReceberBANCO_PAGAMENTO: TStringField;
    qrContasReceberFORMA_PAGAMENTO: TStringField;
    qrContasReceberCOD_CATEGORIA: TIntegerField;
    qrContasReceberCLIENTE_NOME: TStringField;
    qrContasReceberCATEGORIA_NOME: TStringField;
    qrContasReceberOBSERVACAO: TStringField;
    DBMemo1: TDBMemo;
    Label9: TLabel;
    procedure NKDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBEdit4Change(Sender: TObject);
    procedure qrContasReceberAfterInsert(DataSet: TDataSet);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnLimparClienteClick(Sender: TObject);
    procedure pcPrincipalChange(Sender: TObject);
    procedure BtnVoltarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
    procedure BtnBuscarClienteClick(Sender: TObject);
    procedure CbSituacaoChange(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure BntBuscarCategoriaClick(Sender: TObject);
    procedure edtConsultaChange(Sender: TObject);
    procedure edtConsultaCategoriasChange(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure edtConsultaBancoChange(Sender: TObject);
    procedure BtnLimparCategoriaClick(Sender: TObject);
    procedure BtnCalcularClick(Sender: TObject);
    procedure BtnGerarRelClick(Sender: TObject);
    procedure BtnReceberClick(Sender: TObject);
    procedure BtnReabrirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure EdtClienteKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCategoriaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    Procedure ListarContas;
    procedure AtualizarCalculo;
  end;

var
  FrmContasReceber: TFrmContasReceber;
  dataAtual : TDateTime;

implementation

{$R *.dfm}

uses uConsCliente, uRecebimento, UPrincipal, uConsCategorias;

procedure TFrmContasReceber.AtualizarCalculo;
var Qr : TFDQuery;
begin
  Qr := NewQuery();
  try
    Qr.SQL.Add('select sum(cre.valor) as valor_total from contas_receber cre');
    Qr.SQL.Add('left outer join cliente cli on cli.codigo = cre.cod_cliente');
    Qr.SQL.Add('left outer join categorias cat on cat.codigo = cre.cod_categoria');

    Qr.SQL.Add ('where (cre.data_vencimento >= '''+
      formataDataSql(DateTimePicker1.Date)+ '''and cre.data_vencimento <= ''' + formatadataSql(DateTimePicker2.Date) + ''')');

    if (edtConsulta.Text <> '') then
      Qr.SQL.Add('and (upper(cli.nome) like ''%' + AnsiUpperCase(edtConsulta.Text) + '%'')');

    if (edtConsultaCategorias.Text <> '') then
      Qr.SQL.Add('and (upper(cat.nome) like ''%' + AnsiUpperCase(edtConsultaCategorias.Text) + '%'')');

    if (edtConsultaBanco.Text <> '') then
      Qr.SQL.Add('and (upper(cre.banco_pagamento) like ''%' + AnsiUpperCase(edtConsultaBanco.Text) + '%'')');

    if CbSituacao.ItemIndex = 1 then
      Qr.SQL.Add('and (cre.situacao = ''ABERTO'')')
    Else if CbSituacao.ItemIndex = 2 then
      Qr.SQL.Add('and (cre.situacao = ''RECEBIDA'')');

    Qr.open;

    edtValorTotal.Text  := FormatFloat('R$#,##0.00', Qr.FieldByName('valor_total').AsFloat);
  finally
    FreeAndNil(Qr);
  end;
end;

procedure TFrmContasReceber.BtnGerarRelClick(Sender: TObject);
begin
//  fxContasReceber.LoadFromFile(frmPrincipal.getRelatorioCaminho('relContasReceberDataVencimento.fr3'));
//  fxContasReceber.ShowReport();
end;

procedure TFrmContasReceber.BtnVoltarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmContasReceber.BtnExcluirClick(Sender: TObject);
begin
  Try
    if Application.MessageBox('Deseja realmente excluir a conta?', 'ATEN��O', mb_iconquestion + mb_yesno) = idYes then
    begin
      qrContasReceber.Delete;
      ListarContas;
    end;
  Except
    ShowMessage('Nenhuma conta para excluir!');
  End;
end;

procedure TFrmContasReceber.BtnBuscarClick(Sender: TObject);
begin
  ListarContas;
end;

procedure TFrmContasReceber.BtnCalcularClick(Sender: TObject);
begin
  AtualizarCalculo;
end;

procedure TFrmContasReceber.BtnIncluirClick(Sender: TObject);
begin
  qrContasReceber.Insert;
  pcPrincipal.ActivePage := tsCadastro;
  qrContasReceberSITUACAO.AsString := 'ABERTO';
  EdtCliente.SetFocus;
  EdtCliente.Text := '';
  EdtCategoria.Text := '';
end;

procedure TFrmContasReceber.BtnLimparClienteClick(Sender: TObject);
begin
  DBEdit2.Clear;
  EdtCliente.Text := '';
end;

procedure TFrmContasReceber.BtnLimparCategoriaClick(Sender: TObject);
begin
  DBEdit6.Clear;
  EdtCategoria.Text := '';
end;

procedure TFrmContasReceber.BtnAlterarClick(Sender: TObject);
begin
  qrContasReceber.Edit;
  pcPrincipal.ActivePage := tsCadastro;
  EdtCliente.Text := qrContasReceberCLIENTE_NOME.AsString;
  EdtCategoria.Text := qrContasReceberCATEGORIA_NOME.AsString;
end;

procedure TFrmContasReceber.Button9Click(Sender: TObject);
begin
  ListarContas;
end;

procedure TFrmContasReceber.CbSituacaoChange(Sender: TObject);
begin
  ListarContas;
end;

procedure TFrmContasReceber.DateTimePicker1Change(Sender: TObject);
begin
  ListarContas;
end;

procedure TFrmContasReceber.DateTimePicker2Change(Sender: TObject);
begin
  ListarContas;
end;

procedure TFrmContasReceber.DBEdit4Change(Sender: TObject);
begin
  if Length(DBEdit4.Text) = 2 then
  begin
    DBEdit4.Text := DBEdit4.Text + '/';
    DBEdit4.SelStart := Length( DBEdit4.Text );
  end;
  if Length(DBEdit4.Text ) = 5 then
  begin
    DBEdit4.Text := DBEdit4.Text + '/';
    DBEdit4.SelStart := Length( DBEdit4.Text );
  end;
end;

procedure TFrmContasReceber.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    Self.Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFrmContasReceber.EdtCategoriaKeyPress(Sender: TObject;
  var Key: Char);
var Qr : TFDQuery;
begin

  if (Key = #13) then
  begin
    Qr := NewQuery();
    try
      Qr.Open('select codigo, nome from categorias where nome = ' + QuotedStr(EdtCategoria.Text));

      if (Qr.RecordCount > 1) then
      begin
        FrmConsCategorias := TFrmConsCategorias.Create(Self);
        try
          FrmConsCategorias.edtConsulta.Text := EdtCategoria.Text;
          FrmConsCategorias.ListarCategorias;
          FrmConsCategorias.ShowModal;
        finally
          if (FrmConsCategorias.cod_categoria <> 0) then
          begin
            qrContasReceberCOD_CATEGORIA.AsInteger := FrmConsCategorias.cod_categoria;
            EdtCategoria.Text := FrmConsCategorias.categoria_nome;
          end
          else
          begin
            qrContasReceberCOD_CATEGORIA.AsString := '';
            EdtCategoria.Text := '';
          end;
          FreeAndNil(FrmConsCategorias);
        end;
      end
      else if (Qr.RecordCount = 1) then
      begin
        qrContasReceberCOD_CATEGORIA.AsInteger := Qr.FieldByName('codigo').AsInteger;
        EdtCategoria.Text := Qr.FieldByName('nome').AsString;
      end
      else
      begin
        qrContasReceberCOD_CATEGORIA.AsString := '';
        EdtCategoria.Text := '';
      end;

    finally
      FreeAndNil(Qr);
    end;

    Self.Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmContasReceber.EdtClienteKeyPress(Sender: TObject; var Key: Char);
var Qr : TFDQuery;
begin
  if (Key = #13) then
  begin
    Qr := NewQuery();
    try
      Qr.Open('select codigo, nome from cliente where nome = ' + QuotedStr(EdtCliente.Text));

      if (Qr.RecordCount > 1) or (Qr.IsEmpty) then
      begin
        FrmConsCliente := TFrmConsCliente.Create(Self);
        try
          FrmConsCliente.edtConsulta.Text := EdtCliente.Text;
          FrmConsCliente.ListarClientes;
          FrmConsCliente.ShowModal;
        finally
          if (FrmConsCliente.Cod_Cliente <> 0) then
          begin
            qrContasReceberCOD_CLIENTE.AsInteger := FrmConsCliente.Cod_Cliente;
            EdtCliente.Text := FrmConsCliente.nome_cliente;
          end
          else
          begin
            qrContasReceberCOD_CLIENTE.AsString := '';
            EdtCliente.Text := '';
          end;
          FreeAndNil(FrmConsCliente);
        end;
      end
      else if (Qr.RecordCount = 1) then
      begin
        qrContasReceberCOD_CLIENTE.AsInteger := Qr.FieldByName('codigo').AsInteger;
        EdtCliente.Text := Qr.FieldByName('nome').AsString;
      end
      else
      begin
        qrContasReceberCOD_CLIENTE.AsString := '';
        EdtCliente.Text := '';
      end;
    finally
      FreeAndNil(Qr);
    end;

    Self.Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmContasReceber.edtConsultaBancoChange(Sender: TObject);
begin
  ListarContas;
end;

procedure TFrmContasReceber.edtConsultaCategoriasChange(Sender: TObject);
begin
  ListarContas;
end;

procedure TFrmContasReceber.edtConsultaChange(Sender: TObject);
begin
  ListarContas;
end;

procedure TFrmContasReceber.FormActivate(Sender: TObject);
begin
  DateTimePicker1.Date := Date;
  DateTimePicker2.Date := Date;
  pcPrincipal.ActivePage := tsContasReceber;
  qrContasReceber.Active := True;
  ListarContas;
end;

procedure TFrmContasReceber.BtnGravarClick(Sender: TObject);
begin
  Try
    if (qrContasReceberDATA_VENCIMENTO.AsString = '') then
    begin
      ShowMessage('Obrigat�rio preencher a data de vencimento!');
      Exit;
    end;

    qrContasReceber.Post;
    pcPrincipal.ActivePage := tsContasReceber;
    ListarContas;
  Except
    on E: Exception do
    begin
      if (qrContasReceberCODIGO.AsString = '') then
        ShowMessage('Conta a receber sem c�digo, tente cancelar e inserir novamente!')
      else
        ShowMessage('Erro:' + e.Message);
    end;
  End;
end;

procedure TFrmContasReceber.BtnCancelarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente cancelar?', 'ATEN��O', mb_iconquestion + mb_yesno) = idYes then
  Begin
    qrContasReceber.Cancel;
    pcPrincipal.ActivePage := tsContasReceber;
  End;
end;

procedure TFrmContasReceber.BntBuscarCategoriaClick(Sender: TObject);
begin
  FrmConsCategorias := TFrmConsCategorias.Create(self);
  try
    FrmConsCategorias.ShowModal;

    if (FrmConsCategorias.categoria_nome <> '') then
    begin
      qrContasReceberCOD_CATEGORIA.AsInteger := FrmConsCategorias.cod_categoria;
      EdtCategoria.Text := FrmConsCategorias.categoria_nome;
    end
    else
    begin
      qrContasReceberCOD_CATEGORIA.AsString := '';
      EdtCategoria.Text := '';
    end;
  finally
    FreeAndNil(FrmConsCategorias);
  end;
end;

procedure TFrmContasReceber.BtnBuscarClienteClick(Sender: TObject);
begin
  FrmConsCliente := TFrmConsCliente.Create(Self);
  try
    FrmConsCliente.ShowModal;

    if (FrmConsCliente.nome_cliente <> '') then
    begin
      qrContasReceberCOD_CLIENTE.AsInteger := FrmConsCliente.Cod_Cliente;
      EdtCliente.Text := FrmConsCliente.nome_cliente;
    end
    else
    begin
      qrContasReceberCOD_CLIENTE.AsString := '';
      EdtCliente.Text := '';
    end;

  finally
    FreeAndNil(FrmConsCliente);
  end;

  DBEdit3.SetFocus;
end;

procedure TFrmContasReceber.BtnReabrirClick(Sender: TObject);
begin
  qrContasReceber.Edit;

  if (Application.MessageBox('Deseja realmente reabrir essa conta?', 'ATEN��O', mb_iconquestion + mb_yesno) = idYes) then
    if (qrContasReceber.FieldByName('SITUACAO').AsString = 'RECEBIDA') then
    begin
      if (qrContasReceberBANCO_PAGAMENTO.AsString = 'CAIXA') then
      begin
        dm.qrMovCaixa.Insert;
        dm.qrMovCaixaDESCRICAO.asString := 'ESTORNO CONTA COD: ' + IntToStr(qrContasReceberCODIGO.AsInteger) + ' - ' + qrContasReceberCLIENTE_NOME.AsString;
        dm.qrMovCaixaVALOR.AsFloat := qrContasReceberVALOR.AsFloat;
        dm.qrMovCaixaSAIDA.AsFloat := qrContasReceberVALOR.AsFloat;
        dm.qrMovCaixaENTRADA.AsFloat := 0;
        dm.qrMovCaixaTIPO.AsString := 'CAIXA';
        dataAtual := Date;
        dm.qrMovCaixaDATA.AsDateTime := dataAtual;
        dm.qrMovCaixa.Post;

        dm.qrCaixa.Edit;
        dm.qrCaixaSALDO.AsFloat := dm.qrCaixaSALDO.AsFloat - FrmContasReceber.qrContasReceberVALOR.AsFloat;
        dm.qrCaixa.Post;
      end;

      qrContasReceber.FieldByName('SITUACAO').AsString := 'ABERTO';
      FrmContasReceber.qrContasReceber.FieldByName('BANCO_PAGAMENTO').AsString := ' ';
      FrmContasReceber.qrContasReceber.FieldByName('FORMA_PAGAMENTO').AsString := ' ';
      qrContasReceber.Post
    end
    else
      Application.MessageBox('Essa conta ja esta ABERTA!', 'ATEN��O', MB_ICONEXCLAMATION);
end;

procedure TFrmContasReceber.BtnReceberClick(Sender: TObject);
begin
  FrmRecebimento := TFrmRecebimento.Create(Self);
  try
    FrmRecebimento.ShowModal;
  finally
    freeandnil(frmRecebimento);
  end;
end;

procedure TFrmContasReceber.ListarContas;
begin
  qrContasReceber.Close;
  qrContasReceber.SQL.Clear;
  qrContasReceber.SQL.Add('select cre.*, cli.nome as cliente_nome, cat.nome as categoria_nome from contas_receber cre');
  qrContasReceber.SQL.Add('left outer join cliente cli on cli.codigo = cre.cod_cliente');
  qrContasReceber.SQL.Add('left outer join categorias cat on cat.codigo = cre.cod_categoria');

  qrContasReceber.SQL.Add('where (cre.data_vencimento >= ' +
    QuotedStr(formataDataSql(DateTimePicker1.Date))+ ' and cre.data_vencimento <= ' + QuotedStr(formatadataSql(DateTimePicker2.Date)) + ')');

  if (edtConsulta.Text <> '') then
    qrContasReceber.SQL.Add('and (upper(cli.nome) like ''%' + AnsiUpperCase(edtConsulta.Text) + '%'')');

  if (edtConsultaCategorias.Text <> '') then
    qrContasReceber.SQL.Add('and (upper(cat.nome) like ''%' + AnsiUpperCase(edtConsultaCategorias.Text) + '%'')');

  if (edtConsultaBanco.Text <> '') then
    qrContasReceber.SQL.Add('and (upper(cre.banco_pagamento) like ''%' + AnsiUpperCase(edtConsultaBanco.Text) + '%'')');

  if CbSituacao.ItemIndex = 1 then
    qrContasReceber.SQL.Add('and (cre.situacao = ''ABERTO'')')
  Else if CbSituacao.ItemIndex = 2 then
    qrContasReceber.SQL.Add('and (cre.situacao = ''RECEBIDA'')');

  qrContasReceber.SQL.Add('order by cre.data_vencimento');
  qrContasReceber.open;

  lbRegistros.Caption := qrContasReceber.RecordCount.ToString + ' Registros...';

  AtualizarCalculo;
end;

procedure TFrmContasReceber.NKDrawColumnCell(Sender: TObject;
const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (gdRowSelected in State) or (gdSelected in State) then
  begin
    (Sender as TDBGrid).Canvas.Brush.Style := bsSolid;
    (Sender as TDBGrid).Canvas.Brush.Color := clskyblue;
    (Sender as TDBGrid).Canvas.Font.Style := [fsbold];
    (Sender as TDBGrid).Canvas.FillRect(Rect);
    (Sender as TDBGrid).Canvas.Font.Color := clHotLight;
    (Sender as TDBGrid).DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end
  else
  begin
    (Sender as TDBGrid).Canvas.Brush.Style := bsSolid;
    (Sender as TDBGrid).Canvas.Brush.Color := clwhite;
    (Sender as TDBGrid).Canvas.Font.Style := [fsbold];
    (Sender as TDBGrid).Canvas.FillRect(Rect);
    (Sender as TDBGrid).Canvas.Font.Color := clHotLight;
    (Sender as TDBGrid).DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

  if ((Sender as TDBGrid).DataSource.DataSet.FieldByName('SITUACAO').Value = 'ABERTO') then
  begin
    (Sender as TDBGrid).Canvas.Font.Color := clGreen;
    (Sender as TDBGrid).Canvas.Font.Style:= [fsbold];
  end
  else
  begin
    (Sender as TDBGrid).Canvas.Font.Color := clHotLight;
    (Sender as TDBGrid).Canvas.Font.Style:= [fsbold];
  end;

  (Sender as TDBGrid).Canvas.FillRect(Rect);
  (Sender as TDBGrid).DefaultDrawDataCell(Rect, (Sender as   TDBGrid).columns[datacol].field, State);
end;

procedure TFrmContasReceber.pcPrincipalChange(Sender: TObject);
begin
  if (qrContasReceber.State = dsInsert) or
    (qrContasReceber.State = dsEdit) then
  begin
    Application.MessageBox('Grave ou cancele antes de voltar!', 'ATEN��O', MB_ICONEXCLAMATION);
    pcPrincipal.ActivePage := tsCadastro;
  end
  else
  begin
    Application.MessageBox('Voce so pode acessar essa aba inserindo ou editando alguma conta!', 'ATEN��O', MB_ICONEXCLAMATION);
    pcPrincipal.ActivePage := tsContasReceber;
  end;
end;

procedure TFrmContasReceber.qrContasReceberAfterInsert(DataSet: TDataSet);
var Qr : TFDQuery;
  Codigo : Integer;
begin
  Qr := NewQuery();
  try
    Qr.Open('select max(codigo) as codigo from contas_receber');

    if (Qr.FieldByName('codigo').IsNull) then //VALIDA SE A COLUNA CODIGO � NULL
      Codigo := 1
    else
      Codigo := Qr.FieldByName('codigo').AsInteger + 1;

    qrContasReceberCODIGO.AsInteger := codigo;
  finally
    FreeAndNil(Qr);
  end;
end;

end.
