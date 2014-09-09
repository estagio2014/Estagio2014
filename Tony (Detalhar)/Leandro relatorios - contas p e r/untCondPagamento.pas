unit untCondPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,System.UITypes ,System.Variants,System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPrincipal, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Mask;

type
  TfrmCondPagamento = class(TfrmCadPrincipal)
    GroupBox1: TGroupBox;
    cboParcelas: TComboBox;
    Label1: TLabel;
    dsFatura: TDataSource;
    btnGerarParcelas: TSpeedButton;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    edtDataEmissao: TMaskEdit;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnGerarParcelasClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
  private
    { Private declarations }
  public
  op:byte;
    { Public declarations }
  end;

var
  frmCondPagamento: TfrmCondPagamento;

implementation

{$R *.dfm}

uses untVenda, untDm, untCompra;

procedure TfrmCondPagamento.btnCancelarClick(Sender: TObject);
begin
  inherited;
  dm.banco.Rollback(dm.transacao);
  dm.cdsFatura.Close;
  Close;
  dm.banco.StartTransaction(dm.transacao);
end;

procedure TfrmCondPagamento.btnConfirmClick(Sender: TObject);
begin
  inherited;
  if (dm.cdsFatura.RecordCount = 0) then
  begin
    MessageDlg('Parcelas não encontrada! Favor Incluir parcelas.', mtError,[mbOk],0);
    cboParcelas.SetFocus;
    exit;
  end;
  if (frmVenda.op = 1) then
  begin
  dm.banco.Commit(dm.transacao);
  Close;
  frmVenda.Close;

end;
  if (frmCompra.op = 1) then // COMPRA
  begin
  dm.banco.Commit(dm.transacao);
  Close;
  frmCompra.Close;
  end
end;

procedure TfrmCondPagamento.btnGerarParcelasClick(Sender: TObject);

var
  ValorParc:Double;
  vNrParcela : integer;
begin
  inherited;
  if (Trim(cboParcelas.Text) = '') then
  begin
    MessageDlg('Campo PARCELAS Obrigatório!', mtError,[mbOk],0);
    cboParcelas.SetFocus;
    exit;
  end;
  if (edtDataEmissao.Text = '  /  /    ') then
  begin
    MessageDlg('Campo DATA PARCELA Obrigatório!', mtError,[mbOk],0);
    edtDataEmissao.SetFocus;
    exit;
  end;
  if (StrToDate(edtDataEmissao.Text)<(date)) then
  begin
    MessageDlg('Data 1ª PARCELA Informada não pode ser menor do que a data atual!', mtInformation,[mbOk],0);
    edtDataEmissao.SetFocus;
    exit;
  end;
  if (frmVenda.op = 1) then
  begin
    dm.sdsComandoSql.CommandText:='delete from Lancamento where id_venda =:id_venda';
    dm.sdsComandoSql.ParamByName('id_venda').Text:=frmVenda.edtIdVenda.Text;
    dm.sdsComandoSql.ExecSQL();
    dm.cdsLancamento.Close;
    dm.cdsLancamento.Open;

  //lançamento
    dm.sdsComandoSql.CommandText:= 'insert into lancamento (id_, id_venda, tipo_lanc, valor, forma_pagamento, qtde_parc, data_lanc)'+
    'values (seqLancamento.nextval, :id_venda, :tipo_lanc, :valor, :forma_pagamento, :qtde_parc, :data_lanc)';
    dm.sdsComandoSql.ParamByName('id_venda').Text := frmVenda.edtIdVenda.Text;
    dm.sdsComandoSql.ParamByName('tipo_lanc').AsString:='Parcelado';
    dm.sdsComandoSql.ParamByName('valor').Text := dm.cdsVenda.FieldByName('valorTotal').Text;
    dm.sdsComandoSql.ParamByName('forma_pagamento').Text := frmVenda.cboFormPag.Text;//dm.cdsVenda.FieldByName('forma_pag').Text;
    dm.sdsComandoSql.ParamByName('qtde_parc').Text := cboParcelas.Text;
    dm.sdsComandoSql.ParamByName('data_lanc').Text := dm.cdsVenda.FieldByName('data_venda').Text;
    dm.sdsComandoSql.ExecSQL();
    dm.cdsLancamento.Close;
    dm.cdsLancamento.Open;

    dm.sdsComandoSql.CommandText:='delete from fatura where id =:nrFatura';
    dm.sdsComandoSql.ParamByName('nrFatura').Text:=frmVenda.edtIdVenda.Text;
    dm.sdsComandoSql.ExecSQL();
    dm.cdsFatura.Close;
    dm.cdsFatura.Open;


    //Fatura
    dm.sdsFatura.CommandText := 'select * from fatura where id = :codFatura';
    dm.sdsFatura.ParamByName('codFatura').Text := frmVenda.edtIdVenda.Text;
    dm.sdsFatura.ExecSQL();
    dm.cdsFatura.Close;
    dm.cdsFatura.Open;


     vNrParcela := 1;
     ValorParc := Trunc((StrToFloat(frmVenda.edtTotal.Text)/StrToInt(cboParcelas.Text)* 100) / 100);
     repeat
     dm.sdsComandoSql.CommandText := 'insert into fatura(id, num_parcela, id_lancamento,vlr_parcela, vlr_receber,data_emissao,data_venc, num_fatura, situacao) values(:nrFatura, :nrParcela, :idLancamento, :valor_parc, :valor_receber,:data_emissao, :data_venc, :num_fatura, :situacao)';
     dm.sdsComandoSql.ParamByName('nrFatura').Text := frmVenda.edtIdVenda.Text;
     dm.sdsComandoSql.ParamByName('nrParcela').AsInteger := vNrParcela;
     dm.sdsComandoSql.ParamByName('idLancamento').Text := dm.cdsLancamento.FieldByName('id_').Text;
     if (vNrParcela = 1) then
     begin
     dm.sdsComandoSql.ParamByName('valor_parc').AsFloat := Trunc(StrToFloat(frmVenda.edtTotal.Text) - (ValorParc * (StrToInt(cboParcelas.Text) - 1)));
     dm.sdsComandoSql.ParamByName('valor_receber').AsFloat := Trunc(StrToFloat(frmVenda.edtTotal.Text) - (ValorParc * (StrToInt(cboParcelas.Text) - 1)));
     end
     else
     dm.sdsComandoSql.ParamByName('valor_parc').AsFloat:= ValorParc;
     dm.sdsComandoSql.ParamByName('valor_receber').AsFloat := ValorParc;
     dm.sdsComandoSql.ParamByName('data_emissao').Text := frmVenda.edtDataVenda.Text;
     dm.sdsComandoSql.ParamByName('data_venc').Text := DateToStr(IncMonth(StrToDate(edtDataEmissao.text), vNrParcela));
     dm.sdsComandoSql.ParamByName('num_fatura').Text := cboParcelas.Text;
     dm.sdsComandoSql.ParamByName('situacao').AsString := 'Em Aberto';
     dm.sdsComandoSql.ExecSQL();

     vNrParcela := vNrParcela + 1;

  until (cboParcelas.ItemIndex + 3) = vNrParcela;
  dm.cdsFatura.Close;
  dm.cdsFatura.Open;

end;
 if (frmCompra.op = 1) then // COMPRA
  begin
    dm.sdsComandoSql.CommandText:='delete from Lancamento where id_compra =:id_compra';
    dm.sdsComandoSql.ParamByName('id_compra').Text:=frmCompra.edtIdCompra.Text;
    dm.sdsComandoSql.ExecSQL();
    dm.cdsLancamento.Close;
    dm.cdsLancamento.Open;

	//Lançamento
    dm.sdsComandoSql.CommandText:= 'insert into lancamento (id_, id_compra, tipo_lanc, valor, forma_pagamento, qtde_parc, data_lanc)'+
    'values (seqLancamento.nextval, :id_compra, :tipo_lanc, :valor, :forma_pagamento, :qtde_parc, :data_lanc)';
    dm.sdsComandoSql.ParamByName('id_compra').Text := frmCompra.edtIdCompra.Text;
    dm.sdsComandoSql.ParamByName('tipo_lanc').AsString:='Parcelado';
    dm.sdsComandoSql.ParamByName('valor').Text := dm.cdsCompra.FieldByName('valorTotal').Text;
    dm.sdsComandoSql.ParamByName('forma_pagamento').Text := frmCompra.cboFormPag.Text;
    dm.sdsComandoSql.ParamByName('qtde_parc').Text := cboParcelas.Text;
	dm.sdsComandoSql.ParamByName('data_lanc').Text := dm.cdsCompra.FieldByName('data_compra').Text;
    dm.sdsComandoSql.ExecSQL();
    dm.cdsLancamento.Close;
    dm.cdsLancamento.Open;

    dm.sdsComandoSql.CommandText:='delete from fatura where id =:nrFatura';
    dm.sdsComandoSql.ParamByName('nrFatura').Text:=frmCompra.edtIdCompra.Text;
    dm.sdsComandoSql.ExecSQL();
    dm.cdsFatura.Close;
    dm.cdsFatura.Open;

    //Fatura
    dm.sdsFatura.CommandText := 'select * from fatura where id = :codFatura';
    dm.sdsFatura.ParamByName('codFatura').Text := frmCompra.edtIdCompra.Text;
    dm.sdsFatura.ExecSQL();
    dm.cdsFatura.Close;
    dm.cdsFatura.Open;


     vNrParcela := 1;
     ValorParc := Trunc((StrToFloat(frmCompra.edtTotal.Text)/StrToInt(cboParcelas.Text)* 100) / 100);
     repeat
     dm.sdsComandoSql.CommandText := 'insert into fatura(id, num_parcela, id_lancamento,vlr_parcela, vlr_receber,data_emissao,data_venc, num_fatura, situacao) values(:nrFatura, :nrParcela, :idLancamento, :valor_parc, :valor_receber,:data_emissao, :data_venc, :num_fatura, :situacao)';
     dm.sdsComandoSql.ParamByName('nrFatura').Text := frmCompra.edtIdCompra.Text;
     dm.sdsComandoSql.ParamByName('nrParcela').AsInteger := vNrParcela;
     dm.sdsComandoSql.ParamByName('idLancamento').Text := dm.cdsLancamento.FieldByName('id_').Text;
     if (vNrParcela = 1) then
     begin
     dm.sdsComandoSql.ParamByName('valor_parc').AsFloat := Trunc(StrToFloat(frmCompra.edtTotal.Text) - (ValorParc * (StrToInt(cboParcelas.Text) - 1)));
     dm.sdsComandoSql.ParamByName('valor_receber').AsFloat := Trunc(StrToFloat(frmCompra.edtTotal.Text) - (ValorParc * (StrToInt(cboParcelas.Text) - 1)));
     end
     else
     dm.sdsComandoSql.ParamByName('valor_parc').AsFloat:= ValorParc;
     dm.sdsComandoSql.ParamByName('valor_receber').AsFloat := ValorParc;
     dm.sdsComandoSql.ParamByName('data_emissao').Text := frmCompra.edtDataCompra.Text;
     dm.sdsComandoSql.ParamByName('data_venc').Text := DateToStr(IncMonth(StrToDate(edtDataEmissao.text), vNrParcela));
     dm.sdsComandoSql.ParamByName('num_fatura').Text := cboParcelas.Text;
     dm.sdsComandoSql.ParamByName('situacao').AsString := 'Em Aberto';
     dm.sdsComandoSql.ExecSQL();

     vNrParcela := vNrParcela + 1;

  until (cboParcelas.ItemIndex + 3) = vNrParcela;
    dm.cdsFatura.Close;
    dm.cdsFatura.Open;

  end;
end;


procedure TfrmCondPagamento.FormShow(Sender: TObject);
begin
  inherited;
  cboParcelas.ItemIndex:= -1;
  cboParcelas.SetFocus;
  edtDataEmissao.Text := DateToStr(date);
  dm.cdsFatura.Close;

end;

end.
