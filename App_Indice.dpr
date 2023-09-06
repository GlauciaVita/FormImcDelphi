program App_Indice;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uFrmTabela in 'uFrmTabela.pas' {FrmTabela},
  uFrmResultado in 'uFrmResultado.pas' {FrmResultado},
  uDados in 'uDados.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmTabela, FrmTabela);
  Application.CreateForm(TFrmResultado, FrmResultado);
  Application.Run;
end.
