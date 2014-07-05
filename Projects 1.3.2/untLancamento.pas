unit untLancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadPrincipal, Vcl.Mask, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TfrmLancamento = class(TfrmCadPrincipal)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtIdLanc: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label2: TLabel;
    Label3: TLabel;
    edtNum: TEdit;
    Label4: TLabel;
    edtTipoLanc: TEdit;
    Label5: TLabel;
    edtDataLanc: TMaskEdit;
    Label6: TLabel;
    edtFormaPag: TEdit;
    Label7: TLabel;
    edtValor: TEdit;
    Label8: TLabel;
    edtQtdeParc: TEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLancamento: TfrmLancamento;

implementation

{$R *.dfm}

procedure TfrmLancamento.FormShow(Sender: TObject);
begin
  inherited;
  edtDataLanc.Text := DateToStr(date);
end;

end.
