program SistemaDeContas;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FrmPrincipal},
  UDM in 'UDM.pas' {Dm: TDataModule},
  CONTAS_PAGAR in 'CONTAS_PAGAR.pas' {FrmContasPagar},
  SOBRE in 'SOBRE.pas' {FrmSobre},
  EFuncoes in 'C:\CursoDelphi\GERNERICO\EFuncoes.pas',
  uCadEmpresa in 'uCadEmpresa.pas' {FrmEmpresa},
  uConsEmpresa in 'uConsEmpresa.pas' {FrmConsEmpresa},
  uCadCliente in 'uCadCliente.pas' {FrmCadCliente},
  uConsCliente in 'uConsCliente.pas' {FrmConsCliente},
  uPagamento in 'uPagamento.pas' {FrmPagamento},
  uRecebimento in 'uRecebimento.pas' {FrmRecebimento},
  CONTAS_RECEBER in 'CONTAS_RECEBER.pas' {FrmContasReceber},
  uCadFuncionarios in 'uCadFuncionarios.pas' {FrmCadFuncionarios},
  UAgenda in 'UAgenda.pas' {FrmAgenda},
  uConsFuncionarios in 'uConsFuncionarios.pas' {FrmConsFuncionarios},
  uCadCategorias in 'uCadCategorias.pas' {FrmCategorias},
  uConsCategorias in 'uConsCategorias.pas' {FrmConsCategorias},
  uRelContasPagar in 'uRelContasPagar.pas' {frmRelContasPagar},
  uCaixa in 'uCaixa.pas' {frmCaixa},
  uAberturaCaixa in 'uAberturaCaixa.pas' {frmAberturaCaixa},
  uFechamentoCaixa in 'uFechamentoCaixa.pas' {frmFechamentoCaixa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TfrmFechamentoCaixa, frmFechamentoCaixa);
  Application.Run;
end.
