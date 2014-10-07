unit untCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,System.UITypes, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPrincipal, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls, Data.DB, Vcl.ComCtrls,StrUtils;

type
  TfrmCadCliente = class(TfrmCadPrincipal)
    GroupBox2: TGroupBox;
    Label9: TLabel;
    edtEndereco: TEdit;
    Label10: TLabel;
    edtBairro: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    GroupBox3: TGroupBox;
    edtCep: TMaskEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edtTelefone: TMaskEdit;
    edtCelular: TMaskEdit;
    edtEmail: TEdit;
    edtMidiaSocial: TEdit;
    dblCidade: TDBLookupComboBox;
    GroupBox4: TGroupBox;
    Label17: TLabel;
    mmObs: TMemo;
    dsCidade: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    edtIdCli: TEdit;
    edtNomeCli: TEdit;
    edtRg: TEdit;
    edtCpf: TMaskEdit;
    cboSexo: TComboBox;
    Label19: TLabel;
    cboEstadoCivil: TComboBox;
    Label21: TLabel;
    rdbPessoaFisica: TRadioButton;
    rdbPessoaJuridica: TRadioButton;
    edtApelido: TEdit;
    Label22: TLabel;
    btnLocalizar: TSpeedButton;
    rdbAtivo: TRadioButton;
    rdbInativo: TRadioButton;
    Label23: TLabel;
    Label7: TLabel;
    Label20: TLabel;
    edtDataCadastro: TMaskEdit;
    edtUf: TEdit;
    edtDataNasc: TMaskEdit;
    procedure btnConfirmClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure rdbPessoaFisicaClick(Sender: TObject);
    procedure rdbPessoaJuridicaClick(Sender: TObject);
    procedure edtCpfExit(Sender: TObject);
    procedure edtNomeCliKeyPress(Sender: TObject; var Key: Char);
    procedure edtApelidoKeyPress(Sender: TObject; var Key: Char);
    procedure dblCidadeClick(Sender: TObject);
    procedure edtDataNascExit(Sender: TObject);
    procedure edtEmailExit(Sender: TObject);
  private
    { Private declarations }
    function Cpf(CPF_Text: string): boolean;
    Function ValidaCNPJ(numCNPJ: string): boolean;
  public
    { Public declarations }
    function ValidarEMail(aStr: string): boolean;
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

{$R *.dfm}

uses untListagemCliente, untDm, untListagemCidade;

procedure TfrmCadCliente.btnConfirmClick(Sender: TObject);
begin
  inherited;
  try
  if rdbPessoaFisica.Checked = true then
  begin
  if Trim(edtNomeCli.Text)= '' then
  begin
  MessageDlg('Campo Nome Obrigatório!', mtError,[mbOk],0);
  edtNomeCli.SetFocus;
  exit;
  end;
  if edtCpf.Text = '   .   .   -  ' Then
  begin
  MessageDlg('Campo CPF Obrigatório!', mtError,[mbOk],0);
  edtCpf.SetFocus;
  exit;
  end;
  if Trim(edtRg.Text)= '' then
  begin
  MessageDlg('Campo RG Obrigatório!', mtError,[mbOk],0);
  edtRg.SetFocus;
  exit;
  end;
  if edtDataNasc.Text = '  /  /    ' then
  begin
  MessageDlg('Campo DataNasc Obrigatório!', mtError,[mbOk],0);
  edtDataNasc.SetFocus;
  exit;
  end;
  if Trim(cboEstadoCivil.Text)= '' then
  begin
  MessageDlg('Campo ESTADO CIVIL Obrigatório!', mtError,[mbOk],0);
  cboEstadoCivil.SetFocus;
  exit;
  end;
  if Trim(cboSexo.Text)= '' then
  begin
  MessageDlg('Campo Gênero Obrigatório!', mtError,[mbOk],0);
  cboSexo.SetFocus;
  exit;
  end;
  end //end do rdbPessoa Fisica
  else if rdbPessoaJuridica.Checked = true then
  begin
  if Trim(edtNomeCli.Text) = '' then
  begin
  MessageDlg('Campo NOME FANTASIA Obrigatório!', mtError,[mbOk],0);
  edtNomeCli.SetFocus;
  exit;
  end;
  if Trim(edtApelido.Text) = '' then
  begin
  MessageDlg('Campo RAZÃO SOCIAL Obrigatório!', mtError,[mbOk],0);
  edtApelido.SetFocus;
  exit;
  end;
  if (edtCpf.Text = '  .   .   /    -  ') then
  begin
  MessageDlg('Campo CNPJ Obrigatório!', mtError,[mbOk],0);
  edtCpf.SetFocus;
  exit;
  end;
  if Trim(edtRg.Text) = '' then
  begin
  MessageDlg('Campo INSC ESTADUAL Obrigatório!', mtError,[mbOk],0);
  edtRg.SetFocus;
  exit;
  end;
  end; // end do rdbPessoa Jurídica
  if Trim(edtEndereco.Text)= '' then
  begin
  MessageDlg('Campo ENDEREÇO Obrigatório!', mtError,[mbOk],0);
  edtEndereco.SetFocus;
  exit;
  end;
  if Trim(edtBairro.Text) = '' then
  begin
  MessageDlg('Campo BAIRRO Obrigatório!', mtError,[mbOk],0);
  edtBairro.SetFocus;
  exit;
  end;
  if edtCep.text = '     -   ' then
  begin
  MessageDlg('Campo CEP Obrigatório!', mtError,[mbOk],0);
  edtCep.SetFocus;
  exit;
  end;
  if Trim(dblCidade.Text)= '' then
  begin
  MessageDlg('Campo CIDADE Obrigatório!', mtError,[mbOk],0);
  dblCidade.SetFocus;
  exit;
  end;
  if (edtTelefone.Text = '(  )    -    ')then
  begin
  MessageDlg('Campo TELEFONE Obrigatório!', mtError,[mbOk],0);
  edtTelefone.SetFocus;
  exit;
  end;
  if (frmListagemCliente.op = 1) then
  begin
  dm.sdsComandoSql.CommandText := 'INSERT into cliente values(seqCliente.nextval,:id_cid, :nomeCli, :apelido, :tipoPessoa, :cpfCnpj, :rg, :dataNasc, :estadoCivil, :genero, :endereco, :bairro, :cep, :tel, :cel, :email, :midSocial, :obs, :dataCad, :situacao)';
  with dm.sdsComandoSql do
  begin
  ParamByName('id_cid').AsInteger := dblCidade.KeyValue;
  ParamByName('nomeCli').Text := edtNomeCli.Text;
  ParamByName('Apelido').Text := edtApelido.Text;
  if rdbPessoaFisica.Checked = true then
  begin
  ParamByName('tipoPessoa').Text := 'Fisica';
  end
  else begin
 // rdbPessoaJuridica.Checked := true;
  ParamByName('tipoPessoa').Text := 'Juridica';
  end;
  ParamByName('cpfCnpj').Text := edtCpf.Text;
  ParamByName('rg').Text := edtRg.Text;
  ParamByName('dataNasc').Text := edtDataNasc.Text;
  ParamByName('estadoCivil').Text := cboEstadoCivil.Text;
  ParamByName('genero').Text := copy(cboSexo.Text,0,1);
  ParamByName('endereco').Text := edtEndereco.Text;
  ParamByName('bairro').Text := edtBairro.Text;
  ParamByName('cep').Text := edtCep.Text;
  ParamByName('tel').Text := edtTelefone.Text;
  ParamByName('cel').Text := edtCelular.Text;
  ParamByName('email').Text := edtEmail.Text;
  ParamByName('midSocial').Text := edtMidiaSocial.Text;
  ParamByName('obs').Text := mmObs.Text;
  ParamByName('dataCad').Text := edtDataCadastro.Text;
  if (rdbAtivo.Checked = true) then
  begin
  ParamByName('situacao').AsString:='Ativo';
  end
  else begin
  ParamByName('situacao').AsString:='Inativo';
  end;
  end;
  dm.sdsComandoSql.ExecSQL();
  MessageDlg('Cliente cadastrado com Sucesso!', mtInformation,[mbOk],0);
  dm.cdsCliente.Close;
  dm.cdsCliente.Open;
  Close;
  end;
  Except
  Application.MessageBox('O CPF/CNPJ cadastrado já existe ou está incorreto!','Alerta',0);
  end;
  if (frmListagemCliente.op = 2) then
  begin
  dm.sdsComandoSql.CommandText := 'UPDATE cliente set id_cid = :id_cid,nomeCli = :nomeCli, Apelido = :Apelido, tipoPessoa = :tipoPessoa, cpfCnpj = :cpfCnpj, rg = :rg, dataNasc = :dataNasc, estadoCivil = :estadoCivil, genero = :genero, endereco = :endereco, bairro = :bairro, cep = :cep,'+
  'telefone = :tel, celular = :cel, email = :email, midiaSocial = :midSocial, observacao = :obs, dataCadastro = :dataCad, situacao = :situacao where idCli = :idCli';
  with dm.sdsComandoSql do
  begin
  ParamByName('id_cid').AsInteger := dblCidade.KeyValue;
  ParamByName('idCli').Text := edtIdCli.Text;
  ParamByName('nomeCli').Text := edtNomeCli.Text;
  ParamByName('Apelido').Text := edtApelido.Text;
  if (rdbPessoaFisica.Checked = true) then
  begin
  ParamByName('tipoPessoa').Text := 'Fisica';
  end
  else begin
  ParamByName('tipoPessoa').Text := 'Juridica';
  end;
  ParamByName('cpfCnpj').Text := edtCpf.Text;
  ParamByName('rg').Text := edtRg.Text;
  ParamByName('dataNasc').Text := edtDataNasc.Text;
  ParamByName('estadoCivil').Text := cboEstadoCivil.Text;
  ParamByName('genero').Text := copy(cboSexo.Text,0,1);
  ParamByName('endereco').Text := edtEndereco.Text;
  ParamByName('bairro').Text := edtBairro.Text;
  ParamByName('cep').Text := edtCep.Text;
  ParamByName('tel').Text := edtTelefone.Text;
  ParamByName('cel').Text := edtCelular.Text;
  ParamByName('email').Text := edtEmail.Text;
  ParamByName('midSocial').Text := edtMidiaSocial.Text;
  ParamByName('obs').Text := mmObs.Text;
  ParamByName('dataCad').Text := edtDataCadastro.Text;
  if rdbAtivo.Checked = true then
  begin
  ParamByName('situacao').AsString:='Ativo';
  end
  else begin
  ParamByName('situacao').AsString:='Inativo';
  end;
  end;
  dm.sdsComandoSql.ExecSQL();
  MessageDlg('Alteração realizada com Sucesso!', mtInformation,[mbOk],0);
  dm.cdsCliente.Close;
  dm.cdsCliente.Open;
  Close;
  end;
end;

function TfrmCadCliente.Cpf(CPF_Text: string): boolean;
var n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
       d1,d2: integer;
       digitado, calculado: string;
begin
   if ((CPF_Text = '000.000.000-00') or (CPF_Text = '111.111.111-11') or
      (CPF_Text = '222.222.222-22') or (CPF_Text = '333.333.333-33') or
      (CPF_Text = '444.444.444-44') or (CPF_Text = '555.555.555-55') or
      (CPF_Text = '666.666.666-66') or (CPF_Text = '777.777.777-77') or
      (CPF_Text = '888.888.888-88') or (CPF_Text = '999.999.999-99') or
      (length(CPF_Text) <> 14))
      then begin cpf := False;
      exit;
      end;
   n1:=StrToInt(CPF_Text[1]);
   n2:=StrToInt(CPF_Text[2]);
   n3:=StrToInt(CPF_Text[3]);
   n4:=StrToInt(CPF_Text[5]);
   n5:=StrToInt(CPF_Text[6]);
   n6:=StrToInt(CPF_Text[7]);
   n7:=StrToInt(CPF_Text[9]);
   n8:=StrToInt(CPF_Text[10]);
   n9:=StrToInt(CPF_Text[11]);
                     d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
   d1:=11-(d1 mod 11);
   if d1>=10 then d1:=0;
        d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
    d2:=11-(d2 mod 11);
    if d2>=10 then
       d2:=0;
    calculado := inttostr(d1) + inttostr(d2);
   digitado := CPF_Text[13] + CPF_Text[14];
   if calculado=digitado then
       Cpf := True
   else
       Cpf := False;
end;

procedure TfrmCadCliente.dblCidadeClick(Sender: TObject);
begin
  inherited;
  edtUf.Text := dm.cdsCidade.FieldByName('uf').Text;
end;

procedure TfrmCadCliente.edtApelidoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    if (rdbPessoaFisica.Checked = true) then
    begin
      if (key in ['0'..'9', ',', '.', ';', ':', '[', ']', '{', '}', '+', '-', '*', '*', '/', 'ª', 'º', '!', '@', '#', '$',
      '%', '¨', '(', ')', '§', '_', '?', '\', '¹', '²', '³', '£', '¢', '¬']) then
      begin
        key := #0;
        messageDlg('O Caracter informado é inválido', mtInformation,[mbOk],0);
      end;
    end;
end;
procedure TfrmCadCliente.edtCpfExit(Sender: TObject);
begin
  inherited;
    if rdbPessoaFisica.Checked = true then
    begin
      if edtCpf.Text<>'   .   .   -  ' Then
      begin
        if Cpf(edtCpf.Text)=False Then
        begin
          MessageDlg('CPF informado é incorreto!',mtError, [mbOk],0);
          edtCpf.Clear;
          edtCpf.SetFocus;
          exit;
        end;
      end;
    end
    else
    begin
      if edtCpf.Text<>'  .   .   /    -  ' then
      begin
        if validacnpj(edtCpf.text) = false then
        Begin
          MessageDlg('CNPJ informado está incorreto ou não é válido!',mtError, [mbOk],0);
          edtCpf.Clear;
          edtCpf.SetFocus;
          exit;
        end;
      end;
    end;
end;

procedure TfrmCadCliente.edtDataNascExit(Sender: TObject);
begin
  inherited;
  if (StrToDate(edtDataNasc.Text)>(date)) then
  begin
    MessageDlg('Data Nasc/Data Fundação Informada não pode ser maior do que a data atual!', mtInformation,[mbOk],0);
    edtDataNasc.SetFocus;
    exit;
  end;
end;

procedure TfrmCadCliente.edtEmailExit(Sender: TObject);
begin
  inherited;
  if not(trim(edtEmail.Text) = '') then
  begin
    if not(ValidarEMail(edtEmail.Text)) then
    begin
      MessageDlg('O campo EMAIL informado está incorreto!', mtInformation,[mbOk],0);
      edtEmail.SetFocus;
      exit;
    end;
  end;
end;

procedure TfrmCadCliente.edtNomeCliKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (rdbPessoaFisica.Checked = true) then
 begin
if (key in ['0'..'9', ',', '.', ';', ':', '[', ']', '{', '}', '+', '-', '*', '*', '/', 'ª', 'º', '!', '@', '#', '$',
'%', '¨', '(', ')', '§', '_', '?', '\', '¹', '²', '³', '£', '¢', '¬']) then
begin
    key := #0;
end;
end;
end;


procedure TfrmCadCliente.FormShow(Sender: TObject);
begin
  inherited;
  if frmListagemCliente.op=1 then
  begin
    edtDataCadastro.Text:= DateToStr(date);
    edtDataNasc.text := DateToStr(date);
    edtIdCli.Clear;
    edtNomeCli.Clear;
    edtApelido.Clear;
    edtCpf.Clear;
    edtRg.Clear;
    cboEstadoCivil.ItemIndex:= -1;
    cboSexo.ItemIndex:= -1;
    edtEndereco.Clear;
    edtBairro.Clear;
    edtCep.Clear;
    dblCidade.KeyValue:= -1;
    edtUf.Clear;
    edtTelefone.Clear;
    edtCelular.Clear;
    edtEmail.Clear;
    edtMidiaSocial.Clear;
    mmObs.Clear;
    edtNomeCli.SetFocus;
    rdbPessoaFisica.Checked:=true;
    rdbAtivo.Checked:=true;
  end;
    if frmListagemCliente.op=2 then
      begin
        edtIdCli.Text := dm.cdsCliente.FieldByName('idCli').Text;
        edtNomeCli.Text := dm.cdsCliente.FieldByName('nomeCli').Text;
        edtApelido.Text := dm.cdsCliente.FieldByName('apelido').Text;
        if (dm.cdsCliente.FieldByName('tipoPessoa').Text = 'Fisica') then
          begin
            rdbPessoaFisica.Checked := True;
          end
        else if(dm.cdsCliente.FieldByName('tipoPessoa').Text = 'Juridica') then
          begin
            rdbPessoaJuridica.Checked := True;
          end;
      edtCpf.Text := dm.cdsCliente.FieldByName('cpfCnpj').Text;
      edtRg.Text := dm.cdsCliente.FieldByName('rg').Text;
      edtDataNasc.Text := dm.cdsCliente.FieldByName('dataNasc').Text;
      cboEstadoCivil.ItemIndex := (cboEstadoCivil.Items.IndexOf(dm.cdsCliente.FieldByName('estadoCivil').Text));
      cboSexo.ItemIndex := (cboSexo.Items.IndexOf(dm.cdsCliente.FieldByName('genero').Text));
      edtEndereco.Text := dm.cdsCliente.FieldByName('endereco').Text;
      edtBairro.Text := dm.cdsCliente.FieldByName('bairro').Text;
      edtCep.Text := dm.cdsCliente.FieldByName('cep').Text;
      dblCidade.KeyValue := dm.cdsCliente.FieldByName('id_cid').AsInteger;
      edtUf.Text := dm.cdsCidade.FieldByName('uf').Text;
      edtTelefone.Text := dm.cdsCliente.FieldByName('telefone').Text;
      edtCelular.Text := dm.cdsCliente.FieldByName('celular').Text;
      edtEmail.Text := dm.cdsCliente.FieldByName('email').Text;
      edtMidiaSocial.Text := dm.cdsCliente.FieldByName('midiaSocial').Text;
      mmObs.Text := dm.cdsCliente.FieldByName('observacao').Text;
      edtDataCadastro.Text := dm.cdsCliente.FieldByName('dataCadastro').Text;
      if (dm.cdsCliente.FieldByName('situacao').Text = 'Ativo') then
        begin
            rdbAtivo.Checked := True;
        end
      else begin
        if(dm.cdsCliente.FieldByName('situacao').Text = 'Inativo') then
        begin
            rdbInativo.Checked := True;
        end;
      end;
    end;
end;

procedure TfrmCadCliente.rdbPessoaFisicaClick(Sender: TObject);
begin
  inherited;
  edtCpf.Clear;
  edtRg.Clear;
  edtIdCli.Left:=75;
  edtNomeCli.Left:=75;
  edtApelido.Left:=75;
  Label2.Caption:='Nome:*';
  Label3.Caption:='RG:*';
  Label3.Left:=167;
  edtRg.Left:=200;
  edtCpf.EditMask:='999.999.999-99';
  edtCpf.Width:= 87;
  edtCpf.Left:=75;
  Label4.Caption:='CPF:*';
  Label5.Caption:='Data Nasc:*';
  Label6.Visible:=true;   //Gênero
  cboSexo.Visible:=true;
  Label8.Visible:=true; // Estado Civil
  cboEstadoCivil.Visible:=true;
  Label22.Caption:='Apelido:';
  Label22.Font.Style:=[];
  edtDataNasc.Left:=75;
                            //posições das Labels
  Label1.Left:= 54;
  Label2.Left:=31;
  Label4.left:=37;
  Label5.Left:= 6;// Data Nasc

  Label22.Left:= 33;


  Label16.Caption:='Mídia Social:';
  Label16.Left:=6;
end;

procedure TfrmCadCliente.rdbPessoaJuridicaClick(Sender: TObject);
begin
  inherited;
  edtCpf.Clear;
  edtRg.Clear;
  cboEstadoCivil.ItemIndex:= -1;  // deixando em branco
  cboSexo.ItemIndex:= -1; // dexando em branco
  edtIdCli.Left:=98;
  edtNomeCli.Left:=98;
  edtApelido.Left:=98;
  Label2.Caption:='Nome Fantasia:*';
  Label3.Caption:='Insc. Estadual:*';
  Label3.Left:=215; //RG position
  edtRg.Left:=305; //RG  position
  Label4.Caption:='CNPJ:*';
  edtCpf.EditMask:='99.999.999/9999-99';
  edtCpf.Width:=115;
  edtCpf.Left:=98;
  Label5.Caption:='Data Fundação:*';
  Label5.Left:=3;
  Label6.Visible:=false;// Gênero
  cboSexo.Visible:=false;
  Label8.Visible:=false; // Estado Civil
  cboEstadoCivil.Visible:=false;
  Label22.Caption:='Razão social:*';
  Label22.Font.Style:=[fsBold];
  edtDataNasc.Left:=98;
  Label1.Left:= 75;
  Label2.Left:=5;
  Label4.left:=61;
  Label5.Left:= 4;// Data Nasc

  Label22.Left:= 19;


  Label16.Caption:='Site:';
  Label16.Left:=37

end;

procedure TfrmCadCliente.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  frmListagemCidade.op := 3;
  frmListagemCidade.showModal;
  dm.cdsCidade.Open;
end;

function TfrmCadCliente.ValidaCNPJ(numCNPJ: string): boolean;
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
function TfrmCadCliente.ValidarEMail(aStr: string): boolean;
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
