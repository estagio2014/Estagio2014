unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Menus, Vcl.Buttons, Vcl.AppEvnts;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Manuteno1: TMenuItem;
    Fornecedor1: TMenuItem;
    Produto1: TMenuItem;
    N1: TMenuItem;
    Usurio1: TMenuItem;
    MOvimento1: TMenuItem;
    Compra1: TMenuItem;
    Venda1: TMenuItem;
    ContasaPagar1: TMenuItem;
    ContasaReceber1: TMenuItem;
    Utilitrios1: TMenuItem;
    BlocodeNotas1: TMenuItem;
    Calculadora1: TMenuItem;
    CpiadeSegurana1: TMenuItem;
    Sobre1: TMenuItem;
    Sair1: TMenuItem;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Image1: TImage;
    btnCliente: TSpeedButton;
    btnFornecedor: TSpeedButton;
    btnProduto: TSpeedButton;
    Cliente1: TMenuItem;
    Cidade1: TMenuItem;
    Marca1: TMenuItem;
    btnCompra: TSpeedButton;
    btnVenda: TSpeedButton;
    N2: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    Timer1: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnClienteClick(Sender: TObject);
    procedure btnFornecedorClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure BlocodeNotas1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);
    procedure Marca1Click(Sender: TObject);
    procedure Venda1Click(Sender: TObject);
    procedure Compra1Click(Sender: TObject);
    procedure btnCompraClick(Sender: TObject);
    procedure btnVendaClick(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure Lanamentos1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    user: Byte;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses untListagemCliente, untListagemFornecedor, untListagemProduto,
  untListagemCidade, untCadUsuario, untListagemUsuario, untListagemMarca,
  untVenda, untListagemVenda, untListagemCompra, untCompra, untContasPagar,
  untContasReceber, untListagemContasPagar, untListagemContasReceber,
  untLancamentos, untLogin, untSobre, untDm;

procedure TfrmPrincipal.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
  var
 mensagem: string;
 Pos1, Pos2: integer;
begin
     if Pos(UpperCase('is not a valid date'), UpperCase(E.Message)) <> 0 then
  mensagem:='Data inv�lida, proceda a corre��o.'
 else if Pos(UpperCase('must have a value'), UpperCase(E.Message)) <> 0 then
 begin
  Pos1:=Pos('''', E.Message);
  mensagem:=E.Message;
  Delete(mensagem, Pos1, 1);
  Pos2:=Pos('''', mensagem);
  mensagem:=copy(E.Message, Pos1 + 1, Pos2 - Pos1);
  mensagem := '� obrigat�rio o preenchimento do campo '+ mensagem + '.';
 end
 else if Pos(UpperCase('key violation'), UpperCase(E.Message)) <> 0 then
  mensagem := 'Houve viola��o de Chave. Registro j� incluido.'
 else if Pos(UpperCase('is not a valid time'), UpperCase(E.Message)) <> 0 then
  mensagem := 'Hora inv�lida, proceda a corre��o.'
 else if Pos(UpperCase('is not a valid float'), UpperCase(E.Message)) <> 0 then
 begin
  Pos1 :=Pos('''', E.Message);
  mensagem :=E.Message;
  Delete(mensagem, Pos1, 1);
  Pos2 := Pos('''', mensagem);
  mensagem :=copy(E.Message, Pos1 + 1, Pos2 - Pos1);
  mensagem := 'O valor '+ mensagem + ' n�o � v�lido.';
 end
 else if Pos(UpperCase('field value required'), UpperCase(E.Message)) <> 0 then
 begin
  Pos1 :=Pos('column ', E.Message) + 7;
  Pos2 :=Pos(',', E.Message);
  mensagem :=copy(E.Message, Pos1, Pos2 - Pos1);
  mensagem := 'Campo ' + mensagem + ' deve ser preenchido.';
 end
 else if Pos(UpperCase('ATTEMPT TO STORE DUPLICATE VALUE'), UpperCase(E.Message)) <> 0
 then
  mensagem := 'N�o � permitido valor duplicado. '
 else if Pos(UpperCase('FOREIGN KEY'), UpperCase(E.Message)) <> 0 then
  mensagem := 'Opera��o n�o permitida, registro vinculado em outra tabela est� faltando.'
 else if Pos('VIOLATION OF PRIMARY OR UNIQUE KEY CONSTRAINT', UpperCase(E.Message)) <> 0
 then
  mensagem := 'Registro Duplicado'+#13#10+Copy(UpperCase(E.Message),Pos('VIOLATION OF PRIMARY OR UNIQUE KEY CONSTRAINT',UpperCase(E.Message))+47,100)
 else if (Pos(UpperCase('MUST APPLY UPDATES BEFORE REFRESHING DATA'),
 UpperCase(E.Message)) <> 0) then
  mensagem := '� necess�rio aplicara as altera��es antes de atualizar os dados.'
 else if (Pos(UpperCase('INVALID INPUT VALUE'), UpperCase(E.Message)) <> 0) then
  mensagem := 'Valor digitado n�o � valido conforme a m�scara.'
 else
  mensagem := 'Ocorreu o seguinte erro: ' + #13 +UpperCase(E.Message);
 MessageDlg(mensagem, mtError, [mbOk], 0);
 ABORT;
end;

procedure TfrmPrincipal.BlocodeNotas1Click(Sender: TObject);
begin
WinExec('notepad.exe',sw_normal);
end;

procedure TfrmPrincipal.btnClienteClick(Sender: TObject);
begin
frmListagemCliente.showModal;
end;

procedure TfrmPrincipal.btnCompraClick(Sender: TObject);
begin
  frmListagemCompra.showModal;
end;

procedure TfrmPrincipal.btnFornecedorClick(Sender: TObject);
begin
frmListagemFornecedor.ShowModal;
end;

procedure TfrmPrincipal.btnProdutoClick(Sender: TObject);
begin
frmListagemProduto.ShowModal;
end;

procedure TfrmPrincipal.btnVendaClick(Sender: TObject);
begin
  frmListagemVenda.ShowModal;
end;

procedure TfrmPrincipal.Calculadora1Click(Sender: TObject);
begin
WinExec('calc.exe', SW_NORMAL);
end;

procedure TfrmPrincipal.Cidade1Click(Sender: TObject);
begin
frmListagemCidade.ShowModal;
end;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
begin
frmListagemCliente.showModal;
end;

procedure TfrmPrincipal.Compra1Click(Sender: TObject);
begin
  frmListagemCompra.ShowModal;
end;

procedure TfrmPrincipal.ContasaPagar1Click(Sender: TObject);
begin
  frmListagemContaPagar.showModal;
end;

procedure TfrmPrincipal.ContasaReceber1Click(Sender: TObject);
begin
  frmListagemContasReceber.ShowModal;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=caNone;
   if MessageDlg('Deseja Sair do Sistema?', mtInformation,[mbYes,mbNo],0)= mrYes then
   begin
   Application.Terminate;
   Action:=caFree;
   end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin

if(ControlaAcesso = 'Administrador') then
  begin
   // ShowMessage(ControlaAcesso);
    frmPrincipal.StatusBar1.Panels[1].Text := ControlaAcesso;
   // StatusBar1.Panels[2].Text := dm.cdsUsuarioNome.Value;
  //  frmListagemVenda.btnExcluir.Enabled := True;
  end
else if(ControlaAcesso = 'Colaborador') then
  begin
   // ShowMessage('Colaborador');
    frmPrincipal.StatusBar1.Panels[1].Text := ControlaAcesso;
  //  frmListagemVenda.btnExcluir.Enabled := False;
  end;
end;

procedure TfrmPrincipal.Fornecedor1Click(Sender: TObject);
begin
frmListagemFornecedor.showModal;
end;

procedure TfrmPrincipal.Lanamentos1Click(Sender: TObject);
begin
//  frmListagemLancamento.showModal;
end;

procedure TfrmPrincipal.Marca1Click(Sender: TObject);
begin
  frmListagemMarca.showModal;
end;

procedure TfrmPrincipal.Produto1Click(Sender: TObject);
begin
frmListagemProduto.showModal;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.Sobre1Click(Sender: TObject);
begin
  frmSobre.ShowModal;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
   statusbar1.Panels [3].Text := ' '+datetostr(date);// para data
   statusbar1.Panels [2].Text := ' '+timetostr(now);//para hora
end;

procedure TfrmPrincipal.Usurio1Click(Sender: TObject);
begin
  if(ControlaAcesso = 'Administrador') then
    begin
      frmListagemUsuario.ShowModal;
    end
  else if(ControlaAcesso = 'Colaborador') then
  begin
    MessageDlg('Desculpe voc� n�o tem permiss�o, verifique com o Administrador' ,mtError, [mbOK], 0);
  end;
end;

procedure TfrmPrincipal.Venda1Click(Sender: TObject);
begin
  frmListagemVenda.showModal;
end;

end.
