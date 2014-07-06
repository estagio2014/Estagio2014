unit untListagemVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untListagemPrincipal, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmListagemVenda = class(TfrmListagem)
    btnRelatorio: TSpeedButton;
    procedure Speedbutton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Speedbutton2Click(Sender: TObject);
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

uses untVenda, untDm;

procedure TfrmListagemVenda.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  edtTotaldeReg.Text := IntToStr(dm.cdsVenda.RecordCount);
  Speedbutton3.Enabled:=true;
  Speedbutton2.Enabled:=true;
  btnRelatorio.Enabled:=true;
  if (dm.cdsVenda.RecordCount = 0) then
  begin
    Speedbutton3.Enabled:=false;
    Speedbutton2.Enabled:=false;
    btnRelatorio.Enabled:=false;
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
 // dm.cdsItemVenda.Open;
end;

procedure TfrmListagemVenda.Speedbutton1Click(Sender: TObject);
begin
  inherited;
   dm.banco.StartTransaction(dm.transacao);
   op := 1;
   frmVenda.Caption:='Incluir Venda';
   frmVenda.showModal;
end;

procedure TfrmListagemVenda.Speedbutton2Click(Sender: TObject);
begin
  inherited;
  if (MessageDlg('Deseja excluir esta Venda?', mtConfirmation, [mbYes, mbNo],0)=mrYes) then
  dm.sdsComandoSql.CommandText := 'delete from item_venda where id_venda = :id_venda';
  dm.sdsComandoSql.ParamByName('id_venda').Text := dm.cdsItemVenda.FieldByName('id_venda').Text;
  dm.sdsComandoSql.ExecSQL();
  dm.sdsComandoSql.CommandText := 'delete from venda where id_Venda = :id';
  dm.sdsComandoSql.ParamByName('id').Text := dm.cdsVenda.FieldByName('id_Venda').Text;
  dm.sdsComandoSql.ExecSQL();
  dm.cdsVenda.Close;
  dm.cdsVenda.Open;
end;

procedure TfrmListagemVenda.Speedbutton3Click(Sender: TObject);
begin
  inherited;
   dm.banco.StartTransaction(dm.transacao);
   op := 2;
   frmVenda.Caption:='Alterar Venda';
   frmVenda.showModal;
end;

end.
