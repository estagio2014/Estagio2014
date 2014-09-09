unit untListagemVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,System.UITypes, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untListagemPrincipal, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmListagemVenda = class(TfrmListagem)
    Label2: TLabel;
    rdbTodos: TRadioButton;
    rdbFormaPag: TRadioButton;
    rdbTipoPag: TRadioButton;
    rdbSituacao: TRadioButton;
    rdbData: TRadioButton;
    rdbNumVenda: TRadioButton;
    rdbCliente: TRadioButton;
    rdbPesqData: TRadioButton;
    rdbCpfCnpj: TRadioButton;
    Label3: TLabel;
    edtDataVenda: TMaskEdit;
    procedure Speedbutton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Speedbutton2Click(Sender: TObject);
    procedure rdbPesqDataClick(Sender: TObject);
    procedure rdbClienteClick(Sender: TObject);
    procedure rdbCpfCnpjClick(Sender: TObject);
    procedure rdbNumVendaClick(Sender: TObject);
    procedure edtPesquisarChange(Sender: TObject);
    procedure edtDataVendaChange(Sender: TObject);
    procedure Speedbutton3Click(Sender: TObject);
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

uses untVenda, untDm, untRelatorios;

procedure TfrmListagemVenda.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  edtTotaldeReg.Text := IntToStr(dm.cdsVenda.RecordCount);
  Speedbutton3.Enabled:=true;
  Speedbutton2.Enabled:=true;
  if (dm.cdsVenda.RecordCount = 0) then
  begin
    Speedbutton3.Enabled:=false;
    Speedbutton2.Enabled:=false;
  end;
end;

procedure TfrmListagemVenda.edtDataVendaChange(Sender: TObject);
begin
  inherited;
  if rdbPesqData.Checked = true then
  begin
    dm.cdsVenda.Locate('data_venda',edtDataVenda.Text,[]);
  end;
end;

procedure TfrmListagemVenda.edtPesquisarChange(Sender: TObject);
begin
  inherited;
  if  (edtPesquisar.Text) <> '' then
  begin
  if rdbNumVenda.Checked = true then
  begin
    dm.cdsVenda.Locate('id_venda',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
  end;

  if rdbCliente.Checked = true then
  begin
  dm.cdsVenda.Locate('nomeCli',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
  end;
  if rdbCpfCnpj.Checked = true then
  begin
    dm.cdsVenda.Locate('cpfCnpj',edtPesquisar.Text,[loPartialKey,loCaseInsensitive]);
  end;
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
  rdbTodos.Checked := true;

end;

procedure TfrmListagemVenda.rdbClienteClick(Sender: TObject);
begin
  inherited;
  edtDataVenda.Enabled := false;
end;

procedure TfrmListagemVenda.rdbCpfCnpjClick(Sender: TObject);
begin
  inherited;
  edtDataVenda.Enabled := false;
end;

procedure TfrmListagemVenda.rdbNumVendaClick(Sender: TObject);
begin
  inherited;
  edtDataVenda.Enabled := false;
end;

procedure TfrmListagemVenda.rdbPesqDataClick(Sender: TObject);
begin
  inherited;
  edtDataVenda.Enabled := true
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

 if(rdbTodos.Checked = true)  then
  begin
       frmRelatorios.frxReportVenda.ShowReport();
  end
  else if(rdbData.Checked = true)  then
  begin
       ShowMessage('Teste Data OK');
  end
  else if(rdbFormaPag.Checked = true)  then
  begin
       ShowMessage('Teste Forma de pagamento OK');
  end
   else if(rdbTipoPag.Checked = true)  then
  begin
       ShowMessage('Teste Tipo de pagamento OK');
  end
     else if(rdbSituacao.Checked = true)  then
  begin
       ShowMessage('Teste Situação OK');
  end;


end;

end.
