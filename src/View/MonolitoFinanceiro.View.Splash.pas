unit MonolitoFinanceiro.View.Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TfrmSplash = class(TForm)
    pnlPrincipal: TPanel;
    imgLogo: TImage;
    lblNomeAplicacao: TLabel;
    ProgressBar1: TProgressBar;
    lblStatus: TLabel;
    Timer1: TTimer;
    Panel1: TPanel;
    imgDll: TImage;
    imgBancoDeDados: TImage;
    imgConfiguracoes: TImage;
    imgIniciando: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizarStatus(Mensagem: String; aLabel: TImage);
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

procedure TfrmSplash.AtualizarStatus(Mensagem: String; aLabel: TImage);
begin
  lblStatus.Caption := Mensagem;
  aLabel.Visible := True;
end;

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
  if ProgressBar1.Position <= 100 then
  begin
    ProgressBar1.StepIt;
    case ProgressBar1.Position of
      10:
        AtualizarStatus('Carregando dependencias...', imgDll);
      25:
        AtualizarStatus('Conectando ao banco de dados...', imgBancoDeDados);
      45:
        AtualizarStatus('Carregando as configura��es...', imgConfiguracoes);
      75:
        AtualizarStatus('Iniciando o sistema...', imgIniciando);
    end;
  end;
  if ProgressBar1.Position = 100 then
    Close;
end;

end.