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
    MessageDlg('O valor do DESCONTO não pode ser maior do que o valor da parcela.', mtError,[mbOk],0);
    edtDesconto.SetFocus;
    exit;
  end;
  if (StrToFloat(edtMulta.Text)>StrToFloat(edtValorParc.Text)) then
  begin
    MessageDlg('O valor da MULTA não pode ser maior do que o valor da parcela.', mtError,[mbOk],0);
    edtMulta.SetFocus;
    exit;
  end;
  if (StrToFloat(edtJuro.Text)>StrToFloat(edtValorParc.Text)) then
  begin
    MessageDlg('O valor de Juros não pode ser maior do que o valor da parcela.', mtError,[mbOk],0);
    edtJuro.SetFocus;
    exit;
  end;

  edtValorRecebido.Text := FloatToStr(Trunc(StrToFloat(edtValorParc.Text)-(StrToFloat(edtDesconto.Text)+StrToFloat(edtMulta.Text)+StrToFloat(edtJuro.Text))));

  dm.sdsComandoSql.CommandText:= 'update fatura set vlr_recebido = :valor_recebido, data_recebido = :data_recebido, situacao = :situacao where num_parcela = :num_parcela';
  dm.sdsComandoSql.ParamByName('num_parcela').Text := edtParcela.Text;
  dm.sdsComandoSql.ParamByName('valor_recebido').Text := edtValorRecebido.Text;
  dm.sdsComandoSql.ParamByName('data_recebido').Text :=  edtDataReceb.Text;
  dm.sdsComandoSql.ParamByName('situacao').Text := cboSituacao.Text;
  dm.sdsComandoSql.ExecSQL();
  dm.cdsContasReceb.Close;
  dm.cdsContasReceb.Open;
  dm.banco.Commit(dm.transacao);
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
  edtDesconto.SetFocus;
  edtNumVenda.Text:= dm.cdsContasReceb.FieldByName('id_venda').Text;
  if (dm.cdsContasReceb.Locate('id_venda',(dm.cdsContasReceb.FieldByName('id_venda').Text),[])) then
  begin
   edtCliente.Text :=dm.cdsVenda.FieldByName('nomeCli').Text;
  end;
  edtParcelas.Text := dm.cdsContasReceb.FieldByName('qtde_parc').Text;
  edtParcela.Text := dm.cdsContasReceb.FieldByName('num_parcela').Text;
  edtDataEmi.Text := dm.cdsContasReceb.FieldByName('data_emissao').Text;
  edtDataVenc.Text := dm.cdsContasReceb.FieldByName('data_venc').Text;
  edtValorParc.Text := dm.cdsContasReceb.FieldByName('vlr_parcela').Text;
  edtDataReceb.Text := DateToStr(date);
  edtDesconto.Text := '0,00';
  edtMulta.Text := '0,00';
  edtJuro.Text := '0,00';

  if (dm.cdsContasReceb.Locate('id_venda',(dm.cdsContasReceb.FieldByName('id_venda').Text),[])) then
  begin
   cboSituacao.Text :=dm.cdsVenda.FieldByName('situacao').Text;
  end;
  edtDataReceb.Text := DateToStr(date);
end;

end.
