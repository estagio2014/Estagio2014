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
  untLancamentos in 'untLancamentos.pas' {frmListagemLancamento},
  untSobre in 'untSobre.pas' {frmSobre},
  untFiltroCli in 'untFiltroCli.pas' {frmfiltrocliente},
  untRelFiltro in 'untRelFiltro.pas' {frmRelFiltro},
  untRelFiltroCli in 'untRelFiltroCli.pas' {frmRelFiltroCli},
  untRelFiltroFornecedor in 'untRelFiltroFornecedor.pas' {frmfiltrofornecedor},
  untRelFiltroProduto in 'untRelFiltroProduto.pas' {frmfiltroproduto},
  untRelFiltroCompra in 'untRelFiltroCompra.pas' {frmfiltrocompra},
  untRelFiltroVenda in 'untRelFiltroVenda.pas' {frmfiltrovenda},
  untRelFiltroContasPagar in 'untRelFiltroContasPagar.pas' {frmfiltroContasPagar},
  untRelFiltroContasReceber in 'untRelFiltroContasReceber.pas' {frmfiltroContasReceber};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Cyan Dusk');
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmListagem, frmListagem);
  Application.CreateForm(TfrmListagemCliente, frmListagemCliente);
  Application.CreateForm(TfrmListagemFornecedor, frmListagemFornecedor);
  Application.CreateForm(TfrmListagemProduto, frmListagemProduto);
  Application.CreateForm(TfrmCadPrincipal, frmCadPrincipal);
  Application.CreateForm(TfrmCadCliente, frmCadCliente);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmListagemCidade, frmListagemCidade);
  Application.CreateForm(TfrmCadCidade, frmCadCidade);
  Application.CreateForm(TfrmCadFornecedor, frmCadFornecedor);
  Application.CreateForm(TfrmCadProduto, frmCadProduto);
  Application.CreateForm(TfrmCadUsuario, frmCadUsuario);
  Application.CreateForm(TfrmListagemUsuario, frmListagemUsuario);
  Application.CreateForm(TfrmCadMarca, frmCadMarca);
  Application.CreateForm(TfrmListagemMarca, frmListagemMarca);
  Application.CreateForm(TfrmVenda, frmVenda);
  Application.CreateForm(TfrmListagemVenda, frmListagemVenda);
  Application.CreateForm(TfrmCompra, frmCompra);
  Application.CreateForm(TfrmListagemCompra, frmListagemCompra);
  Application.CreateForm(TfrmContasPagar, frmContasPagar);
  Application.CreateForm(TfrmContasReceber, frmContasReceber);
  Application.CreateForm(TfrmCondPagamento, frmCondPagamento);
  Application.CreateForm(TfrmListagemContas, frmListagemContas);
  Application.CreateForm(TfrmListagemContaPagar, frmListagemContaPagar);
  Application.CreateForm(TfrmRelatorios, frmRelatorios);
  Application.CreateForm(TfrmListagemContasReceber, frmListagemContasReceber);
  Application.CreateForm(TfrmListagemLancamento, frmListagemLancamento);
  Application.CreateForm(TfrmSobre, frmSobre);
  Application.CreateForm(Tfrmfiltrocliente, frmfiltrocliente);
  Application.CreateForm(TfrmRelFiltro, frmRelFiltro);
  Application.CreateForm(TfrmRelFiltroCli, frmRelFiltroCli);
  Application.CreateForm(Tfrmfiltrofornecedor, frmfiltrofornecedor);
  Application.CreateForm(Tfrmfiltroproduto, frmfiltroproduto);
  Application.CreateForm(Tfrmfiltrocompra, frmfiltrocompra);
  Application.CreateForm(Tfrmfiltrovenda, frmfiltrovenda);
  Application.CreateForm(TfrmfiltroContasPagar, frmfiltroContasPagar);
  Application.CreateForm(TfrmfiltroContasReceber, frmfiltroContasReceber);
  Application.Run;
end.
