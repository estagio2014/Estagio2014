unit untRelFiltroCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untRelFiltro, Vcl.ExtCtrls;

type
  TfrmRelFiltroCli = class(TfrmRelFiltro)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFiltroCli: TfrmRelFiltroCli;

implementation

{$R *.dfm}

uses untDm;

end.
