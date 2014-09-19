unit untRelFiltroFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untRelFiltro, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  Tfrmfiltrofornecedor = class(TfrmRelFiltro)
    RadioGroup1: TRadioGroup;
    rdbData: TRadioButton;
    rdbFornecedores: TRadioButton;
    edtDataFim: TMaskEdit;
    edtDataInicio: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnConfirmar: TSpeedButton;
    procedure rdbDataClick(Sender: TObject);
    procedure rdbFornecedoresClick(Sender: TObject);
    procedure rdbFornecedorCompraClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfiltrofornecedor: Tfrmfiltrofornecedor;

implementation

{$R *.dfm}

uses untRelatorios, untDm;

procedure Tfrmfiltrofornecedor.btnConfirmarClick(Sender: TObject);
begin
  inherited;
if(rdbData.Checked) then
begin
  if(edtDataInicio.Text > edtDataFim.Text) then
    begin
      ShowMessage('Data inv�lida, informe uma data correta!');
      edtDataInicio.Clear;
      edtDataFim.Clear;
      edtDataInicio.SetFocus;
    end
  else if((edtDataInicio.Text = '  /  /    ') or (edtDataFim.Text = '  /  /    ')) then
    begin
         btnConfirmar.Enabled;
         ShowMessage('Informe corretamente as datas!');
         edtDataInicio.SetFocus;
    end
else
   begin
     with dm.SQLRelatorioFornecedorData do
      begin
      CommandText:='select * from fornecedor inner join compra on fornecedor.idfornecedor = compra.idfornecedor where data_compra between :datainicio  and :datafim';
      ParamByName('datainicio').Text:= edtDataInicio.Text;
      ParamByName('datafim').Text:= edtDataFim.Text;
    //  dm.SQLRelatorioFornecedorData.ExecSQL();
      dm.cdsFornecedor.Close;
      dm.cdsCompra.Close;
      dm.cdsFornecedor.Open;
      dm.cdsCompra.Open;
      end;

  //  Close;
        frmRelatorios.frxReportFornecedorData.ShowReport();
end;
end;

if(rdbFornecedores.Checked) then
  begin
    frmRelatorios.frxReportFornecedor.ShowReport();
  end;
end;

procedure Tfrmfiltrofornecedor.rdbDataClick(Sender: TObject);
begin
  inherited;
if(rdbData.Checked) then
  begin
    edtDataInicio.Enabled:=True;
    edtDataFim.Enabled:=True;
  end;
end;

procedure Tfrmfiltrofornecedor.rdbFornecedorCompraClick(Sender: TObject);
begin
  inherited;
{if(rdbFornecedorCompra.Checked) then
  begin
    edtDataInicio.Enabled:=False;
    edtDataFim.Enabled:=False;

    edtDataInicio.Clear;
    edtDataFim.Clear;
  end; }
end;

procedure Tfrmfiltrofornecedor.rdbFornecedoresClick(Sender: TObject);
begin
  inherited;
if(rdbFornecedores.Checked)then
  begin
    edtDataInicio.Enabled:=False;
    edtDataFim.Enabled:=False;

    edtDataInicio.Clear;
    edtDataFim.Clear;
  end;
end;

end.
