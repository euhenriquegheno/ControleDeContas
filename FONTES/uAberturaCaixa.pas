unit uAberturaCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, UDM, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TfrmAberturaCaixa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    qrCaixa: TFDQuery;
    Button3: TButton;
    Button2: TButton;
    qrCaixaCODIGO: TIntegerField;
    qrCaixaDATA: TDateField;
    qrCaixaSITUACAO: TStringField;
    qrCaixaSALDO: TFMTBCDField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    dtpData: TDateTimePicker;
    Label2: TLabel;
    qrData: TFDQuery;
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAberturaCaixa: TfrmAberturaCaixa;
  saldo_anterior : double;

implementation

{$R *.dfm}

uses uCaixa;

procedure TfrmAberturaCaixa.Button3Click(Sender: TObject);
var lanca_valor_anterior : boolean;
begin
  try
    lanca_valor_anterior := true;

    qrdata.close;
    qrdata.SQL.Clear;
    qrdata.sql.add('select * from movimentacao_caixa where data = :data_caixa order by codigo');
    qrdata.Params.ParamByName('data_caixa').AsDate := dtpData.date;
    qrdata.open;
    // verificar se existem lan�amentos para data de novo caixa

    if qrdata.RecordCount > 0 then // j� existe
    begin
      if messagedlg('J� existe um caixa aberto com esta data. � aconselh�vel n�o realizar nova abertura.' + #13 + 'Deseja abrir mesmo assim?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      begin
        Exit;
        Close;
      end;
      lanca_valor_anterior := false;
    end;

    // LANCAMENTO DO SALDO ANTERIOR
    if lanca_valor_anterior then
    begin
      with frmcaixa.qrMovCaixa do
      begin
        OPEN;
        insert;
//        FieldByName('codigo').asstring := frmprincipal.getCodigo('c000044', 10);
        fieldbyname('data').asstring := DateToStr(dtpData.date);
        fieldbyname('saida').asfloat := 0;
        fieldbyname('entrada').asfloat := saldo_anterior;
        FieldByName('valor').asfloat := saldo_anterior;
        fieldbyname('descricao').asstring := 'S A L D O   A N T E R I O R';
        post;
      end;
    end;

    if strToFloat(dbedit1.text) <> saldo_anterior then
    begin
      // LANCAMENTO DA DIFERENCA DO SALDO ANTERIOR
      application.messagebox('O saldo anterior foi modificado! Ser� feito um lan�amento para justificar a diferen�a.','Aten��o',mb_ok+MB_ICONWARNING);
      frmcaixa.qrMovCaixa.OPEN;
      frmcaixa.qrMovCaixa.insert;
      frmcaixa.qrMovCaixa.fieldbyname('data').asstring := DateToStr(dtpData.date);

      if strToFloat(dbedit1.Text) < saldo_anterior then
      begin
        frmcaixa.qrMovCaixa.fieldbyname('saida').asfloat := saldo_anterior - strToFloat(dbedit1.Text);
        frmcaixa.qrMovCaixa.FieldByName('valor').asfloat := (saldo_anterior - strToFloat(dbedit1.Text)*(-1));
        frmcaixa.qrMovCaixa.fieldbyname('entrada').asfloat := 0;
      end else begin
        frmcaixa.qrMovCaixa.fieldbyname('saida').asfloat := 0;
        frmcaixa.qrMovCaixa.fieldbyname('entrada').asfloat := strToFloat(dbedit1.Text)-saldo_anterior;
        frmcaixa.qrMovCaixa.fieldbyname('valor').asfloat := strToFloat(dbedit1.Text)-saldo_anterior;
      END;
      frmcaixa.qrMovCaixa.fieldbyname('descricao').asstring := 'Acerto do Saldo Anterior';
      frmcaixa.qrMovCaixa.post;
    end;
    Dm.Conexao.Commit;
    application.messagebox('Caixa aberto com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
    close;
  except
    on E: Exception do
    begin
      showmessage('Esta fun��o n�o pode ser processada corretamente, a execu��o da mesma foi cancelada!' + sLineBreak + E.Message);
      dm.Conexao.Rollback;
    end;
  end;

end;

procedure TfrmAberturaCaixa.FormActivate(Sender: TObject);
begin
  dtpData.Date := Date;
  saldo_anterior := StrToFloat(dbedit1.text);
end;

procedure TfrmAberturaCaixa.FormCreate(Sender: TObject);
begin
  qrCaixa.active := true;
end;

end.