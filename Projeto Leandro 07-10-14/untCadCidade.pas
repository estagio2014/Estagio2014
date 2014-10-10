unit untCadCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPrincipal, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask;

type
  TfrmCadCidade = class(TfrmCadPrincipal)
    edtIdCidade: TEdit;
    edtNomeCidade: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cboUF: TComboBox;
    edtDataCadastro: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    procedure btnConfirmClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNomeCidadeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCidade: TfrmCadCidade;

implementation

{$R *.dfm}

uses untListagemCidade, untDm;

procedure TfrmCadCidade.btnConfirmClick(Sender: TObject);
begin
  inherited;
  if Trim(edtNomeCidade.Text) = '' then
    begin
    MessageDlg('Campo Nome Obrigat�rio!', mtError,[mbOk],0);
    edtNomeCidade.SetFocus;
    exit;
    end;
  if Trim(cboUF.Text) = '' then
    begin
    MessageDlg('Campo UF Obrigat�rio!', mtError,[mbOk],0);
    cboUF.SetFocus;
    exit;
    end;
  if dm.cdsCidade.Locate('nome_cid', edtNomeCidade.Text,[])and dm.cdsCidade.Locate('uf', cboUF.Text,[]) then
    begin
    MessageDlg('CIDADE j� cadastrada! Favor incluir outra!', mtError,[mbOk],0);
    edtNomeCidade.SetFocus;
    exit;
  end else;
  if (frmListagemCidade.op = 1) then
  begin
  dm.sdsComandoSql.CommandText :='insert into cidade values (seqCidade.nextval,:p2, :p3, :p4)';
  dm.sdsComandoSql.ParamByName('p2').Text := edtNomeCidade.Text;
  dm.sdsComandoSql.ParamByName('p3').Text := cboUF.Text;
  dm.sdsComandoSql.ParamByName('p4').Text := edtDataCadastro.Text;
  dm.sdsComandoSql.ExecSQL();
  dm.cdsCidade.Close;
  dm.cdsCidade.Open;
  close;
  end;
  if (frmListagemCidade.op = 2) then
  begin
  dm.sdsComandoSql.CommandText := 'update cidade set nome_cid =:p2,uf = :p3 where id_cid = :p1';
  dm.sdsComandoSql.ParamByName('p1').Text := edtIdCidade.Text;
  dm.sdsComandoSql.ParamByName('p2').Text := edtNomeCidade.Text;
  dm.sdsComandoSql.ParamByName('p3').Text := cboUF.Text;
  dm.sdsComandoSql.ExecSQL();
  dm.cdsCidade.Close;
  dm.cdsCidade.Open;
  Close;
  end;
end;

procedure TfrmCadCidade.edtNomeCidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['0'..'9', ',', '.', ';', ':', '[', ']', '{', '}', '+', '-', '*', '*', '/', '�', '�', '!', '@', '#', '$',
'%', '�', '(', ')', '�', '_', '?', '\', '�', '�', '�', '�', '�', '�']) then
begin
    key := #0;
    messageDlg('O Caracter informado � inv�lido', mtInformation,[mbOk],0);
end;
end;

procedure TfrmCadCidade.FormShow(Sender: TObject);
begin
  inherited;
   if frmListagemCidade.op =1 then
   begin
     edtDataCadastro.Text := DateToStr(date);
     edtIdCidade.Clear;
     edtNomeCidade.Clear;
     cboUF.ItemIndex:= -1;
     edtNomeCidade.SetFocus;
   end;
   if frmListagemCidade.op=2 then
   begin
     frmCadCidade.edtIdCidade.Text := dm.cdsCidade.FieldByName('id_cid').Text;
     frmCadCidade.edtNomeCidade.Text := dm.cdsCidade.FieldByName('nome_cid').Text;
     cboUf.ItemIndex := (cboUF.Items.IndexOf(dm.cdsCidade.FieldByName('uf').Text));
     frmCadCidade.edtDataCadastro.Text := dm.cdsCidade.FieldByName('datacadastro').Text;
   end;

end;

end.