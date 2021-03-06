unit untContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPrincipal, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Buttons;

type
  TfrmContasPagar = class(TfrmCadPrincipal)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtFornecedor: TEdit;
    Label2: TLabel;
    edtParcelas: TEdit;
    Label3: TLabel;
    edtNumCompra: TEdit;
    Label4: TLabel;
    edtParcela: TEdit;
    Label5: TLabel;
    edtDataEmi: TMaskEdit;
    Label6: TLabel;
    edtDataVenc: TMaskEdit;
    Label7: TLabel;
    edtDesconto: TEdit;
    Label8: TLabel;
    edtMulta: TEdit;
    Label9: TLabel;
    edtJuro: TEdit;
    Label10: TLabel;
    edtValorPago: TEdit;
    Label11: TLabel;
    edtDataPag: TMaskEdit;
    Label12: TLabel;
    cboSituacao: TComboBox;
    Memo1: TMemo;
    Label13: TLabel;
    Label14: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContasPagar: TfrmContasPagar;

implementation

{$R *.dfm}

uses untDm;

procedure TfrmContasPagar.btnConfirmClick(Sender: TObject);
begin
  inherited;
  with dm.sdsComandoSql do begin
  CommandText:= 'update fatura set vlr_recebido= :valor_recebido, data_recebido= :data_recebido, situacao= :situacao,'+
  'multa= :multa, juros= :juros, desconto= :desconto ,observacoes= :obs where id= :id_compra and num_parcela= :num_parcela';
  ParamByName('id_compra').Text := edtNumCompra.Text;
  ParamByName('num_parcela').Text := edtParcela.Text;
  ParamByName('valor_recebido').Text := edtValorPago.Text;
  ParamByName('data_recebido').Text :=  edtDataPag.Text;
  ParamByName('situacao').Text := cboSituacao.Text;
  ParamByName('multa').Text := edtMulta.Text;
  ParamByName('juros').Text := edtJuro.Text;
  ParamByName('desconto').Text := edtDesconto.Text;
  ParamByName('obs').Text := Memo1.Text;
  end;
  dm.sdsComandoSql.ExecSQL();
  dm.banco.Commit(dm.transacao);
  dm.cdsContasPagar.Close;
  dm.sdsContasPagar.Close;
  dm.cdsContasPagar.Open;
  dm.sdsContasPagar.Open;
  Close;
end;

procedure TfrmContasPagar.FormShow(Sender: TObject);
begin
  inherited;
  edtParcela.Text := dm.cdsContasPagar.FieldByName('num_parcela').Text;
  edtNumCompra.Text:= dm.cdsContasPagar.FieldByName('id_compra').Text;
  edtDataVenc.Text := dm.cdsContasPagar.FieldByName('data_venc').Text;
  cboSituacao.ItemIndex := (cboSituacao.Items.IndexOf(dm.cdsContasPagar.FieldByName('situacao').Text));
  if (dm.cdsContasPagar.Locate('id_compra',(dm.cdsContasPagar.FieldByName('id_compra').Text),[])) then
  begin
   edtFornecedor.Text :=dm.cdsCompra.FieldByName('razaoSocial').Text;
  end;
  edtParcelas.Text := dm.cdsContasPagar.FieldByName('qtde_parc').Text;
  edtDataEmi.Text := dm.cdsContasPagar.FieldByName('data_emissao').Text;
  edtValorPago.Text := dm.cdsContasPagar.FieldByName('vlr_parcela').Text;
  edtDataPag.Text := DateToStr(date);
  if (StrToDate(edtDataVenc.Text)>(date)) then
  begin
    edtDesconto.Enabled := true;
    edtDesconto.Text := '0,00';
    edtMulta.Enabled := false;
    edtMulta.Text := '0,00';
    edtJuro.Enabled := false;
    edtJuro.Text := '0,00';
  end
  else begin
    edtDesconto.Enabled := false;
    edtDesconto.Text := '0,00';
    edtMulta.Enabled := true;
    edtMulta.Text := '0,00';
    edtJuro.Enabled := true;
    edtJuro.Text := '0,00';
  end;
  edtValorPago.Text :=  dm.cdsContasPagar.FieldByName('vlr_parcela').Text;

end;

end.
