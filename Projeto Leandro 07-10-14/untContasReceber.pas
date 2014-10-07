unit untContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,System.UITypes, System.Classes, Vcl.Graphics,
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
    Label15: TLabel;
    edtValorParc: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure edtMultaKeyPress(Sender: TObject; var Key: Char);
    procedure edtJuroKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorRecebidoKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorParcKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmContasReceber.btnCancelarClick(Sender: TObject);
begin
  inherited;
  dm.banco.Rollback(dm.transacao);
end;

procedure TfrmContasReceber.btnConfirmClick(Sender: TObject);
begin
  inherited;
  if (trim (edtDesconto.Text) = '') then
  begin
    edtDesconto.Text := '0,00';
  end;
  if (trim (edtMulta.Text) = '') then
  begin
    edtMulta.Text := '0,00';
  end;
  if (trim (edtJuro.Text) = '') then
  begin
    edtJuro.Text := '0,00';
  end;

  if (StrToFloat(edtDesconto.Text)>StrToFloat(edtValorParc.Text)) then
  begin
    MessageDlg('O valor do DESCONTO n�o pode ser maior do que o valor da parcela.', mtError,[mbOk],0);
    edtDesconto.SetFocus;
    exit;
  end;
  if (StrToFloat(edtMulta.Text)>StrToFloat(edtValorParc.Text)) then
  begin
    MessageDlg('O valor da MULTA n�o pode ser maior do que o valor da parcela.', mtError,[mbOk],0);
    edtMulta.SetFocus;
    exit;
  end;
  if (StrToFloat(edtJuro.Text)>StrToFloat(edtValorParc.Text)) then
  begin
    MessageDlg('O valor de Juros n�o pode ser maior do que o valor da parcela.', mtError,[mbOk],0);
    edtJuro.SetFocus;
    exit;
  end;
  {if (cboSituacao.Text = dm.cdsContasReceb.FieldByName('situacao').Text) then
  begin
  MessageDlg('Alterar a Situa��o da Parcela!', mtWarning,[mbOk],0);
  cboSituacao.SetFocus;
  exit;
  end;    }
  //edtValorRecebido.Text := FloatToStr(Trunc(StrToFloat(edtValorParc.Text)-(StrToFloat(edtDesconto.Text)+StrToFloat(edtMulta.Text)+StrToFloat(edtJuro.Text))));
  with dm.sdsComandoSql do begin
  CommandText:= 'update fatura set vlr_recebido= :valor_recebido, data_recebido= :data_recebido, situacao= :situacao,'+
  'multa= :multa, juros= :juros, desconto= :desconto ,observacoes= :obs where id= :id_venda and num_parcela= :num_parcela';
  ParamByName('id_venda').Text := edtNumVenda.Text;
  ParamByName('num_parcela').Text := edtParcela.Text;
  ParamByName('valor_recebido').Text := edtValorRecebido.Text;
  ParamByName('data_recebido').Text :=  edtDataReceb.Text;
  ParamByName('situacao').Text := cboSituacao.Text;
  ParamByName('multa').Text := edtMulta.Text;
  ParamByName('juros').Text := edtJuro.Text;
  ParamByName('desconto').Text := edtDesconto.Text;
  ParamByName('obs').Text := Memo1.Text;
  end;
  dm.sdsComandoSql.ExecSQL();
  dm.banco.Commit(dm.transacao);
  dm.cdsContasReceb.Close;
  dm.sdsContasReceb.Close;
  dm.cdsContasReceb.Open;
  dm.sdsContasReceb.Open;
  Close;
end;

procedure TfrmContasReceber.edtDescontoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If ((not(Key in ['0'..'9',#8])) and (not(key in [',',#8])))then Key := #0;
  If (key in [','])and (Pos(',',edtDesconto.text)<>0) then Key :=#0;
end;

procedure TfrmContasReceber.edtJuroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If ((not(Key in ['0'..'9',#8])) and (not(key in [',',#8])))then Key := #0;
  If (key in [','])and (Pos(',',edtJuro.text)<>0) then Key :=#0;
end;

procedure TfrmContasReceber.edtMultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If ((not(Key in ['0'..'9',#8])) and (not(key in [',',#8])))then Key := #0;
  If (key in [','])and (Pos(',',edtMulta.text)<>0) then Key :=#0;
end;

procedure TfrmContasReceber.edtValorParcKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If ((not(Key in ['0'..'9',#8])) and (not(key in [',',#8])))then Key := #0;
  If (key in [','])and (Pos(',',edtValorParc.text)<>0) then Key :=#0;
end;

procedure TfrmContasReceber.edtValorRecebidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If ((not(Key in ['0'..'9',#8])) and (not(key in [',',#8])))then Key := #0;
  If (key in [','])and (Pos(',',edtValorRecebido.text)<>0) then Key :=#0;
end;

procedure TfrmContasReceber.FormShow(Sender: TObject);
begin
  inherited;
  edtParcela.Text := dm.cdsContasReceb.FieldByName('num_parcela').Text;
  cboSituacao.ItemIndex := (cboSituacao.Items.IndexOf(dm.cdsContasReceb.FieldByName('situacao').Text));
  edtNumVenda.Text:= dm.cdsContasReceb.FieldByName('id_venda').Text;
  edtDataVenc.Text := dm.cdsContasReceb.FieldByName('data_venc').Text;
  if (dm.cdsContasReceb.Locate('id_venda',(dm.cdsContasReceb.FieldByName('id_venda').Text),[])) then
  begin
   edtCliente.Text :=dm.cdsVenda.FieldByName('nomeCli').Text;
  end;
  edtParcelas.Text := dm.cdsContasReceb.FieldByName('qtde_parc').Text;
  edtDataEmi.Text := dm.cdsContasReceb.FieldByName('data_emissao').Text;
  edtValorParc.Text := dm.cdsContasReceb.FieldByName('vlr_parcela').Text;
  edtDataReceb.Text := DateToStr(date);
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
  edtValorRecebido.Text :=  dm.cdsContasReceb.FieldByName('vlr_parcela').Text;
end;

end.
