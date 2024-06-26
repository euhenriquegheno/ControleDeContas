unit uRecebimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPagamento, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, form.contas.receber, UDM;

type
  TFrmRecebimento = class(TFrmPagamento)
    procedure Button1Click(Sender: TObject);
    procedure cbPagamentoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRecebimento: TFrmRecebimento;

implementation

{$R *.dfm}

procedure TFrmRecebimento.Button1Click(Sender: TObject);
begin
  FrmContasReceber.qrContasReceber.Edit;
  if Application.MessageBox('Deseja realmente receber essa conta?', 'ATEN��O', mb_iconquestion + mb_yesno) = idYes then
    if FrmContasReceber.qrContasReceber.FieldByName('SITUACAO').AsString = 'ABERTO' then
    Begin
      FrmContasReceber.qrContasReceber.FieldByName('SITUACAO').AsString := 'RECEBIDA';
      FrmContasReceber.qrContasReceber.FieldByName('BANCO_PAGAMENTO').AsString := cbPagamento.Text;
      FrmContasReceber.qrContasReceber.FieldByName('FORMA_PAGAMENTO').AsString := edtFormapgto.Text;
      FrmContasReceber.qrContasReceber.Post;

      if cbPagamento.ItemIndex = 0 then
      begin
        dm.qrMovCaixa.Insert;
        dm.qrMovCaixaDESCRICAO.asString := 'RECEBIMENTO CONTA COD: ' + IntToStr(FrmContasReceber.qrContasReceberCODIGO.AsInteger) + ' - ' + FrmContasReceber.qrContasReceberCLIENTE_NOME.AsString;
        dm.qrMovCaixaVALOR.AsFloat := FrmContasReceber.qrContasReceberVALOR.AsFloat;
        dm.qrMovCaixaSAIDA.AsFloat := 0;
        dm.qrMovCaixaENTRADA.AsFloat := FrmContasReceber.qrContasReceberVALOR.AsFloat;
        dm.qrMovCaixaTIPO.AsString := 'CAIXA';
        dataAtual := Date;
        dm.qrMovCaixaDATA.AsDateTime := dataAtual;
        dm.qrMovCaixa.Post;

        dm.qrCaixa.Edit;
        dm.qrCaixaSALDO.AsFloat := dm.qrCaixaSALDO.AsFloat + FrmContasReceber.qrContasReceberVALOR.AsFloat;
        dm.qrCaixa.Post;
      end
      else
      begin
        dm.qrMovCaixa.Insert;
        dm.qrMovCaixaDESCRICAO.asString := 'RECEBIMENTO CONTA COD: ' + IntToStr(frmContasReceber.qrContasReceberCODIGO.AsInteger) + ' - ' + FrmContasReceber.qrContasReceberCLIENTE_NOME.AsString;
        dm.qrMovCaixaVALOR.AsFloat := FrmContasReceber.qrContasReceberVALOR.AsFloat;
        dm.qrMovCaixaSAIDA.AsFloat := 0;
        dm.qrMovCaixaENTRADA.AsFloat := 0;
        dm.qrMovCaixaTIPO.AsString := cbPagamento.Text;
        dataAtual := Date;
        dm.qrMovCaixaDATA.AsDateTime := dataAtual;
        dm.qrMovCaixa.Post;
      end;

      FrmRecebimento.Close;
    End
    Else
    Application.MessageBox('Essa conta ja esta RECEBIDA!', 'ATEN��O', MB_ICONEXCLAMATION);

  FrmRecebimento.Close;
end;

procedure TFrmRecebimento.cbPagamentoChange(Sender: TObject);
begin
  inherited;
  if cbPagamento.ItemIndex = 0 then
    edtFormapgto.Enabled := false;
end;

end.
