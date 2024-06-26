unit uPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, UDM;

type
  TFrmPagamento = class(TForm)
    Button1: TButton;
    cbPagamento: TComboBox;
    PopupMenu1: TPopupMenu;
    PAGAR1: TMenuItem;
    Label1: TLabel;
    edtFormapgto: TEdit;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure cbPagamentoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPagamento: TFrmPagamento;
  dataAtual : TDateTime;

implementation

{$R *.dfm}

uses form.contas.pagar;

procedure TFrmPagamento.Button1Click(Sender: TObject);
begin
  FrmContasPagar.qrContasPagar.Edit;
  if Application.MessageBox('Deseja realmente PAGAR essa conta?', 'ATEN��O', mb_iconquestion + mb_yesno) = idYes then
    if FrmContasPagar.qrContasPagar.FieldByName('SITUACAO').AsString = 'ABERTO' then
    Begin
      FrmContasPagar.qrContasPagar.FieldByName('SITUACAO').AsString := 'QUITADO';
      FrmContasPagar.qrContasPagar.FieldByName('BANCO_PAGAMENTO').AsString := cbPagamento.Text;
      FrmContasPagar.qrContasPagar.FieldByName('FORMA_PAGAMENTO').AsString := edtFormapgto.Text;
      FrmContasPagar.qrContasPagar.Post;

      if cbPagamento.ItemIndex = 0 then
      begin
        dm.qrMovCaixa.Insert;
        dm.qrMovCaixaDESCRICAO.asString := 'PAGAMENTO CONTA COD: ' + IntToStr(FrmContasPagar.qrContasPagarCODIGO.AsInteger) + ' - ' + FrmContasPagar.qrContasPagarEMPRESA_NOME.AsString;
        dm.qrMovCaixaVALOR.AsFloat := FrmContasPagar.qrContasPagarVALOR.AsFloat;
        dm.qrMovCaixaSAIDA.AsFloat := FrmContasPagar.qrContasPagarVALOR.AsFloat;
        dm.qrMovCaixaENTRADA.AsFloat := 0;
        dm.qrMovCaixaTIPO.AsString := 'CAIXA';
        dataAtual := Date;
        dm.qrMovCaixaDATA.AsDateTime := dataAtual;
        dm.qrMovCaixa.Post;

        dm.qrCaixa.Edit;
        dm.qrCaixaSALDO.AsFloat := dm.qrCaixaSALDO.AsFloat - FrmContasPagar.qrContasPagarVALOR.AsFloat;
        dm.qrCaixa.Post;
      end
      else
      begin
        dm.qrMovCaixa.Insert;
        dm.qrMovCaixaDESCRICAO.asString := 'PAGAMENTO CONTA COD: ' + IntToStr(FrmContasPagar.qrContasPagarCODIGO.AsInteger) + ' - ' + FrmContasPagar.qrContasPagarEMPRESA_NOME.AsString;
        dm.qrMovCaixaVALOR.AsFloat := FrmContasPagar.qrContasPagarVALOR.AsFloat;
        dm.qrMovCaixaSAIDA.AsFloat := 0;
        dm.qrMovCaixaENTRADA.AsFloat := 0;
        dm.qrMovCaixaTIPO.AsString := cbPagamento.Text;
        dataAtual := Date;
        dm.qrMovCaixaDATA.AsDateTime := dataAtual;
        dm.qrMovCaixa.Post;
      end;

      FrmPagamento.Close;
    End
    Else
      Application.MessageBox('Essa conta ja esta QUITADA!', 'ATEN��O', MB_ICONEXCLAMATION);

  FrmPagamento.Close;
end;

procedure TFrmPagamento.cbPagamentoChange(Sender: TObject);
begin
  if cbPagamento.ItemIndex = 0 then
    edtFormapgto.Enabled := false;
end;

end.
