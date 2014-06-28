unit untCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,System.UITypes, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPrincipal, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB;

type
  TfrmCadProduto = class(TfrmCadPrincipal)
    Label2: TLabel;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    edtPrecoCusto: TEdit;
    edtEstoqueAtual: TEdit;
    edtPrecoVenda: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    edtIdProd: TEdit;
    edtDesc: TEdit;
    edtEspec: TEdit;
    cboCat: TComboBox;
    cboUnidade: TComboBox;
    dblMarca: TDBLookupComboBox;
    mmObs: TMemo;
    Label14: TLabel;
    Label13: TLabel;
    edtDataCadPro: TMaskEdit;
    Label12: TLabel;
    rdbDisponivel: TRadioButton;
    rdbIndisponivel: TRadioButton;
    dsMarca: TDataSource;
    btnLocalizar: TSpeedButton;
    edtCodBarra: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProduto: TfrmCadProduto;

implementation

{$R *.dfm}

uses untListagemProduto, untDm, untListagemMarca;

procedure TfrmCadProduto.btnConfirmClick(Sender: TObject);
begin
  inherited;
    if Trim(edtDesc.Text)= '' then
    begin
      MessageDlg('Campo Descrição Obrigatório!', mtError,[mbOk],0);
      edtDesc.SetFocus;
      exit;
    end;
    if Trim(edtEspec.Text)= '' then
    begin
      MessageDlg('Campo Especificação Obrigatório!', mtError,[mbOk],0);
      edtEspec.SetFocus;
      exit;
    end;
    if Trim(dblMarca.Text)= '' then
    begin
      MessageDlg('Campo Marca Obrigatório!', mtError,[mbOk],0);
      dblMarca.SetFocus;
      exit;
    end;
    if Trim(cboCat.Text)= '' then
    begin
      MessageDlg('Campo Categoria Obrigatório!', mtError,[mbOk],0);
      cboCat.SetFocus;
      exit;
    end;
    if Trim(cboUnidade.Text)= '' then
    begin
      MessageDlg('Campo Unidade Obrigatório!', mtError,[mbOk],0);
      cboUnidade.SetFocus;
      exit;
    end;
    if Trim(edtPrecoCusto.Text)= '' then
    begin
      MessageDlg('Campo Preço Custo Obrigatório!', mtError,[mbOk],0);
      edtPrecoCusto.SetFocus;
      exit;
    end;
    if Trim(edtPrecoVenda.Text)= '' then
    begin
      MessageDlg('Campo Preço Venda Obrigatório!', mtError,[mbOk],0);
      edtPrecoVenda.SetFocus;
      exit;
    end;
    if frmListagemProduto.op = 1 then
    begin
    if MessageDlg('Deseja Alterar o ESTOQUE ATUAL?', mtInformation,[mbYes,mbNo],0)= mrYes then
    begin
    dm.sdsComandoSql.CommandText:='INSERT into produto values (seqProduto.nextval, :id, :codBarra, :descricao, :complemento, :categoria, :unidade,  :precoCusto, :precoVenda, :estoqueAtual, :obs, :situacao, :dataCadastro)';
    with dm.sdsComandoSql do
    begin
      ParamByName('id').AsInteger := dblMarca.KeyValue;
      ParamByName('codBarra').Text := edtCodBarra.Text;
      ParamByName('descricao').Text := edtDesc.Text;
      ParamByName('complemento').Text := edtEspec.Text;
      ParamByName('categoria').Text := cboCat.Text;
      ParamByName('unidade').Text := cboUnidade.Text;
      ParamByName('precoCusto').Text := edtPrecoCusto.Text;
      ParamByName('precoVenda').Text := edtPrecoVenda.Text;
      ParamByName('estoqueAtual').Text := edtEstoqueAtual.Text;
      ParamByName('obs').Text := mmObs.Text;
      if rdbDisponivel.Checked = true then
      begin
        dm.sdsComandoSql.ParamByName('situacao').AsString:='D';
      end
      else
      begin
        rdbIndisponivel.Checked := true;
        dm.sdsComandoSql.ParamByName('situacao').AsString:='I';
      end;
      ParamByName('dataCadastro').Text := edtDataCadPro.Text;
    end;
    dm.sdsComandoSql.ExecSQL();
    dm.cdsProduto.Close;
    dm.cdsProduto.Open;
    MessageDlg('Produto cadastrado com Sucesso!', mtInformation,[mbOk],0);
    Close;
   end;
    end;
   if frmListagemProduto.op = 2 then
   begin
     dm.sdsComandoSql.CommandText:= 'UPDATE produto set id = :id, codBarra = :codBarra, descricao = :descricao, complemento = :complemento, categoria = :categoria,'+
      'unidade = :unidade, precoCusto = :precoCusto, precoVenda = :precoVenda, estoqueAtual = :estoqueAtual, observacoes = :obs, dataCadastro = :dataCadastro, situacao = :situacao where idProduto = :idProduto';
      with dm.sdsComandoSql do
      begin
        ParamByName('idProduto').Text := edtIdProd.Text;
        ParamByName('id').AsInteger := dblMarca.KeyValue;
        ParamByName('codBarra').Text := edtCodBarra.Text;
        ParamByName('descricao').Text := edtDesc.Text;
        ParamByName('complemento').Text := edtEspec.Text;
        ParamByName('id').AsInteger := dblMarca.KeyValue;
        ParamByName('categoria').Text := cboCat.Text;
        ParamByName('unidade').Text := cboUnidade.Text;
        ParamByName('precoCusto').Text := edtPrecoCusto.Text;
        ParamByName('precoVenda').Text := edtPrecoVenda.Text;
        if edtEstoqueAtual.text = dm.cdsProduto.FieldByName('estoqueAtual').Text then
        begin
	 	      ParamByName('estoqueAtual').Text := edtEstoqueAtual.Text;
        end
        else if MessageDlg('Deseja Alterar o ESTOQUE ATUAL?', mtInformation,[mbYes,mbNo],0)= mrYes then
	      begin
	 	      ParamByName('estoqueAtual').Text := edtEstoqueAtual.Text;
	      end;
        ParamByName('estoqueAtual').Text := edtEstoqueAtual.Text;
        ParamByName('obs').Text := mmObs.Text;
        ParamByName('dataCadastro').Text := edtDataCadPro.Text;
        if rdbDisponivel.Checked = true then
        begin
          dm.sdsComandoSql.ParamByName('situacao').AsString:='D';
        end
        else
        begin
          rdbIndisponivel.Checked := true;
          dm.sdsComandoSql.ParamByName('situacao').AsString:='I';
        end;
      end;
      dm.sdsComandoSql.ExecSQL();
      MessageDlg('Alteração realizada com Sucesso!', mtInformation,[mbOk],0);
      dm.cdsProduto.Close;
      dm.cdsProduto.Open;
      Close;
   end;
end;

procedure TfrmCadProduto.btnLocalizarClick(Sender: TObject);
begin
  inherited;
  frmListagemMarca.op := 3;
  frmListagemMarca.showModal;
  dm.cdsMarca.Open;
end;

procedure TfrmCadProduto.FormShow(Sender: TObject);
begin
  inherited;
  if frmListagemProduto.op = 1 then
  begin
    edtDataCadPro.Text:=DateToStr(date);
    edtIdProd.Clear;
    edtCodBarra.Clear;
    edtDesc.Clear;
    edtEspec.Clear;
    dblMarca.KeyValue := -1;
    cboCat.ItemIndex := -1;
    cboUnidade.ItemIndex := -1;
    edtPrecoCusto.Clear;
    edtPrecoVenda.Clear;
    edtEstoqueAtual.Clear;
    mmObs.Clear;
    rdbDisponivel.Checked:=true;
    edtCodBarra.SetFocus;
  end;
  if frmListagemProduto.op = 2 then
  begin
    edtIdProd.Text := dm.cdsProduto.FieldByName('idProduto').Text;
    edtCodBarra.Text := dm.cdsProduto.FieldByName('codBarra').Text;
    edtDesc.Text := dm.cdsProduto.FieldByName('descricao').Text;
    edtEspec.Text := dm.cdsProduto.FieldByName('complemento').Text;
    dblMarca.KeyValue := dm.cdsProduto.FieldByName('id').AsInteger;
    cboCat.ItemIndex := (cboCat.Items.IndexOf(dm.cdsProduto.FieldByName('categoria').Text));
    cboUnidade.ItemIndex := (cboUnidade.Items.IndexOf(dm.cdsProduto.FieldByName('unidade').Text));
    edtPrecoCusto.Text := dm.cdsProduto.FieldByName('precoCusto').Text;
    edtPrecoVenda.Text := dm.cdsProduto.FieldByName('precoVenda').Text;
    edtEstoqueAtual.Text := dm.cdsProduto.FieldByName('estoqueAtual').Text;
    mmObs.Text := dm.cdsProduto.FieldByName('observacoes').Text;
    edtDataCadPro.Text := dm.cdsProduto.FieldByName('dataCadastro').Text;
    if (dm.cdsProduto.FieldByName('situacao').Text = 'D') then
    begin
      rdbDisponivel.Checked := True;
    end
    else if (dm.cdsProduto.FieldByName('situacao').Text = 'I') then
    begin
        rdbIndisponivel.Checked := True;
    end;
  end;
end;

end.
