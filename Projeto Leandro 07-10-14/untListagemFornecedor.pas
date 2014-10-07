unit untListagemFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untListagemPrincipal, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Vcl.Mask;

type
  TfrmListagemFornecedor = class(TfrmListagem)
    btnRelatorio: TSpeedButton;
    cboPesquisar: TComboBox;
    procedure Speedbutton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Speedbutton3Click(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure edtPesquisarChange(Sender: TObject);
    procedure Speedbutton2Click(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure edtPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private

  public
     op:Byte;
  end;

var
  frmListagemFornecedor: TfrmListagemFornecedor;

implementation

{$R *.dfm}

uses untCadFornecedor, untDm, untRelatorios, untCompra, untRelFiltroFornecedor;

procedure TfrmListagemFornecedor.btnRelatorioClick(Sender: TObject);
begin
  inherited;
//frmRelatorios.frxReportFornecedor.ShowReport();

  frmfiltrofornecedor.ShowModal();
end;

procedure TfrmListagemFornecedor.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if (frmListagemFornecedor.op = 3) then
   begin
   frmCompra.dblForn.KeyValue:= dm.cdsFornecedor.FieldByName('idFornecedor').AsInteger;
   frmCompra.edtCnpj.Text := dm.cdsFornecedor.FieldByName('cnpj').Text;
   frmListagemFornecedor.Close;
   end;
end;

procedure TfrmListagemFornecedor.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  edtTotaldeReg.Text := IntToStr(dm.cdsFornecedor.RecordCount);

  if (dm.cdsFornecedor.RecordCount = 0) then
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

procedure TfrmListagemFornecedor.edtPesquisarChange(Sender: TObject);
begin
  inherited;
{  if rdbRazao.Checked = true then
  begin
    dm.cdsFornecedor.Locate('razaoSocial',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
    dm.cdsFornecedor.Locate('NomeFant_',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
  end;
  if rdbCnpj.Checked = true then
  begin
    dm.cdsFornecedor.Locate('Cnpj',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
  end; }

  if(cboPesquisar.Text = 'Raz�o Social / Nome Fantasia') then
    begin
      dm.cdsFornecedor.Locate('razaoSocial',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
      dm.cdsFornecedor.Locate('NomeFant_',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
    end
  else if(cboPesquisar.Text = 'CNPJ') then
    begin
      dm.cdsFornecedor.Locate('Cnpj',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
    end;
end;

procedure TfrmListagemFornecedor.edtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (cboPesquisar.Text = 'CNPJ') then
  begin
  If ((not(Key in ['0'..'9',#8])) and (not(key in ['.','-',#8])))then Key := #0;
  end;
end;

procedure TfrmListagemFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if frmListagemFornecedor.op = 3 then
  begin
    dm.cdsCidade.Open;
    dm.cdsFornecedor.Open;
  end
  else begin
  dm.cdsFornecedor.Close;
  dm.cdsCidade.Close;
  end;
end;

procedure TfrmListagemFornecedor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if(Key = VK_F6) then
    begin
      btnRelatorioClick(Self);
    end
  else if(Key = VK_ESCAPE) then
    begin
      close;
    end;
end;

procedure TfrmListagemFornecedor.FormShow(Sender: TObject);
begin
  inherited;
  dm.cdsFornecedor.Open;
  dm.cdsCidade.Open;
 // rdbCnpj.Checked := true;
 edtPesquisar.SetFocus;

end;

procedure TfrmListagemFornecedor.Speedbutton1Click(Sender: TObject);
begin
  inherited;
    op:=1;
    frmCadFornecedor.ShowModal;
    frmCadFornecedor.Caption:='Incluir Fornecedor';
end;

procedure TfrmListagemFornecedor.Speedbutton2Click(Sender: TObject);
begin
  inherited;
    try
      if (MessageDlg('Deseja Excluir este Fornecedor?', mtInformation, [mbYes,mbNo],0)= mrYes) then
      begin
        dm.sdscomandoSql.commandText := 'Delete from Fornecedor where idFornecedor = :id';
        dm.sdscomandoSql.ParamByName('id').Text := dm.cdsFornecedor.FieldByName('idFornecedor').text;
        dm.sdsComandoSql.ExecSQL();
        dm.cdsFornecedor.Close;
        dm.cdsFornecedor.Open;
      end;
    Except
      Application.MessageBox('Erro ao Excluir! Este Fornecedor est� sendo utilizado em outro CADASTRO.','Alerta',0);
    end;
end;

procedure TfrmListagemFornecedor.Speedbutton3Click(Sender: TObject);
begin
  inherited;
op:=2;
frmCadFornecedor.Caption:='Alterar Fornecedor';
frmCadFornecedor.ShowModal;
end;

end.
