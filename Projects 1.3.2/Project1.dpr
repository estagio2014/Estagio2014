program Project1;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untListagemPrincipal in 'untListagemPrincipal.pas' {frmListagem},
  untListagemCliente in 'untListagemCliente.pas' {frmListagemCliente},
  untListagemFornecedor in 'untListagemFornecedor.pas' {frmListagemFornecedor},
  untListagemProduto in 'untListagemProduto.pas' {frmListagemProduto},
  untCadPrincipal in 'untCadPrincipal.pas' {frmCadPrincipal},
  untCadCliente in 'untCadCliente.pas' {frmCadCliente},
  untDm in 'untDm.pas' {dm: TDataModule},
  untListagemCidade in 'untListagemCidade.pas' {frmListagemCidade},
  untCadCidade in 'untCadCidade.pas' {frmCadCidade},
  untCadFornecedor in 'untCadFornecedor.pas' {frmCadFornecedor},
  untCadProduto in 'untCadProduto.pas' {frmCadProduto},
  Vcl.Themes,
  Vcl.Styles,
  untCadUsuario in 'untCadUsuario.pas' {frmCadUsuario},
  untListagemUsuario in 'untListagemUsuario.pas' {frmListagemUsuario},
  untCadMarca in 'untCadMarca.pas' {frmCadMarca},
  untListagemMarca in 'untListagemMarca.pas' {frmListagemMarca},
  untVenda in 'untVenda.pas' {frmVenda},
  untListagemVenda in 'untListagemVenda.pas' {frmListagemVenda},
  untCompra in 'untCompra.pas' {frmCompra},
  untListagemCompra in 'untListagemCompra.pas' {frmListagemCompra},
  untContasPagar in 'untContasPagar.pas' {frmContasPagar},
  untContasReceber in 'untContasReceber.pas' {frmContasReceber},
  untCondPagamento in 'untCondPagamento.pas' {frmCondPagamento},
  untListagemContas in 'untListagemContas.pas' {frmListagemContas},
  untListagemContasPagar in 'untListagemContasPagar.pas' {frmListagemContaPagar},
  untRelatorios in 'untRelatorios.pas' {frmRelatorios},
  untLogin in 'untLogin.pas' {frmLogin},
  untListagemContasReceber in 'untListagemContasReceber.pas' {frmListagemContasReceber},
  untLancamento in 'untLancamento.pas' {frmLancamento},
  untSplash in 'untSplash.pas' {frmSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Cyan Dusk');
  Application.CreateForm(TfrmSplash, frmSplash);
  Application.CreateForm(TfrmLancamento, frmLancamento);
  Application.CreateForm(TfrmListagemContasReceber, frmListagemContasReceber);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmRelatorios, frmRelatorios);
  Application.CreateForm(TfrmListagemContaPagar, frmListagemContaPagar);
  Application.CreateForm(TfrmListagemContas, frmListagemContas);
  Application.CreateForm(TfrmCondPagamento, frmCondPagamento);
  Application.CreateForm(TfrmContasReceber, frmContasReceber);
  Application.CreateForm(TfrmContasPagar, frmContasPagar);
  Application.CreateForm(TfrmListagemCompra, frmListagemCompra);
  Application.CreateForm(TfrmCompra, frmCompra);
  Application.CreateForm(TfrmListagemVenda, frmListagemVenda);
  Application.CreateForm(TfrmVenda, frmVenda);
  Application.CreateForm(TfrmListagemMarca, frmListagemMarca);
  Application.CreateForm(TfrmCadMarca, frmCadMarca);
  Application.CreateForm(TfrmListagemUsuario, frmListagemUsuario);
  Application.CreateForm(TfrmCadUsuario, frmCadUsuario);
  Application.CreateForm(TfrmCadProduto, frmCadProduto);
  Application.CreateForm(TfrmCadFornecedor, frmCadFornecedor);
  Application.CreateForm(TfrmCadCidade, frmCadCidade);
  Application.CreateForm(TfrmListagemCidade, frmListagemCidade);
  Application.CreateForm(TfrmCadCliente, frmCadCliente);
  Application.CreateForm(TfrmCadPrincipal, frmCadPrincipal);
  Application.CreateForm(TfrmListagemProduto, frmListagemProduto);
  Application.CreateForm(TfrmListagemFornecedor, frmListagemFornecedor);
  Application.CreateForm(TfrmListagemCliente, frmListagemCliente);
  Application.CreateForm(TfrmListagem, frmListagem);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
