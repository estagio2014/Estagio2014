unit untCadFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,System.UITypes ,System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPrincipal, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.ComCtrls,StrUtils;

type
  TfrmCadFornecedor = class(TfrmCadPrincipal)
    GroupBox1: TGroupBox;
    ID: TLabel;
    edtIdFornecedor: TEdit;
    Label1: TLabel;
    edtNomeFan: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtCnpj: TMaskEdit;
    Label4: TLabel;
    edtInscricaoEst: TEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    edtEnderecoFor: TEdit;
    Label6: TLabel;
    edtBairroFor: TEdit;
    Label7: TLabel;
    edtCEPFor: TMaskEdit;
    Label8: TLabel;
    dsCidade: TDataSource;
    dblCidade: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    edtNomeContato: TEdit;
    Label10: TLabel;
    edtTelefoneFor: TMaskEdit;
    Label11: TLabel;
    edtCelularFor: TMaskEdit;
    Label12: TLabel;
    edtEmailFor: TEdit;
    GroupBox4: TGroupBox;
    Label13: TLabel;
    edtMidiaSoc: TEdit;
    mmObs: TMemo;
    Label14: TLabel;
    Label15: TLabel;
    edtRazao: TEdit;
    Label18: TLabel;
    SpeedButton1: TSpeedButton;
    Label20: TLabel;
    edtDataCadastro: TMaskEdit;
    Label19: TLabel;
    Label17: TLabel;
    rdbAtivo: TRadioButton;
    rdbInativo: TRadioButton;
    edtUf: TEdit;
    edtFundacao: TMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure edtNomeContatoKeyPress(Sender: TObject; var Key: Char);
    procedure dblCidadeClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure edtFundacaoExit(Sender: TObject);
    procedure edtEmailForExit(Sender: TObject);
    procedure edtCnpjExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    function ValidaCNPJ(numCNPJ: string): boolean;
  public
    { Public declarations }
    function ValidarEMail(aStr: string): boolean;
  end;

var
  frmCadFornecedor: TfrmCadFornecedor;

implementation

{$R *.dfm}

uses untListagemFornecedor, untDm, untListagemCidade;

procedure TfrmCadFornecedor.btnConfirmClick(Sender: TObject);
begin
  inherited;
  try
    if Trim(edtNomeFan.Text) = '' then
    begin
      MessageDlg('Campo NOME FANTASIA Obrigatório!', mtError,[mbOk],0);
      edtNomeFan.SetFocus;
      exit;
    end;
    if Trim(edtRazao.Text) = '' then
    begin
      MessageDlg('Campo RAZÃO SOCIAL Obrigatório!', mtError,[mbOk],0);
      edtRazao.SetFocus;
      exit;
    end;
    if edtCnpj.Text = '  .   .   /    -  ' then
    begin
      MessageDlg('Campo CNPJ Obrigatório!', mtError,[mbOk],0);
      edtCnpj.SetFocus;
      exit;
    end;
    if Trim(edtInscricaoEst.Text) = '' then
    begin
      MessageDlg('Campo INSC ESTADUAL Obrigatório!', mtError,[mbOk],0);
      edtInscricaoEst.SetFocus;
      exit;
    end;
    if edtFundacao.Text = '  /  /    ' then
    begin
      MessageDlg('Campo DataNasc Obrigatório!', mtError,[mbOk],0);
      edtFundacao.SetFocus;
      exit;
    end;
    if Trim(edtEnderecoFor.Text)= '' then
    begin
      MessageDlg('Campo ENDEREÇO Obrigatório!', mtError,[mbOk],0);
      edtEnderecoFor.SetFocus;
      exit;
    end;
    if Trim(edtBairroFor.Text) = '' then
    begin
      MessageDlg('Campo BAIRRO Obrigatório!', mtError,[mbOk],0);
      edtBairroFor.SetFocus;
      exit;
    end;
    if edtCEPFor.text = '     -   ' then
    begin
      MessageDlg('Campo CEP Obrigatório!', mtError,[mbOk],0);
      edtCEPFor.SetFocus;
      exit;
    end;
    if Trim(dblCidade.Text)= '' then
    begin
      MessageDlg('Campo CIDADE Obrigatório!', mtError,[mbOk],0);
      dblCidade.SetFocus;
      exit;
    end;
    if Trim(edtNomeContato.Text)= '' then
    begin
      MessageDlg('Campo REPRESENTANTE Obrigatório!', mtError,[mbOk],0);
      edtNomeContato.SetFocus;
      exit;
    end;
    if edtTelefoneFor.Text = '(  )    -    ' then
    begin
      MessageDlg('Campo TELEFONE Obrigatório!', mtError,[mbOk],0);
      edtTelefoneFor.SetFocus;
      exit;
    end;
    if edtCelularFor.Text = '(  )    -    ' then
    begin
      MessageDlg('Campo CELULAR Obrigatório!', mtError,[mbOk],0);
      edtCelularFor.SetFocus;
      exit;
    end;
  if (frmListagemFornecedor.op = 1) then
    begin
      dm.sdsComandoSql.CommandText:='INSERT into fornecedor values (seqFornecedor.nextval, :id_cid, :nomeFant, :razaoSocial, :Cnpj, :InscEst, :DataFund,'
      + ':endereco, :bairro, :cep, :repres, :telefone, :celular, :email, :site, :observacoes, :dataCadastro, :situacao )';
      with dm.sdsComandoSql do
      begin
        ParamByName('id_cid').AsInteger := dblCidade.KeyValue;
        ParamByName('nomeFant').Text := edtNomeFan.Text;
        ParamByName('razaoSocial').Text := edtRazao.Text;
        ParamByName('Cnpj').Text := edtCnpj.Text;
        ParamByName('InscEst').Text := edtInscricaoEst.Text;
        ParamByName('dataFund').Text := edtFundacao.Text;
        ParamByName('endereco').Text := edtEnderecoFor.Text;
        ParamByName('bairro').Text := edtBairroFor.Text;
        ParamByName('cep').Text := edtCEPFor.Text;
        ParamByName('repres').Text := edtNomeContato.Text;
        ParamByName('telefone').Text := edtTelefoneFor.Text;
        ParamByName('celular').Text := edtCelularFor.Text;
        ParamByName('email').Text := edtEmailFor.Text;
        ParamByName('site').Text := edtMidiaSoc.Text;
        ParamByName('observacoes').Text := mmObs.Text;
        ParamByName('dataCadastro').Text := edtDataCadastro.Text;
        if rdbAtivo.Checked = true then
        begin
          dm.sdsComandoSql.ParamByName('situacao').AsString:='A';
        end
        else
        begin
          rdbInativo.Checked := true;
          dm.sdsComandoSql.ParamByName('situacao').AsString:='I';
        end;

      end;
      dm.sdsComandoSql.ExecSQL();
      MessageDlg('Fornecedor cadastrado com Sucesso!', mtInformation,[mbOk],0);
      dm.cdsFornecedor.Close;
      dm.cdsFornecedor.Open;
      Close;
    end;

    Except
     Application.MessageBox('O CNPJ cadastrado já existe!','Alerta',0);
  end;
    if frmListagemFornecedor.op = 2  then
    begin
      dm.sdsComandoSql.CommandText:='UPDATE fornecedor set id_cid = :id_cid ,nomeFant_ = :nomeFant, RazaoSocial = :razaoSocial, Cnpj = :Cnpj, InscEst = :InscEst, DataFund = :DataFund,'
      + 'endereco = :endereco, bairro = :bairro, cep = :cep, repres = :repres, telefone = :telefone, celular = :celular, email = :email, site = :site, observacoes = :observacoes, dataCadastro_ = :dataCadastro,'
      + 'situacao = :situacao WHERE idfornecedor = :idFor';
      with dm.sdsComandoSql do
      begin
        ParamByName('idFor').Text := edtIdFornecedor.Text;
        ParamByName('id_cid').AsInteger := dblCidade.KeyValue;
        ParamByName('nomeFant').Text := edtNomeFan.Text;
        ParamByName('razaoSocial').Text := edtRazao.Text;
        ParamByName('Cnpj').Text := edtCnpj.Text;
        ParamByName('InscEst').Text := edtInscricaoEst.Text;
        ParamByName('dataFund').Text := edtFundacao.Text;
        ParamByName('endereco').Text := edtEnderecoFor.Text;
        ParamByName('bairro').Text := edtBairroFor.Text;
        ParamByName('cep').Text := edtCEPFor.Text;
        ParamByName('repres').Text := edtNomeContato.Text;
        ParamByName('telefone').Text := edtTelefoneFor.Text;
        ParamByName('celular').Text := edtCelularFor.Text;
        ParamByName('email').Text := edtEmailFor.Text;
        ParamByName('site').Text := edtMidiaSoc.Text;
        ParamByName('observacoes').Text := mmObs.Text;
        ParamByName('dataCadastro').Text := edtDataCadastro.Text;
        if rdbAtivo.Checked = true then
        begin
          dm.sdsComandoSql.ParamByName('situacao').AsString:='A';
        end
        else
        begin
          rdbInativo.Checked := true;
          dm.sdsComandoSql.ParamByName('situacao').AsString:='I';
        end;
      end;
      dm.sdsComandoSql.ExecSQL();
      MessageDlg('Alteração realizada com Sucesso!', mtInformation,[mbOk],0);
      dm.cdsFornecedor.Close;
      dm.cdsFornecedor.Open;
      Close;
    end;
end;

procedure TfrmCadFornecedor.dblCidadeClick(Sender: TObject);
begin
  inherited;
edtUf.Text := dm.cdsCidade.FieldByName('uf').Text;
end;

procedure TfrmCadFornecedor.edtCnpjExit(Sender: TObject);
begin
  inherited;
    if edtCnpj.Text<>'  .   .   /    -  ' then
    begin
      if validacnpj(edtCnpj.text) = false then
      begin
        MessageDlg('CNPJ informado está incorreto ou não é válido!',mtError, [mbOk],0);
        edtCnpj.SetFocus;
        exit;
      end;
    end;
end;

procedure TfrmCadFornecedor.edtEmailForExit(Sender: TObject);
begin
  inherited;
    if not(trim(edtEmailFor.Text) = '') then
    begin
      if not(ValidarEMail(edtEmailFor.Text)) then
      begin
        MessageDlg('O campo EMAIL informado está incorreto!', mtInformation,[mbOk],0);
        edtEmailFor.SetFocus;
        exit;
      end;
    end;
end;

procedure TfrmCadFornecedor.edtFundacaoExit(Sender: TObject);
begin
  inherited;
    if (StrToDate(edtFundacao.Text)>(date)) then
    begin
        MessageDlg('O campo Data Fundação Informado não pode ser maior do que a data atual!', mtInformation,[mbOk],0);
        edtFundacao.SetFocus;
        exit;
    end;
end;

procedure TfrmCadFornecedor.edtNomeContatoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if (key in ['0'..'9', ',', '.', ';', ':', '[', ']', '{', '}', '+', '-', '*', '*', '/', 'ª', 'º', '!', '@', '#', '$','%', '¨', '(', ')', '§', '_', '?', '\', '¹', '²', '³', '£', '¢', '¬']) then
begin
    key := #0;
    messageDlg('O Caracter informado é inválido', mtInformation,[mbOk],0);
end;
end;

procedure TfrmCadFornecedor.FormShow(Sender: TObject);
begin
  inherited;
    if frmListagemFornecedor.op = 1 then
    begin
    edtDataCadastro.Text:= DateToStr(date);
    edtFundacao.Text := DateToStr(date);
    edtIdFornecedor.Clear;
    edtNomeFan.Clear;
    edtNomeFan.SetFocus;
    edtRazao.Clear;
    edtCnpj.Clear;
    edtInscricaoEst.Clear;
    edtEnderecoFor.Clear;
    edtBairroFor.Clear;
    edtCEPFor.Clear;
    dblCidade.KeyValue:= -1;
    edtUf.Clear;
    edtNomeContato.Clear;
    edtTelefoneFor.Clear;
    edtCelularFor.Clear;
    edtEmailFor.Clear;
    edtMidiaSoc.Clear;
    mmObs.Clear;
    rdbAtivo.Checked:=True;
    end;
    if frmListagemFornecedor.op = 2 then
    begin
    edtIdFornecedor.Text := dm.cdsFornecedor.FieldByName('idFornecedor').Text;
    edtNomeFan.Text := dm.cdsFornecedor.FieldByName('nomeFant_').Text;
    edtRazao.Text := dm.cdsFornecedor.FieldByName('razaoSocial').Text;
    edtCnpj.Text := dm.cdsFornecedor.FieldByName('Cnpj').Text;
    edtInscricaoEst.Text := dm.cdsFornecedor.FieldByName('InscEst').Text;
    edtFundacao.Text := dm.cdsFornecedor.FieldByName('dataFund').Text;
    edtEnderecoFor.Text := dm.cdsFornecedor.FieldByName('endereco').Text;
    edtBairroFor.Text := dm.cdsFornecedor.FieldByName('bairro').Text;
    edtCEPFor.Text := dm.cdsFornecedor.FieldByName('cep').Text;
    dblCidade.KeyValue := dm.cdsFornecedor.FieldByName('id_cid').AsInteger;
    edtUf.Text := dm.cdsCidade.FieldByName('uf').Text;
    edtNomeContato.Text:= dm.cdsFornecedor.FieldByName('repres').Text;
    edtTelefoneFor.Text := dm.cdsFornecedor.FieldByName('telefone').Text;
    edtCelularFor.Text := dm.cdsFornecedor.FieldByName('celular').Text;
    edtEmailFor.Text := dm.cdsFornecedor.FieldByName('email').Text;
    edtMidiaSoc.Text := dm.cdsFornecedor.FieldByName('site').Text;
    mmObs.Text := dm.cdsFornecedor.FieldByName('observacoes').Text;
    edtDataCadastro.Text := dm.cdsFornecedor.FieldByName('dataCadastro_').Text;
    if (dm.cdsFornecedor.FieldByName('situacao').Text = 'A') then
        begin
        rdbAtivo.Checked := True;
        end
    else
    begin
      if(dm.cdsCliente.FieldByName('situacao').Text = 'I') then
        begin
        rdbInativo.Checked := True;
        end;
    end;
    end;
end;

procedure TfrmCadFornecedor.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  frmListagemCidade.op := 3;
  frmListagemCidade.showModal;
  dm.cdsCidade.Open;
end;

function TfrmCadFornecedor.ValidaCNPJ(numCNPJ: string): boolean;
var
  cnpj: string;
  dg1, dg2: integer;
  x, total: integer;
  ret: boolean;
begin
     ret:=False;
cnpj:='';
//Analisa os formatos
if Length(numCNPJ) = 18 then
    if (Copy(numCNPJ,3,1) + Copy(numCNPJ,7,1) + Copy(numCNPJ,11,1) + Copy(numCNPJ,16,1) = '../-') then
        begin
        cnpj:=Copy(numCNPJ,1,2) + Copy(numCNPJ,4,3) + Copy(numCNPJ,8,3) + Copy(numCNPJ,12,4) + Copy(numCNPJ,17,2);
        ret:=True;
        end;
if Length(numCNPJ) = 14 then
    begin
    cnpj:=numCNPJ;
    ret:=True;
    end;
//Verifica
if ret then
    begin
    try
        //1° digito
        total:=0;
        for x:=1 to 12 do
            begin
            if x < 5 then
                Inc(total, StrToInt(Copy(cnpj, x, 1)) * (6 - x))
            else
                Inc(total, StrToInt(Copy(cnpj, x, 1)) * (14 - x));
            end;
        dg1:=11 - (total mod 11);
        if dg1 > 9 then
            dg1:=0;
        //2° digito
        total:=0;
        for x:=1 to 13 do
            begin
            if x < 6 then
                Inc(total, StrToInt(Copy(cnpj, x, 1)) * (7 - x))
            else
                Inc(total, StrToInt(Copy(cnpj, x, 1)) * (15 - x));
            end;
        dg2:=11 - (total mod 11);
        if dg2 > 9 then
            dg2:=0;
        //Validação final
        if (dg1 = StrToInt(Copy(cnpj, 13, 1))) and (dg2 = StrToInt(Copy(cnpj, 14, 1))) then
            ret:=True
        else
            ret:=False;
    except
        ret:=False;
        end;
    //Inválidos
    case AnsiIndexStr(cnpj,['00000000000000','11111111111111','22222222222222','33333333333333','44444444444444',
   '55555555555555','66666666666666','77777777777777','88888888888888','99999999999999']) of
        0..9:   ret:=False;

        end;
    end;
ValidaCNPJ:=ret;
end;
function TfrmCadFornecedor.ValidarEMail(aStr: string): boolean;
begin
  aStr := Trim(UpperCase(aStr));
  if Pos('@', aStr) > 1 then
  begin
    Delete(aStr, 1, Pos('@', aStr));
    Result := (length(aStr) > 0) and (Pos('.', aStr) > 2);
  end
  else
    Result := false;
end;
end.
