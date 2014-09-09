unit untLancamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmListagemLancamento = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    dsListagem: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    btnConfirmar: TSpeedButton;
    procedure btnVoltarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListagemLancamento: TfrmListagemLancamento;

implementation

{$R *.dfm}

uses untDm, untRelatorios, untListagemVenda;

procedure TfrmListagemLancamento.btnConfirmarClick(Sender: TObject);
begin
Close;
end;

procedure TfrmListagemLancamento.btnRelatorioClick(Sender: TObject);
begin
  frmRelatorios.frxReportLancamento.ShowReport();
end;

procedure TfrmListagemLancamento.btnVoltarClick(Sender: TObject);
begin
Close;
end;

procedure TfrmListagemLancamento.FormShow(Sender: TObject);
begin
if (frmListagemVenda.op = 2) then
begin
  Label11.Caption := dm.cdsVenda.FieldByName('id_venda').Text;
  Label12.Caption := dm.cdsVenda.FieldByName('vendedor').Text;
  Label13.Caption := dm.cdsVenda.FieldByName('nomeCli').Text;
  Label14.Caption := dm.cdsVenda.FieldByName('cpfCnpj').Text;
  Label15.Caption := dm.cdsVenda.FieldByName('tipo_pag').Text;
  Label16.Caption := dm.cdsVenda.FieldByName('forma_pag').Text;
  Label17.Caption := dm.cdsVenda.FieldByName('situacao').Text;
  Label18.Caption := dm.cdsVenda.FieldByName('data_venda').Text;
  Label19.Caption := dm.cdsVenda.FieldByName('desconto').Text;
  Label20.Caption := dm.cdsVenda.FieldByName('valorTotal').Text;


  dm.sdsItemVenda.CommandText:= 'select id_venda, produto.idProduto, produto.descricao, quantidade, preco, subtotal from item_venda inner join produto on item_venda.idProduto = produto.idProduto where id_venda = :id_Venda';
  dm.sdsItemVenda.ParamByName('id_Venda').Text := Label11.Caption;
  dm.sdsItemVenda.ExecSQL();
  dm.cdsItemVenda.Close;
  dm.cdsItemVenda.Open;
end;

end;

end.
