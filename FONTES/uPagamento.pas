unit uPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPagamento: TFrmPagamento;

implementation

{$R *.dfm}

uses CONTAS_PAGAR;

procedure TFrmPagamento.Button1Click(Sender: TObject);
begin
  FrmContasPagar.qrContasPagar.Edit;
  if Application.MessageBox('Deseja realmente PAGAR essa conta?', 'ATENÇÃO', mb_iconquestion + mb_yesno) = idYes then
    if FrmContasPagar.qrContasPagar.FieldByName('SITUACAO').AsString = 'ABERTO' then
    Begin
      FrmContasPagar.qrContasPagar.FieldByName('SITUACAO').AsString := 'QUITADO';
      FrmContasPagar.qrContasPagar.FieldByName('BANCO_PAGAMENTO').AsString := cbPagamento.Text;
      FrmContasPagar.qrContasPagar.FieldByName('FORMA_PAGAMENTO').AsString := edtFormapgto.Text;
      FrmContasPagar.qrContasPagar.Post;
      FrmPagamento.Close;
    End
    Else
      Application.MessageBox('Essa conta ja esta QUITADA!', 'ATENÇÃO', MB_ICONEXCLAMATION);

  FrmPagamento.Close;
end;

end.
