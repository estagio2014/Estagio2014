/*
Created		28/11/2013
Modified		15/06/2014
Project		
Model		
Company		
Author		
Version		
Database		Oracle 10g 
*/













































-- Drop foreign key indexes

Drop index IX_FK_LANC_FATURA
/
Drop index IX_FK_MARCA_PROD
/
Drop index IX_FK_COMP_ITEMCOMPRA
/
Drop index IX_FK_COMP_LANC
/
Drop index IX_FK_VENDA_ITEMVENDA
/
Drop index IX_FK_VENDA_LANC
/
Drop index IX_FK_PRODUTO_ITEMVENDA
/
Drop index IX_FK_PROD_ITEMCOMPRA
/
Drop index IX_FK_FORN_COMP
/
Drop index IX_FK_CLI_VENDA
/
Drop index IX_FK_CID_CLI
/
Drop index IX_FK_CID_FOR
/



Alter table cliente drop constraint FK_CID_CLI
/
Alter table fornecedor drop constraint FK_CID_FOR
/
Alter table Venda drop constraint FK_CLI_VENDA
/
Alter table Compra drop constraint FK_FORN_COMP
/
Alter table Item_venda drop constraint FK_PRODUTO_ITEMVENDA
/
Alter table Item_compra drop constraint FK_PROD_ITEMCOMPRA
/
Alter table Item_venda drop constraint FK_VENDA_ITEMVENDA
/
Alter table Lancamento drop constraint FK_VENDA_LANC
/
Alter table Item_compra drop constraint FK_COMP_ITEMCOMPRA
/
Alter table Lancamento drop constraint FK_COMP_LANC
/
Alter table produto drop constraint FK_MARCA_PROD
/
Alter table Fatura drop constraint FK_LANC_FATURA
/



Drop table Lancamento
/
Drop table Item_compra
/
Drop table Marca
/
Drop table Fatura
/
Drop table Item_venda
/
Drop table Compra
/
Drop table Usuario
/
Drop table Venda
/
Drop table produto
/
Drop table fornecedor
/
Drop table cliente
/
Drop table cidade
/


-- Create Types section





-- Create Tables section


Create table cidade (
	id_cid Number NOT NULL ,
	nome_cid Varchar2 (50),
	uf Char (2),
	datacadastro Date,
 Constraint pk_cidade primary key (id_cid) 
) 
/

Create table cliente (
	idcli Number NOT NULL ,
	id_cid Number NOT NULL ,
	nomeCli Varchar2 (50),
	apelido Varchar2 (50),
	tipopessoa Char (1),
	cpfCnpj Varchar2 (30),
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
	situacao Char (1) NOT NULL ,
 Constraint pk_cliente primary key (idcli) 
) 
/

Create table fornecedor (
	idFornecedor Number NOT NULL ,
	id_cid Number NOT NULL ,
	nomeFant_ Varchar2 (50),
	razaoSocial Varchar2 (50),
	cnpj Varchar2 (30),
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
	situacao Char (1),
 Constraint pk_fornecedor primary key (idFornecedor) 
) 
/

Create table produto (
	idProduto Varchar2 (20) NOT NULL ,
	id Number NOT NULL ,
	codBarra Number,
	descricao Varchar2 (30),
	complemento Varchar2 (30),
	categoria Varchar2 (10),
	unidade Char (2),
	precoCusto Number(10,2),
	precoVenda Number(10,2),
	estoqueAtual Integer,
	observacoes Varchar2 (200),
	situacao Char (1),
	dataCadastro Date,
 Constraint pk_produto primary key (idProduto) 
) 
/

Create table Venda (
	id_venda Number NOT NULL ,
	idcli Number NOT NULL ,
	vendedor Varchar2 (30) NOT NULL ,
	desconto Number(10,2),
	valorTotal Number(10,2),
	data_Venda Date,
	forma_pag Varchar2 (20),
	tipo_pag Char (1) NOT NULL ,
 Constraint pk_Venda primary key (id_venda) 
) 
/

Create table Usuario (
	id_usuario Number NOT NULL ,
	nome Varchar2 (20) NOT NULL ,
	login Varchar2 (20) NOT NULL ,
	senha Varchar2 (20) NOT NULL ,
	nivelAcess Varchar2 (20) NOT NULL ,
	dataCadastro Date,
 Constraint pk_Usuario primary key (id_usuario) 
) 
/

Create table Compra (
	id_compra Number NOT NULL ,
	idFornecedor Number NOT NULL ,
	data_compra Date,
	forma_pag Varchar2 (20),
	valorTotal Number(10,2),
	desconto Number(10,2),
	tipo_pag Char (1),
 Constraint pk_Compra primary key (id_compra) 
) 
/

Create table Item_venda (
	id_venda Number NOT NULL ,
	idProduto Varchar2 (20) NOT NULL ,
	quantidade Number,
	preco Number(10,2),
	subTotal Number(10,2),
 Constraint pk_Item_venda primary key (id_venda,idProduto) 
) 
/

Create table Fatura (
	id Number NOT NULL ,
	id_Lancamento Number NOT NULL ,
	num_parcela Number,
	vlr_parcela Number(10,2),
	vlr_receber Number(10,2),
	data_venc Date,
	data_recebido Date,
	vlr_restante Number(10,2),
	tipo_pagamento Varchar2 (20),
	num_fatura Number,
 Constraint pk_Fatura primary key (id) 
) 
/

Create table Marca (
	id Number NOT NULL ,
	descricao Varchar2 (30),
 Constraint pk_Marca primary key (id) 
) 
/

Create table Item_compra (
	id_compra Number NOT NULL ,
	idProduto Varchar2 (20) NOT NULL ,
	quantidade Number,
	preco_compra Number(10,2),
	subTotal Number(10,2),
 Constraint pk_Item_compra primary key (id_compra,idProduto) 
) 
/

Create table Lancamento (
	id_ Number NOT NULL ,
	id_compra Number,
	id_venda Number,
	tipo_lanc Varchar2 (20),
	valor Varchar2 (20),
	forma_pagamento Varchar2 (20),
	qtde_parc Integer,
 Constraint pk_Lancamento primary key (id_) 
) 
/





-- Create Alternate keys section


-- Create Indexes section



-- Create section for PKs, AKs and Unique constraints, which have to be generated after Indexes



-- Create Foreign keys section
Create Index IX_FK_CID_CLI ON cliente (id_cid)
/
Alter table cliente add Constraint FK_CID_CLI foreign key (id_cid) references cidade (id_cid) 
/
Create Index IX_FK_CID_FOR ON fornecedor (id_cid)
/
Alter table fornecedor add Constraint FK_CID_FOR foreign key (id_cid) references cidade (id_cid) 
/
Create Index IX_FK_CLI_VENDA ON Venda (idcli)
/
Alter table Venda add Constraint FK_CLI_VENDA foreign key (idcli) references cliente (idcli) 
/
Create Index IX_FK_FORN_COMP ON Compra (idFornecedor)
/
Alter table Compra add Constraint FK_FORN_COMP foreign key (idFornecedor) references fornecedor (idFornecedor) 
/
Create Index IX_FK_PRODUTO_ITEMVENDA ON Item_venda (idProduto)
/
Alter table Item_venda add Constraint FK_PRODUTO_ITEMVENDA foreign key (idProduto) references produto (idProduto) 
/
Create Index IX_FK_PROD_ITEMCOMPRA ON Item_compra (idProduto)
/
Alter table Item_compra add Constraint FK_PROD_ITEMCOMPRA foreign key (idProduto) references produto (idProduto) 
/
Create Index IX_FK_VENDA_ITEMVENDA ON Item_venda (id_venda)
/
Alter table Item_venda add Constraint FK_VENDA_ITEMVENDA foreign key (id_venda) references Venda (id_venda) 
/
Create Index IX_FK_VENDA_LANC ON Lancamento (id_venda)
/
Alter table Lancamento add Constraint FK_VENDA_LANC foreign key (id_venda) references Venda (id_venda) 
/
Create Index IX_FK_COMP_ITEMCOMPRA ON Item_compra (id_compra)
/
Alter table Item_compra add Constraint FK_COMP_ITEMCOMPRA foreign key (id_compra) references Compra (id_compra) 
/
Create Index IX_FK_COMP_LANC ON Lancamento (id_compra)
/
Alter table Lancamento add Constraint FK_COMP_LANC foreign key (id_compra) references Compra (id_compra) 
/
Create Index IX_FK_MARCA_PROD ON produto (id)
/
Alter table produto add Constraint FK_MARCA_PROD foreign key (id) references Marca (id) 
/
Create Index IX_FK_LANC_FATURA ON Fatura (id_Lancamento)
/
Alter table Fatura add Constraint FK_LANC_FATURA foreign key (id_Lancamento) references Lancamento (id_) 
/


-- Create Object Tables section



-- Create XMLType Tables section



-- Create Procedures section



-- Create Functions section



-- Create Views section



-- Create Sequences section




-- Create Triggers from referential integrity section
































-- Create user Triggers section



-- Create Packages section





-- Create Synonyms section



-- Create Roles section



-- Users Permissions to roles section



-- Roles Permissions section

/* Roles permissions */




-- User Permissions section

/* Users permissions */




-- Create Table comments section


-- Create Attribute comments section


-- After section


