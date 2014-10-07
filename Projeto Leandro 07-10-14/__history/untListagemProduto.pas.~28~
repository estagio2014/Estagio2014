unit untListagemProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untListagemPrincipal, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Vcl.Mask;

type
  TfrmListagemProduto = class(TfrmListagem)
    rdbCodBarra: TRadioButton;
    rdbDescricao: TRadioButton;
    btnRelatorio: TSpeedButton;
    procedure Speedbutton1Click(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure edtPesquisarChange(Sender: TObject);
    procedure Speedbutton3Click(Sender: TObject);
    procedure Speedbutton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRelatorioClick(Sender: TObject);
    procedure edtPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    op:Byte;
  end;

var
  frmListagemProduto: TfrmListagemProduto;

implementation

{$R *.dfm}

uses untCadProduto, untDm, untRelatorios, untVenda, untCompra,
  untRelFiltroProduto;

procedure TfrmListagemProduto.btnRelatorioClick(Sender: TObject);
begin
  inherited;
  frmfiltroproduto.ShowModal();

{   if(cmbRelatorio.Text = '') then
    begin
      ShowMessage('Selecione o filtro!');
    end
  else if(cmbRelatorio.Text = 'Produtos')  then
    begin
      frmRelatorios.frxReportProduto.ShowReport();
    end
  else if(cmbRelatorio.Text = 'Produtos2') then
    begin
      frmRelatorios.frxReportProduto2.ShowReport();
    end;
    cmbRelatorio.ItemIndex:= -1;   }
end;

procedure TfrmListagemProduto.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if (frmListagemProduto.op = 3) then
   begin
   frmVenda.dblProduto.KeyValue:= dm.cdsProduto.FieldByName('idProduto').AsInteger;
   frmVenda.edtCodBarra.Text := dm.cdsProduto.FieldByName('codBarra').Text;
   frmListagemProduto.Close;
   end
   else if (frmListagemProduto.op = 4) then
   begin
   frmCompra.dblProduto.KeyValue:= dm.cdsProduto.FieldByName('idProduto').AsInteger;
   frmCompra.edtCodBarra.Text := dm.cdsProduto.FieldByName('codBarra').Text;
   frmListagemProduto.Close;
   end;
end;

procedure TfrmListagemProduto.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  edtTotaldeReg.Text := IntToStr(dm.cdsProduto.RecordCount);
  if (dm.cdsProduto.RecordCount = 0) then
  begin
  btnAlterar.Enabled := False;
  btnExcluir.Enabled := False;
  btnRelatorio.Enabled := False;
  end
  else begin
  btnAlterar.Enabled := True;
  btnExcluir.Enabled := True;
  btnRelatorio.Enabled := True;
  end;
end;

procedure TfrmListagemProduto.edtPesquisarChange(Sender: TObject);
begin
  inherited;
  if  (edtPesquisar.Text) <> '' then
  begin
  if rdbCodBarra.Checked = true then
  begin
    dm.cdsProduto.Locate('CODBARRA',edtPesquisar.Text,[]);
  end;
  if rdbDescricao.Checked = true then
  begin
    dm.cdsProduto.Locate('descricao',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
  end;
  end;
end;

procedure TfrmListagemProduto.edtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (rdbCodBarra.Checked = true) then
  begin
  If ((not(Key in ['0'..'9',#8])) and (not(key in [#8])))then Key := #0;
  end;
end;

procedure TfrmListagemProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if frmListagemProduto.op = 3 then
  begin
    dm.cdsCidade.Open;
    dm.cdsCliente.Open;
  end
  else begin
  dm.cdsProduto.Close;
  dm.cdsMarca.Close;
  end;
end;

procedure TfrmListagemProduto.FormShow(Sender: TObject);
begin
  inherited;
  rdbCodBarra.Checked := true;
  dm.cdsProduto.Open;
  dm.cdsMarca.Open;
end;

procedure TfrmListagemProduto.Speedbutton1Click(Sender: TObject);
begin
  inherited;
  op := 1;
  frmCadProduto.ShowModal;
  frmCadProduto.Caption:='Incluir Produto';
end;

procedure TfrmListagemProduto.Speedbutton2Click(Sender: TObject);
begin
  inherited;
  try
    if(messageDlg('Deseja Exluir este Produto?', mtInformation,[mbYes,mbNo],0)=mrYes) then
    begin
      dm.sdscomandoSql.commandText := 'Delete from produto where idProduto = :id';
      dm.sdscomandoSql.ParamByName('id').Text := dm.cdsProduto.FieldByName('idProduto').text;
      dm.sdsComandoSql.ExecSQL();
      dm.cdsProduto.Close;
      dm.cdsProduto.Open;
    end;
  Except
    Application.MessageBox('Erro ao Excluir! Este Produto está sendo utilizado em outro CADASTRO.','Alerta',0);
  end;
end;

procedure TfrmListagemProduto.Speedbutton3Click(Sender: TObject);
begin
  inherited;
  op := 2;
  frmCadProduto.ShowModal;
  frmCadProduto.Caption:='Alterar Produto';
end;

end.
