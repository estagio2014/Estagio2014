unit untListagemCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untListagemPrincipal, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmListagemCompra = class(TfrmListagem)
    btnDetalhar: TSpeedButton;
    btnBuscar: TSpeedButton;
    cboPesquisar: TComboBox;
    procedure Speedbutton1Click(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Speedbutton2Click(Sender: TObject);
    procedure Speedbutton3Click(Sender: TObject);
    procedure cboPesquisarChange(Sender: TObject);
    procedure btnDetalharClick(Sender: TObject);
    procedure edtPesquisarChange(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    op : Byte;
    { Public declarations }
  end;

var
  frmListagemCompra: TfrmListagemCompra;

implementation

{$R *.dfm}

uses untCompra, untDm, untRelatorios, untRelFiltroCompra, untDetalharCompra,
  untLogin;

procedure TfrmListagemCompra.btnDetalharClick(Sender: TObject);
begin
  inherited;
  frmDetalhesCompra.Caption := 'Detalhes de Compra';
  frmDetalhesCompra.ShowModal;
end;

procedure TfrmListagemCompra.cboPesquisarChange(Sender: TObject);
begin
  inherited;
  if (cboPesquisar.Text = 'Data') then
  begin
    edtPesquisar.EditMask := '99/99/9999';
    edtPesquisar.SetFocus;
    edtPesquisar.Clear;
  end
  else if (cboPesquisar.Text = 'CNPJ') then
  begin
    edtPesquisar.EditMask:= '99.999.999/9999-99';
    edtPesquisar.SetFocus;
    edtPesquisar.Clear;
  end
  else begin
    edtPesquisar.EditMask:= '';
    edtPesquisar.SetFocus;
    edtPesquisar.Clear;
  end;
end;

procedure TfrmListagemCompra.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  dm.cdsCompra.IndexFieldNames := Column.FieldName;
end;

procedure TfrmListagemCompra.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  edtTotaldeReg.Text := IntToStr(dm.cdsCompra.RecordCount);
  if (dm.cdsCompra.RecordCount = 0) then
  begin
  btnAlterar.Enabled := False;
  btnExcluir.Enabled := False;
  btnDetalhar.Enabled := False;
  end
  else begin
  btnAlterar.Enabled := True;
  btnExcluir.Enabled := True;
  btnDetalhar.Enabled := True;
  end;
end;

procedure TfrmListagemCompra.edtPesquisarChange(Sender: TObject);
begin
  inherited;
   if(edtPesquisar.Text <> '') then
    begin
    if(cboPesquisar.Text = 'Número Compra') then
      begin
       dm.cdsCompra.Locate('id_compra',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
    end
    else if(cboPesquisar.Text = 'Forma de Pagamento') then
      begin
         dm.cdsCompra.Locate('FORMA_PAG',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
      end
    else if(cboPesquisar.Text = 'Tipo de Pagamento') then
      begin
        dm.cdsCompra.Locate('TIPO_PAG',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
      end;
   end;
end;

procedure TfrmListagemCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dm.cdsCompra.Close;
  dm.cdsFornecedor.Close;
  dm.cdsProduto.Close;
  dm.cdsItemCompra.Close;
  dm.cdsContasPagar.Close;
end;

procedure TfrmListagemCompra.FormShow(Sender: TObject);
begin
  inherited;
  dm.cdsCompra.Open;
  dm.cdsFornecedor.Open;
  dm.cdsProduto.Open;
  dm.cdsContasPagar.Close;
  cboPesquisar.ItemIndex:= -1;
  edtPesquisar.EditMask := '';
  edtPesquisar.SetFocus;
end;

procedure TfrmListagemCompra.Speedbutton1Click(Sender: TObject);
begin
  inherited;
  op := 1;
  dm.banco.StartTransaction(dm.transacao);
  frmCompra.Caption:='Incluir Compra';
  frmCompra.ShowModal;
end;

procedure TfrmListagemCompra.Speedbutton2Click(Sender: TObject);
begin
  inherited;
if(ControlaAcesso = 'Administrador') then
  begin
  if (MessageDlg('Deseja Cancelar esta Compra?', mtConfirmation, [mbYes, mbNo],0)= mrYes) then
  begin
  if (dm.cdsCompra.FieldByName('id_compra').Text = dm.cdsContasPagar.FieldByName('id_compra').Text) and (dm.cdsContasPagar.FieldByName('situacao').Text = 'Liquidado') then
  begin
    MessageDlg('Erro! COMPRA possui parcela(s) liquidada(s). Favor realizar ESTORNO antes de cancelar a COMPRA.', mtWarning,[mbOk],0);
    exit;
  end;
    dm.sdsComandoSql.CommandText:='update compra set situacao = :situacao where id_compra = :id_compra';
    dm.sdsComandoSql.ParamByName('id_compra').Text := dm.cdsCompra.FieldByName('id_compra').Text;
    dm.sdsComandoSql.ParamByName('situacao').Text := 'CANCELADO';
    dm.sdsComandoSql.ExecSQL();
    dm.cdsCompra.Close;
    dm.cdsCompra.Open;
  end;
end
  else if (ControlaAcesso = 'Colaborador') then
   begin
     MessageDlg('Sem permissão para realizar está ação, favor verificar com o Administrador!', mtWarning,[mbOk],0);
     btnExcluir.Enabled := false;
   end;
end;

procedure TfrmListagemCompra.Speedbutton3Click(Sender: TObject);
begin
  inherited;
//  frmRelatorios.frxReportCompra.ShowReport();
  frmfiltrocompra.ShowModal();
end;

end.
