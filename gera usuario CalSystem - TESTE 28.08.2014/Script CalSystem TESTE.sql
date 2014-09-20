
-- Script teste 1.0 Calsystem 28/08/2014 

Drop index IX_FK_LANC_FATURA;
Drop index IX_FK_MARCA_PROD;
Drop index IX_FK_COMP_ITEMCOMPRA;
Drop index IX_FK_COMP_LANC;
Drop index IX_FK_VENDA_ITEMVENDA;
Drop index IX_FK_VENDA_LANC;
Drop index IX_FK_PRODUTO_ITEMVENDA;
Drop index IX_FK_PROD_ITEMCOMPRA;
Drop index IX_FK_FORN_COMP;
Drop index IX_FK_CLI_VENDA;
Drop index IX_FK_CID_CLI;
Drop index IX_FK_CID_FOR;




Alter table cliente drop constraint FK_CID_CLI;
Alter table fornecedor drop constraint FK_CID_FOR;
Alter table Venda drop constraint FK_CLI_VENDA;
Alter table Compra drop constraint FK_FORN_COMP;
Alter table Item_venda drop constraint FK_PRODUTO_ITEMVENDA;
Alter table Item_compra drop constraint FK_PROD_ITEMCOMPRA;
Alter table Item_venda drop constraint FK_VENDA_ITEMVENDA;
Alter table Lancamento drop constraint FK_VENDA_LANC;
Alter table Item_compra drop constraint FK_COMP_ITEMCOMPRA;
Alter table Lancamento drop constraint FK_COMP_LANC;
Alter table produto drop constraint FK_MARCA_PROD;
Alter table Fatura drop constraint FK_LANC_FATURA;



Drop table Lancamento;
Drop table Item_compra;
Drop table Marca;
Drop table Fatura;
Drop table Item_venda;
Drop table Compra;
Drop table Usuario;
Drop table Venda;
Drop table produto;
Drop table fornecedor;
Drop table cliente;
Drop table cidade;

Drop sequence seqCidade;
Drop sequence seqCliente;
Drop sequence seqFornecedor;
Drop sequence seqMarca;
Drop sequence seqProduto;
Drop sequence seqUsuario;
Drop sequence seqVenda;
Drop sequence seqCompra;
Drop sequence seqFatura;
Drop sequence seqLancamento;


-- Create Types section





-- Create Tables section


Create table cidade (
	id_cid Integer NOT NULL ,
	nome_cid Varchar2 (50),
	uf Char (2),
	datacadastro Date,
 Constraint pk_cidade primary key (id_cid) 
);

Create table cliente (
	idcli Integer NOT NULL ,
	id_cid Integer NOT NULL ,
	nomeCli Varchar2 (50),
	apelido Varchar2 (50),
	tipopessoa Varchar2 (10),
	cpfCnpj Varchar2 (30) unique,
	rg Varchar2 (15),
	dataNasc Date,
	estadoCivil Varchar2 (15),
	genero Varchar2 (5),
	endereco Varchar2 (50),
	bairro Varchar2 (30),
	cep Varchar2 (10),
	telefone Varchar2 (13),
	celular Varchar2 (13),
	email Varchar2 (50),
	midiaSocial Varchar2 (80),
	observacao Varchar2 (200),
	dataCadastro Date NOT NULL ,
	situacao Varchar2 (8) NOT NULL ,
 Constraint pk_cliente primary key (idcli) 
);

Create table fornecedor (
	idFornecedor Integer NOT NULL ,
	id_cid Integer NOT NULL ,
	nomeFant_ Varchar2 (50),
	razaoSocial Varchar2 (50),
	cnpj Varchar2 (30) unique,
	InscEst Varchar2 (20),
	dataFund Date,
	endereco Varchar2 (50),
	bairro Varchar2 (30),
	cep Varchar2 (10),
	repres Varchar2 (50),
	telefone Varchar2 (13),
	celular Varchar2 (13),
	email Varchar2 (50),
	site Varchar2 (50),
	observacoes Varchar2 (200),
	dataCadastro_ Date,
	situacao Varchar2 (8),
 Constraint pk_fornecedor primary key (idFornecedor) 
);

Create table produto (
	idProduto Integer NOT NULL ,
	id Integer NOT NULL ,
	codBarra Number unique,
	descricao Varchar2 (30),
	complemento Varchar2 (30),
	categoria Varchar2 (11),
	unidade Char (2),
	precoCusto float,
	precoVenda float,
	estoqueAtual Integer,
	observacoes Varchar2 (200),
	situacao Varchar2 (12),
	dataCadastro Date,
 Constraint pk_produto primary key (idProduto) 
);

Create table Venda (
	id_venda Integer NOT NULL ,
	idcli Integer NOT NULL ,
	vendedor Varchar2 (30) NOT NULL ,
	desconto float,
	valorTotal float,
	data_Venda Date,
	forma_pag Varchar2 (20),
	tipo_pag Varchar2 (10) NOT NULL ,
	situacao varchar2 (20),
 Constraint pk_Venda primary key (id_venda) 
);

Create table Usuario (
	id_usuario Integer NOT NULL ,
	nome Varchar2 (20) NOT NULL ,
	login Varchar2 (20) NOT NULL,
	senha Varchar2 (20) NOT NULL ,
	nivelAcess Varchar2 (20) NOT NULL ,
	dataCadastro Date,
 Constraint pk_Usuario primary key (id_usuario) 
);

Create table Compra (
	id_compra Integer NOT NULL ,
	idFornecedor Integer NOT NULL ,
	data_compra Date,
	forma_pag Varchar2 (20),
	valorTotal float,
	desconto float,
	tipo_pag Varchar2 (10),
	situacao varchar2 (20),
 Constraint pk_Compra primary key (id_compra) 
);

Create table Item_venda (
	id_venda Integer NOT NULL ,
	idProduto Integer NOT NULL ,
	quantidade Number,
	preco float,
	subTotal float,
 Constraint pk_Item_venda primary key (id_venda,idProduto) 
);

Create table Fatura (
	id Integer NOT NULL ,
	id_Lancamento Integer NOT NULL ,
	num_parcela Number,
	vlr_parcela float,
	vlr_receber float,
	data_emissao Date,
	data_venc Date,
	data_recebido Date,
	vlr_recebido float,
	tipo_pagamento Varchar2 (20),
	num_fatura Number,
	situacao varchar2(10),
	multa float,
	juros float,
	desconto float,
	observacoes varchar2 (200),
 Constraint pk_Fatura primary key (id,num_parcela) 
);

Create table Marca (
	id Integer NOT NULL ,
	descricao Varchar2 (30),
 Constraint pk_Marca primary key (id) 
);

Create table Item_compra (
	id_compra Integer NOT NULL ,
	idProduto Integer NOT NULL ,
	quantidade Number,
	preco_compra float,
	subTotal float,
 Constraint pk_Item_compra primary key (id_compra,idProduto) 
);

Create table Lancamento (
	id_ Integer NOT NULL ,
	id_compra Integer,
	id_venda Integer,
	tipo_lanc Varchar2 (20),
	valor float,
	forma_pagamento Varchar2 (20),
	qtde_parc Integer,
	data_lanc Date,
 Constraint pk_Lancamento primary key (id_) 
);

Create sequence seqCidade;
Create sequence seqCliente;
Create sequence seqFornecedor;
Create sequence seqMarca;
Create sequence seqProduto;
Create sequence seqUsuario;
Create sequence seqVenda;
Create sequence seqCompra;
Create sequence seqFatura;
Create sequence seqLancamento;

insert into usuario values (seqUsuario.nextVal, 'Administrador', 'admin', 'admin','Administrador', sysdate);

CREATE OR REPLACE TRIGGER ATUALIZAESTOQUECOMPRA
BEFORE INSERT OR DELETE ON ITEM_COMPRA
FOR EACH ROW
BEGIN
  IF INSERTING THEN 
    UPDATE PRODUTO SET ESTOQUEATUAL = ESTOQUEATUAL + :NEW.QUANTIDADE WHERE IDPRODUTO = :NEW.IDPRODUTO;
  END IF;
   IF DELETING THEN
    UPDATE PRODUTO SET ESTOQUEATUAL = ESTOQUEATUAL - :OLD.QUANTIDADE WHERE IDPRODUTO = :OLD.IDPRODUTO;
  END IF;
END;


ALTER TABLE ITEM_COMPRA ADD CONSTRAINT FK_ITEM_COMPRA FOREIGN KEY (IDPRODUTO) REFERENCES PRODUTO(IDPRODUTO);

CREATE OR REPLACE TRIGGER ATUALIZAESTOQUEVENDA
BEFORE INSERT OR DELETE ON ITEM_VENDA
FOR EACH ROW
BEGIN
  IF INSERTING THEN 
    UPDATE PRODUTO SET ESTOQUEATUAL = ESTOQUEATUAL - :NEW.QUANTIDADE WHERE IDPRODUTO = :NEW.IDPRODUTO;
  END IF;
   IF DELETING THEN
    UPDATE PRODUTO SET ESTOQUEATUAL = ESTOQUEATUAL + :OLD.QUANTIDADE WHERE IDPRODUTO = :OLD.IDPRODUTO;
  END IF;
END;


ALTER TABLE ITEM_VENDA ADD CONSTRAINT FK_ITEM_VENDA FOREIGN KEY (IDPRODUTO) REFERENCES PRODUTO(IDPRODUTO);



commit;


