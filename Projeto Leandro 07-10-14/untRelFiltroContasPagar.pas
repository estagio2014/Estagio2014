unit untRelFiltroContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untRelFiltro, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmfiltroContasPagar = class(TfrmRelFiltro)
    RadioGroup1: TRadioGroup;
    rdbData: TRadioButton;
    rdbContasPagar: TRadioButton;
    Label1: TLabel;
    edtDataInicio: TMaskEdit;
    edtDataFim: TMaskEdit;
    Label2: TLabel;
    btnConfirmar: TSpeedButton;
    procedure rdbDataClick(Sender: TObject);
    procedure rdbContasPagarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfiltroContasPagar: TfrmfiltroContasPagar;

implementation

{$R *.dfm}

uses untDm, untRelatorios;

procedure TfrmfiltroContasPagar.btnConfirmarClick(Sender: TObject);
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
    else if(StrToDate(edtDataFim.Text) < (date)) then
    begin
      MessageDlg('Data Final informada não pode ser menor do que a data atual!', mtInformation,[mbOk],0);
      edtDataFim.Text := '';
      edtDataFim.SetFocus;
      exit;
      end
  else
   begin
     with dm.SQLRelatorioFaturaData do
      begin
      CommandText:='select * from cliente inner join fatura on cliente.idcli = fatura.id where data_venc between  :datainicio  and :datafim';
      ParamByName('datainicio').Text:= edtDataInicio.Text;
      ParamByName('datafim').Text:= edtDataFim.Text;
    //  dm.SQLDataSetClienteVenda.ExecSQL();
      dm.cdsCliente.Close;
      dm.cdsFatura.Close;
      dm.cdsCliente.Open;
      dm.cdsFatura.Open;
      end;
    //  Close;
        frmRelatorios.frxReportFaturaData.ShowReport();
  end;
end;
if(rdbContasPagar.Checked) then
  begin
       frmRelatorios.frxReportFatura.ShowReport();
  end;

end;

procedure TfrmfiltroContasPagar.FormShow(Sender: TObject);
begin
  inherited;
  rdbContasPagar.Checked := True;
end;

procedure TfrmfiltroContasPagar.rdbContasPagarClick(Sender: TObject);
begin
  inherited;
if(rdbContasPagar.Checked) then
  begin
    edtDataInicio.Enabled:=False;
    edtDataFim.Enabled:=False;

    edtDataInicio.Clear;
    edtDataFim.Clear;
  end;
end;

procedure TfrmfiltroContasPagar.rdbDataClick(Sender: TObject);
begin
  inherited;
if(rdbData.Checked) then
  begin
    edtDataInicio.Enabled:= True;
    edtDataFim.Enabled:=True;
  end;
end;

end.
