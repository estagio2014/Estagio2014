unit untListagemVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,System.UITypes, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untListagemPrincipal, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmListagemVenda = class(TfrmListagem)
    cboPesquisar: TComboBox;
    SpeedButton5: TSpeedButton;
    btnDetalhar: TSpeedButton;
    procedure Speedbutton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Speedbutton2Click(Sender: TObject);
    procedure Speedbutton3Click(Sender: TObject);
    procedure cboPesquisarChange(Sender: TObject);
  private
    { Private declarations }
  public
    op:Byte;
    { Public declarations }
  end;

var
  frmListagemVenda: TfrmListagemVenda;

implementation

{$R *.dfm}

uses untVenda, untDm, untRelatorios, untRelFiltroVenda;

procedure TfrmListagemVenda.cboPesquisarChange(Sender: TObject);
begin
  inherited;
  if (cboPesquisar.Text = 'Data') then
  begin
    edtPesquisar.EditMask:= '99/99/9999';
  end
  else begin
    edtPesquisar.EditMask:= '';
  end;
end;

procedure TfrmListagemVenda.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  edtTotaldeReg.Text := IntToStr(dm.cdsVenda.RecordCount);
  if (dm.cdsVenda.RecordCount = 0) then
  begin
  btnExcluir.Enabled := False;
  btnAlterar.Enabled := False;
  btnDetalhar.Enabled := False
  end
  else begin
  btnExcluir.Enabled := True;
  btnAlterar.Enabled := True;
  btnDetalhar.Enabled := True;
  end;
end;

procedure TfrmListagemVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dm.cdsVenda.Close;
  dm.cdsCliente.Close;
  dm.cdsProduto.Close;
  dm.cdsItemVenda.Close;
end;

procedure TfrmListagemVenda.FormShow(Sender: TObject);
begin
  inherited;
  dm.cdsVenda.Open;
  dm.cdsProduto.Open;
  dm.cdsCliente.Open;
  dm.cdsItemVenda.Open;
  cboPesquisar.ItemIndex:= -1;
  edtPesquisar.EditMask := '';
end;
procedure TfrmListagemVenda.Speedbutton1Click(Sender: TObject);
begin
  inherited;
   op := 1;
   dm.banco.StartTransaction(dm.transacao);
   frmVenda.Caption:='Incluir Venda';
   frmVenda.showModal;
end;

procedure TfrmListagemVenda.Speedbutton2Click(Sender: TObject);
begin
  inherited;
  if (MessageDlg('Deseja Cancelar esta Venda?', mtConfirmation, [mbYes, mbNo],0)= mrYes) then
  begin
    dm.sdsComandoSql.CommandText:='update venda set situacao = :situacao where id_venda = :id_venda';
    dm.sdsComandoSql.ParamByName('id_venda').Text := dm.cdsVenda.FieldByName('id_Venda').Text;
    dm.sdsComandoSql.ParamByName('situacao').Text := 'CANCELADO';
    dm.sdsComandoSql.ExecSQL();
    dm.cdsVenda.Close;
    dm.cdsVenda.Open;
  end;
end;

procedure TfrmListagemVenda.Speedbutton3Click(Sender: TObject);
begin
  inherited;
       frmfiltrovenda.ShowModal();
  {
 if(cboPesquisar.Text = 'Todos') or (cboPesquisar.Text ='')  then
  begin
       frmRelatorios.frxReportVenda.ShowReport();
  end
  else if(cboPesquisar.Text = 'Data')  then
  begin
       ShowMessage('Teste Data OK');
  end
  else if(cboPesquisar.Text = 'Forma de Pagamento')  then
  begin
       ShowMessage('Teste Forma de pagamento OK');
  end
   else if(cboPesquisar.Text = 'Tipo de Pagamento')  then
  begin
       ShowMessage('Teste Tipo de pagamento OK');
  end
     else if(cboPesquisar.Text = 'Situação')  then
  begin
       ShowMessage('Teste Situação OK');
  end;
  }

end;

end.
