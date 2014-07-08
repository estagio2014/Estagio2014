unit untContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPrincipal, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Buttons;

type
  TfrmContasReceber = class(TfrmCadPrincipal)
    GroupBox1: TGroupBox;
    edtNumVenda: TEdit;
    Label3: TLabel;
    Label1: TLabel;
    edtCliente: TEdit;
    edtParcelas: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    edtParcela: TEdit;
    edtDataEmi: TMaskEdit;
    Label5: TLabel;
    edtDataReceb: TMaskEdit;
    Label11: TLabel;
    edtValorRecebido: TEdit;
    Label10: TLabel;
    Label7: TLabel;
    edtDesconto: TEdit;
    Label8: TLabel;
    edtMulta: TEdit;
    Label9: TLabel;
    edtJuro: TEdit;
    cboSituacao: TComboBox;
    Label12: TLabel;
    Memo1: TMemo;
    Label13: TLabel;
    edtDataVenc: TMaskEdit;
    Label6: TLabel;
    Label14: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContasReceber: TfrmContasReceber;

implementation

{$R *.dfm}

uses untDm;

procedure TfrmContasReceber.FormShow(Sender: TObject);
begin
  inherited;
  edtNumVenda.Text:= dm.cdsFatura.FieldByName('id_lancamento').Text;
  if (dm.cdsVenda.Locate('idCli',(dm.cdsVenda.FieldByName('id_venda').Text),[])) then
  begin
   edtCliente.Text :=dm.cdsCliente.FieldByName('nomeCli').Text;
  end;
  edtParcelas.Text := dm.cdsFatura.FieldByName('num_fatura').Text;
  edtParcela.Text := dm.cdsFatura.FieldByName('num_parcela').Text;
  edtDataEmi.Text := dm.cdsFatura.FieldByName('data_emissao').Text;
  edtDataVenc.Text := dm.cdsFatura.FieldByName('data_venc').Text;
  edtDataReceb.Text := DateToStr(date);

end;

end.
