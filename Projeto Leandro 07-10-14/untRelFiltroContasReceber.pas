unit untRelFiltroContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untRelFiltro, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmfiltroContasReceber = class(TfrmRelFiltro)
    RadioGroup1: TRadioGroup;
    rdbData: TRadioButton;
    rdbContasReceber: TRadioButton;
    Label1: TLabel;
    edtDataInicio: TMaskEdit;
    edtDataFim: TMaskEdit;
    Label2: TLabel;
    btnConfirmar: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure rdbDataClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfiltroContasReceber: TfrmfiltroContasReceber;

implementation

{$R *.dfm}

uses untRelatorios, untDm;

procedure TfrmfiltroContasReceber.btnConfirmarClick(Sender: TObject);
begin
  inherited;
if(rdbData.Checked) then
  begin
    { if(edtDataInicio.Text > edtDataFim.Text) then
        begin
        ShowMessage('Data inválida, informe uma data correta!');
        edtDataInicio.Clear;
        edtDataFim.Clear;
        edtDataInicio.SetFocus;
        end
     else} if((edtDataInicio.Text = '  /  /    ') or (edtDataFim.Text = '  /  /    ')) then
        begin
        btnConfirmar.Enabled;
        ShowMessage('Informe corretamente as datas!');
        edtDataInicio.SetFocus;
        end
   { else if(StrToDate(edtDataFim.Text) > (date)) then
    begin
      MessageDlg('Data Final informada não pode ser maior do que a data atual!', mtInformation,[mbOk],0);
      edtDataFim.Text := '';
      edtDataFim.SetFocus;
      exit;
    end  }
    else
       begin
       with dm.SQLRelatorioContasPagarData do
        begin
        CommandText:='select * from fornecedor, compra, fatura where fornecedor.idfornecedor = compra.idfornecedor and compra.id_compra = fatura.id and data_venc between :datainicio  and :datafim';
        ParamByName('datainicio').Text:= edtDataInicio.Text;
        ParamByName('datafim').Text:= edtDataFim.Text;
      //  dm.SQLRelatorioFornecedorData.ExecSQL();
       dm.cdsFornecedor.Close;
       dm.cdsCompra.Close;
       dm.cdsFatura.Close;
       dm.cdsFornecedor.Open;
       dm.cdsCompra.Open;
       dm.cdsFatura.Open;
      end;

  //  Close;
        frmRelatorios.frxReportContasPagar.ShowReport();
end;
end;

if(rdbContasReceber.Checked) then
  begin
  //  frmRelatorios.frxReportLancamento.ShowReport();
  frmRelatorios.frxReportCompra.ShowReport();
  end;

end;

procedure TfrmfiltroContasReceber.FormShow(Sender: TObject);
begin
  inherited;
  rdbContasReceber.Checked := True;
end;

procedure TfrmfiltroContasReceber.rdbDataClick(Sender: TObject);
begin
  inherited;
if(rdbData.Checked) then
  begin
    edtDataInicio.Enabled:= True;
    edtDataFim.Enabled:=True;
  end;
end;

end.
