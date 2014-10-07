unit untRelFiltroCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untRelFiltro, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls;

type
  Tfrmfiltrocompra = class(TfrmRelFiltro)
    RadioGroup1: TRadioGroup;
    rdbData: TRadioButton;
    rdbCompras: TRadioButton;
    Label1: TLabel;
    edtDataInicio: TMaskEdit;
    edtDataFim: TMaskEdit;
    Label2: TLabel;
    btnConfirmar: TSpeedButton;
    procedure rdbDataClick(Sender: TObject);
    procedure rdbComprasClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfiltrocompra: Tfrmfiltrocompra;

implementation

{$R *.dfm}

uses untRelatorios, untDm;

procedure Tfrmfiltrocompra.btnConfirmarClick(Sender: TObject);
begin
  inherited;
if(rdbData.Checked) then
  begin
  if(edtDataInicio.Text > edtDataFim.Text) then
    begin
    ShowMessage('Data inválida, informe uma data correta!');
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
  else if(StrToDate(edtDataFim.Text) > (date)) then
    begin
    MessageDlg('Data Final informada não pode ser maior do que a data atual!', mtInformation,[mbOk],0);
    edtDataFim.Text := '';
    edtDataFim.SetFocus;
    exit;
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
  if(rdbCompras.Checked) then
  begin
    frmRelatorios.frxReportCompra.ShowReport();
    //ShowMessage('Teste');
  end;
end;
procedure Tfrmfiltrocompra.FormShow(Sender: TObject);
begin
  inherited;
  rdbCompras.Checked := True;
end;

procedure Tfrmfiltrocompra.rdbComprasClick(Sender: TObject);
begin
  inherited;
if(rdbCompras.Checked) then
  begin
    edtDataInicio.Enabled :=False;
    edtDataFim.Enabled :=False;

    edtDataInicio.Clear;
    edtDataFim.Clear;
  end;
end;

procedure Tfrmfiltrocompra.rdbDataClick(Sender: TObject);
begin
  inherited;
if(rdbData.Checked) then
  begin
    edtDataInicio.Enabled:=True;
    edtDataFim.Enabled:=True;
  end;
end;

end.
