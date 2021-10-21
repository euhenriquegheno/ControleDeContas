unit uRelContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmRelContasPagar = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnGerarRel: TButton;
    Button1: TButton;
    Panel3: TPanel;
    Label1: TLabel;
    procedure btnGerarRelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelContasPagar: TfrmRelContasPagar;

implementation

{$R *.dfm}

uses CONTAS_PAGAR, UPrincipal;

procedure TfrmRelContasPagar.btnGerarRelClick(Sender: TObject);
begin
  frmContasPagar.fxContasPagar.LoadFromFile(frmPrincipal.getRelatorioCaminho('relContasPagarDataVencimento.fr3'));
  frmContasPagar.fxContasPagar.ShowReport();
end;

procedure TfrmRelContasPagar.Button1Click(Sender: TObject);
begin
  frmContasPagar.fxContasPagar.LoadFromFile(frmPrincipal.getRelatorioCaminho('relContasPagarDataVencimentoDetalhado.fr3'));
  frmContasPagar.fxContasPagar.ShowReport();
end;

end.
