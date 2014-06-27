unit untListagemVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untListagemPrincipal, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmListagemVenda = class(TfrmListagem)
    SpeedButton5: TSpeedButton;
    procedure Speedbutton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  {edtTotaldeReg.Text := IntToStr(dm.cdsVenda.RecordCount);
  Speedbutton3.Enabled:=true;
  Speedbutton2.Enabled:=true;
  if (dm.cdsVenda.RecordCount = 0) then
  begin
    Speedbutton3.Enabled:=false;
    Speedbutton2.Enabled:=false;
  end;  }
end;

procedure TfrmListagemVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dm.cdsVenda.Close;
  dm.cdsCliente.Close;
  dm.cdsProduto.Close;
end;

procedure TfrmListagemVenda.FormShow(Sender: TObject);
begin
  inherited;
  dm.cdsVenda.Open;
  dm.cdsProduto.Open;
  dm.cdsCliente.Open;
end;

procedure TfrmListagemVenda.Speedbutton1Click(Sender: TObject);
begin
  inherited;
   op := 1;
   frmVenda.Caption:='Incluir Venda';
   frmVenda.showModal;
end;

end.