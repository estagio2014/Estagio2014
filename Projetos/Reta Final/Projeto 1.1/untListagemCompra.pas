unit untListagemCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untListagemPrincipal, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmListagemCompra = class(TfrmListagem)
    procedure Speedbutton1Click(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Speedbutton2Click(Sender: TObject);
    procedure Speedbutton3Click(Sender: TObject);
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

uses untCompra, untDm, untRelatorios;

procedure TfrmListagemCompra.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  edtTotaldeReg.Text := IntToStr(dm.cdsCompra.RecordCount);
  Speedbutton3.Enabled:=true;
  Speedbutton2.Enabled:=true;
  if (dm.cdsCompra.RecordCount = 0) then
  begin
    Speedbutton3.Enabled:=false;
    Speedbutton2.Enabled:=false;
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
end;

procedure TfrmListagemCompra.FormShow(Sender: TObject);
begin
  inherited;
  dm.cdsCompra.Open;
  dm.cdsFornecedor.Open;
  dm.cdsProduto.Open;
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
  if (MessageDlg('Deseja Cancelar esta Compra?', mtConfirmation, [mbYes, mbNo],0)= mrYes) then
  begin
    dm.sdsComandoSql.CommandText:='update compra set situacao = :situacao where id_compra = :id_compra';
    dm.sdsComandoSql.ParamByName('id_compra').Text := dm.cdsCompra.FieldByName('id_compra').Text;
    dm.sdsComandoSql.ParamByName('situacao').Text := 'CANCELADO';
    dm.sdsComandoSql.ExecSQL();
    dm.cdsCompra.Close;
    dm.cdsCompra.Open;
  end;
end;

procedure TfrmListagemCompra.Speedbutton3Click(Sender: TObject);
begin
  inherited;
  frmRelatorios.frxReportCompra.ShowReport();
end;

end.
