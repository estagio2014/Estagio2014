unit untRelFiltroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untRelFiltro, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls;

type
  Tfrmfiltroproduto = class(TfrmRelFiltro)
    RadioGroup1: TRadioGroup;
    rdbData: TRadioButton;
    rdbProdutos: TRadioButton;
    rdbProdutosMarca: TRadioButton;
    Label1: TLabel;
    edtDataInicio: TMaskEdit;
    edtDataFim: TMaskEdit;
    Label2: TLabel;
    btnConfirmar: TSpeedButton;
    procedure rdbDataClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure rdbProdutosClick(Sender: TObject);
    procedure rdbProdutosMarcaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfiltroproduto: Tfrmfiltroproduto;

implementation

{$R *.dfm}

uses untRelatorios, untDm;

procedure Tfrmfiltroproduto.btnConfirmarClick(Sender: TObject);
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
     else if(StrToDate(edtDataFim.Text) > (date)) then
        begin
        MessageDlg('Data Final informada n�o pode ser maior do que a data atual!', mtInformation,[mbOk],0);
        edtDataFim.Text := '';
        edtDataFim.SetFocus;
        exit;
    end
     else
     with dm.SQLDataSetProdutoData do
      begin
      CommandText:='select * from produto inner join marca on produto.id = marca.id and datacadastro between :datainicio and :datafim order by marca.descricao';
      ParamByName('datainicio').Text:= edtDataInicio.Text;
      ParamByName('datafim').Text:= edtDataFim.Text;
    //  dm.SQLDataSetClienteVenda.ExecSQL();
      dm.cdsProduto.Close;
      dm.cdsMarca.Close;
      dm.cdsProduto.Open;
      dm.cdsMarca.Open;
  //  Close;
        frmRelatorios.frxReportProdutoData.ShowReport();
     end;
end;

if(rdbProdutos.Checked) then
  begin
    frmRelatorios.frxReportProduto.ShowReport();
  end
else if(rdbProdutosMarca.Checked) then
  begin
    frmRelatorios.frxReportProduto2.ShowReport();
  end;
end;

procedure Tfrmfiltroproduto.FormShow(Sender: TObject);
begin
  inherited;
rdbProdutos.Checked := True;
end;

procedure Tfrmfiltroproduto.rdbDataClick(Sender: TObject);
begin
  inherited;
if(rdbData.Checked) then
  begin
    edtDataInicio.Enabled:=True;
    edtDataFim.Enabled:=True;
  end;
end;

procedure Tfrmfiltroproduto.rdbProdutosClick(Sender: TObject);
begin
  inherited;
  if(rdbProdutos.Checked) then
    begin
    edtDataInicio.Clear;
    edtDataFim.Clear;

    edtDataInicio.Enabled := False;
    edtDataFim.Enabled := False;
    end;
end;

procedure Tfrmfiltroproduto.rdbProdutosMarcaClick(Sender: TObject);
begin
  inherited;
  if(rdbProdutosMarca.Checked) then
    begin
    edtDataInicio.Clear;
    edtDataFim.Clear;

    edtDataInicio.Enabled := False;
    edtDataFim.Enabled := False;
    end;
end;

end.
