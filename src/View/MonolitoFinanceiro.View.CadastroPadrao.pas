unit MonolitoFinanceiro.View.CadastroPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.WinXPanels;

type
  TfrmCadastroPadrao = class(TForm)
    PnlPrincipal: TCardPanel;
    cardCadastro: TCard;
    cardPesquisa: TCard;
    pnlPesquisa: TPanel;
    pnlBotoes: TPanel;
    pnlGrid: TPanel;
    DBGrid1: TDBGrid;
    edtPesquisar: TEdit;
    Label1: TLabel;
    btnPesquisar: TButton;
    ImageList1: TImageList;
    btnFechar: TButton;
    btnImprimir: TButton;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    Panel1: TPanel;
    btnCancelar: TButton;
    btnSalvar: TButton;
    procedure btnFecharClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPadrao: TfrmCadastroPadrao;

implementation

{$R *.dfm}

procedure TfrmCadastroPadrao.btnAlterarClick(Sender: TObject);
begin
  PnlPrincipal.ActiveCard := cardCadastro;
end;

procedure TfrmCadastroPadrao.btnCancelarClick(Sender: TObject);
begin
  PnlPrincipal.ActiveCard := cardPesquisa;
end;

procedure TfrmCadastroPadrao.btnFecharClick(Sender: TObject);
begin
  frmCadastroPadrao.Close;
end;

procedure TfrmCadastroPadrao.btnIncluirClick(Sender: TObject);
begin
  PnlPrincipal.ActiveCard := cardCadastro;
end;

end.
