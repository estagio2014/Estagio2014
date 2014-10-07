unit untListagemContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untListagemContas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmListagemContaPagar = class(TfrmListagemContas)
    btnRelatorio: TSpeedButton;
    cboPesquisar: TComboBox;
    btnBuscar: TSpeedButton;
    procedure btnBaixaClick(Sender: TObject);
    procedure dsListagemDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRelatorioClick(Sender: TObject);
    procedure cboPesquisarChange(Sender: TObject);
    procedure btnEstornoClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListagemContaPagar: TfrmListagemContaPagar;

implementation

{$R *.dfm}

uses untContasPagar, untDm, untRelFiltroContasPagar, untRelFiltroContasReceber;

procedure TfrmListagemContaPagar.btnBaixaClick(Sender: TObject);
begin
  inherited;
  {if (dm.cdsContasPagar.FieldByName('situacao').Text = 'Em aberto') then
  begin  }
  dm.banco.StartTransaction(dm.transacao);
  frmContasPagar.showModal;
 { end
  else begin
  MessageDlg('Erro! A Parcela selecionada est� Liquidada ou Estornada!', mtWarning,[mbOk],0);
  exit;
  end;   }
end;

procedure TfrmListagemContaPagar.btnEstornoClick(Sender: TObject);
begin
  inherited;
  if (dm.cdsContasPagar.FieldByName('situacao').Text = 'Estornado') then
  begin
    MessageDlg('Erro! O estorno da parcela j� foi realizado!', mtWarning,[mbOk],0);
    exit;
  end;
  if (MessageDlg('Deseja ESTORNAR esta Parcela?', mtConfirmation, [mbYes, mbNo],0)= mrYes) then
  begin
    dm.sdsComandoSql.CommandText:='update fatura set situacao = :situacao where id= :id_compra and num_parcela= :num_parcela';
    dm.sdsComandoSql.ParamByName('id_compra').Text := dm.cdsContasReceb.FieldByName('id_compra').Text;
	  dm.sdsComandoSql.ParamByName('num_parcela').Text := dm.cdsContasReceb.FieldByName('num_parcela').Text;
    dm.sdsComandoSql.ParamByName('situacao').Text := 'Estornado';
    dm.sdsComandoSql.ExecSQL();
    dm.sdsContasPagar.Close;
    dm.cdsContasPagar.Close;
    dm.sdsContasPagar.Open;
    dm.cdsContasPagar.Open;
  end;
end;

procedure TfrmListagemContaPagar.btnRelatorioClick(Sender: TObject);
begin
  inherited;
//  frmfiltroContasPagar.ShowModal();
    frmfiltroContasReceber.ShowModal();
end;

procedure TfrmListagemContaPagar.cboPesquisarChange(Sender: TObject);
begin
  inherited;
  if (cboPesquisar.Text = 'Data') then
  begin
    edtPesquisar.EditMask:= '99/99/9999';
    edtPesquisar.SetFocus;
    edtPesquisar.Clear;
  end
  else begin
    edtPesquisar.EditMask:= '';
    edtPesquisar.SetFocus;
    edtPesquisar.Clear;
  end;
end;

procedure TfrmListagemContaPagar.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  dm.cdsContasPagar.IndexFieldNames := Column.FieldName;
end;

procedure TfrmListagemContaPagar.dsListagemDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  edtTotalReg.Text := IntToStr(dm.cdsContasPagar.RecordCount);
end;

procedure TfrmListagemContaPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dm.sdsContasPagar.Close;
  dm.cdsContasPagar.Close;
  dm.cdsCompra.Close;
 // rdbNumConta.Checked := true;
end;

procedure TfrmListagemContaPagar.FormShow(Sender: TObject);
begin
  inherited;
  dm.sdsContasPagar.Open;
  dm.cdsContasPagar.Open;
  dm.cdsCompra.Open;
  cboPesquisar.ItemIndex:= -1;
  edtPesquisar.SetFocus;
end;



end.
