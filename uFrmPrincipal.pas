unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, uFrmTabela, uFrmResultado, uDados;

type
  TFrmPrincipal = class(TForm)
    BtnResultado: TButton;
    LblAltura: TLabel;
    LblPeso: TLabel;
    LblGenero: TLabel;
    Panel1: TPanel;
    EdtAltura: TEdit;
    EdtPeso: TEdit;
    CmBGenero: TComboBox;
    procedure BtnTabelaClick(Sender: TObject);
    procedure BtnResultadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BtnResultadoClick(Sender: TObject);
begin
  try
    P_Dados_Pessoa.Altura := StrToFloat(EdtAltura.Text);
    P_Dados_Pessoa.Peso :=  StrToFloat(EdtPeso.Text);
    P_Dados_Pessoa.Genero := CmBGenero.Text;
    P_Dados_Pessoa.IMC := CalcularIMC(P_Dados_Pessoa.Peso,
                                      P_Dados_Pessoa.Altura,
                                      P_Dados_Pessoa.Genero);

    FrmResultado.ShowModal;
  except
    ShowMessage('Dados invalidos!');
  end;

end;

procedure TFrmPrincipal.BtnTabelaClick(Sender: TObject);
begin
  FrmTabela.ShowModal;
end;

end.
