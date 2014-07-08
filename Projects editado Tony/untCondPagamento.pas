unit untCondPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  dm.banco.StartTransaction(dm.transacao);
end;

procedure TfrmCondPagamento.btnConfirmClick(Sender: TObject);
begin
  inherited;
  dm.banco.Commit(dm.transacao);
  Close;
end;

procedure TfrmCondPagamento.btnGerarParcelasClick(Sender: TObject);

var
  ValorParc:Double;
  vNrParcela : integer;
begin
  inherited;
  if (frmVenda.op = 1) then
  begin
    dm.banco.Rollback(dm.transacao);
    dm.banco.StartTransaction(dm.transacao);
  //lan�amento
    dm.sdsComandoSql.CommandText:= 'insert into lancamento (id_, id_venda, tipo_lanc, valor, forma_pagamento, qtde_parc, data_lanc)'+
    'values (seqLancamento.nextval, :id_venda, :tipo_lanc, :valor, :forma_pagamento, :qtde_parc, :data_lanc)';
    dm.sdsComandoSql.ParamByName('id_venda').Text := frmVenda.edtIdVenda.Text;
    dm.sdsComandoSql.ParamByName('tipo_lanc').AsString:='Parcelado';
    dm.sdsComandoSql.ParamByName('valor').Text := dm.cdsVenda.FieldByName('valorTotal').Text;
    dm.sdsComandoSql.ParamByName('forma_pagamento').Text := dm.cdsVenda.FieldByName('forma_pag').Text;
    dm.sdsComandoSql.ParamByName('qtde_parc').Text := cboParcelas.Text;
    dm.sdsComandoSql.ParamByName('data_lanc').Text := dm.cdsVenda.FieldByName('data_venda').Text;
    dm.sdsComandoSql.ExecSQL();
    dm.cdsLancamento.Close;
    dm.cdsLancamento.Open;


    //Fatura
    dm.sdsFatura.CommandText := 'select * from fatura where id = :codFatura';
    dm.sdsFatura.ParamByName('codFatura').Text := frmVenda.edtIdVenda.Text;
    dm.sdsFatura.ExecSQL();
    dm.cdsFatura.Close;
    dm.cdsFatura.Open;

     vNrParcela := 1;
       ValorParc := Trunc((StrToFloat(frmVenda.edtTotal.Text)/StrToInt(cboParcelas.Text)* 100) / 100);
    // ValorParc := Trunc((StrToFloat(dm.cdsVenda.FieldByName('valorTotal').Text) / StrToInt(cboParcelas.Text)* 100) / 100);
     repeat
     dm.sdsComandoSql.CommandText := 'insert into fatura(id, num_parcela, id_lancamento,vlr_parcela, vlr_receber,data_emissao,data_venc, num_fatura) values(:nrFatura, :nrParcela, :idLancamento, :valor_parc, :valor_receber,:data_emissao, :data_venc, :num_fatura)';
     dm.sdsComandoSql.ParamByName('nrFatura').Text := frmVenda.edtIdVenda.Text;
     dm.sdsComandoSql.ParamByName('nrParcela').AsInteger := vNrParcela;
     dm.sdsComandoSql.ParamByName('idLancamento').Text := dm.cdsLancamento.FieldByName('id_').Text;
     if (vNrParcela = 1) then
     begin
     dm.sdsComandoSql.ParamByName('valor_parc').AsFloat := StrToFloat(frmVenda.edtTotal.Text) - (ValorParc * (StrToInt(cboParcelas.Text) - 1));
       //dm.sdsComandoSql.ParamByName('valor_parc').AsFloat := StrToFloat(dm.cdsVenda.FieldByName('valorTotal').Text) - (ValorParc * (StrToInt(cboParcelas.Text) - 1));
     end
     else
     dm.sdsComandoSql.ParamByName('valor_parc').AsFloat:= ValorParc;
     dm.sdsComandoSql.ParamByName('valor_receber').AsFloat := ValorParc;
     dm.sdsComandoSql.ParamByName('data_emissao').Text := frmVenda.edtDataVenda.Text;
     dm.sdsComandoSql.ParamByName('data_venc').Text := DateToStr(IncMonth(StrToDate(edtDataEmissao.text), vNrParcela));
     dm.sdsComandoSql.ParamByName('num_fatura').Text := cboParcelas.Text;
     dm.sdsComandoSql.ExecSQL();

     vNrParcela := vNrParcela + 1;
  until (cboParcelas.ItemIndex + 3) = vNrParcela;
  dm.cdsFatura.Close;
  dm.cdsFatura.Open;



end;
  if (frmCompra.op = 1) then
  begin
    dm.sdsComandoSql.CommandText:= 'insert into lancamento (id_, id_compra, tipo_lanc, valor, forma_pagamento, qtde_parc)'+
    'values (seqLancamento.nextval, :id_compra, :tipo_lanc, :valor, :forma_pagamento, :qtde_parc)';
    dm.sdsComandoSql.ParamByName('id_compra').Text := dm.cdsCompra.FieldByName('id_compra').Text;
    dm.sdsComandoSql.ParamByName('tipo_lanc').AsString:='Parcelado';
    dm.sdsComandoSql.ParamByName('valor').Text := dm.cdsCompra.FieldByName('valorTotal').Text;
    dm.sdsComandoSql.ParamByName('forma_pagamento').Text := dm.cdsCompra.FieldByName('forma_pag').Text;
    dm.sdsComandoSql.ParamByName('qtde_parc').Text := cboParcelas.Text;
    dm.sdsComandoSql.ExecSQL();
    dm.cdsLancamento.Close;
    dm.cdsLancamento.Open;
  {for I := 1 to cboParcelas.Text do
  begin
    dm.sdsComandoSql.commandText:= 'insert into fatura values '
  end;}

  { ValorParc := Trunc(StrToFloat(dm.cdsVenda.FieldByName('valorTotal').Text) / StrToInt(cboParcelas.Text) * 100) / 100; // valor da parcela
  //cdsfatura.Open; // somente se a tabela de parcelas j� n�o estiver aberta
  try
    for I := StrToInt(cboParcelas.text) downto 1 do
      begin
        Pagar.Insert;
        PagarData.Value := Date; // data de gera��o da parcela
        PagarVencto.Value := IncMonth(Date, I); // data de vencimento
                                                // da parcela
        if I = 1 then
           PagarValParc.Value := StrToFloat(dm.cdsVenda.FieldByName('valorTotal').Text) - (ValorParc * (StrToInt(cboParcelas.text) - 1))
        else
           PagarValParc.Value := ValorParc;
        PagarNumParc.Value := I; // numero da parcela
        {preencha os demais campos da tabela}
    //    Pagar.Post; // grava o registro em cache
    //  end;
   // Pagar.ApplyUpdates(0); // ap�s gerar todas as parcelas,
                           // efetua a grava��o no banco de dados


  //end;
    {exiba uma mensagem de erro}
  end;
  end;


procedure TfrmCondPagamento.FormShow(Sender: TObject);
begin
  inherited;
  cboParcelas.ItemIndex:= -1;
  cboParcelas.SetFocus;
  edtDataEmissao.Text := DateToStr(date);
end;

end.
