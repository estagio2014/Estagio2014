unit untRelFiltroVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untRelFiltro, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls;

type
  Tfrmfiltrovenda = class(TfrmRelFiltro)
    RadioGroup1: TRadioGroup;
    rdbData: TRadioButton;
    rdbVendas: TRadioButton;
    Label2: TLabel;
    edtDataFim: TMaskEdit;
    edtDataInicio: TMaskEdit;
    Label1: TLabel;
    btnConfirmar: TSpeedButton;
    procedure rdbDataClick(Sender: TObject);
    procedure rdbVendasClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfiltrovenda: Tfrmfiltrovenda;

implementation

{$R *.dfm}

uses untRelatorios, untDm;

procedure Tfrmfiltrovenda.btnConfirmarClick(Sender: TObject);
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
     with dm.SQLDataSetVendaData do
      begin
      CommandText:='select * from cliente inner join venda on cliente.idcli = venda.idcli where data_venda between  :datainicio  and :datafim';
      ParamByName('datainicio').Text:= edtDataInicio.Text;
      ParamByName('datafim').Text:= edtDataFim.Text;
    //  dm.SQLRelatorioFornecedorData.ExecSQL();
      dm.cdsFornecedor.Close;
      dm.cdsCompra.Close;
      dm.cdsFornecedor.Open;
      dm.cdsCompra.Open;
      end;

  //  Close;
        frmRelatorios.frxReportVendaData.ShowReport();
  end;
end;
if(rdbVendas.Checked) then
  begin
    frmRelatorios.frxReportVenda.ShowReport();
  end;
end;

procedure Tfrmfiltrovenda.rdbVendasClick(Sender: TObject);
begin
  inherited;
if(rdbVendas.Checked) then
  begin
    edtDataInicio.Enabled := False;
    edtDataFim.Enabled := False;

    edtDataInicio.Clear;
    edtDataFim.Clear;
  end;
end;

procedure Tfrmfiltrovenda.FormShow(Sender: TObject);
begin
  inherited;
  rdbVendas.Checked := True;
end;

procedure Tfrmfiltrovenda.rdbDataClick(Sender: TObject);
begin
  inherited;
if(rdbData.Checked) then
  begin
    edtDataInicio.Enabled := True;
    edtDataFim.Enabled := True;
  end;
end;

end.
