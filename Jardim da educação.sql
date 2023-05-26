USE MASTER IF EXISTS(SELECT * FROM SYS.databases WHERE NAME = '@bjardim_da_educacao')
DROP DATABASE bjardim_da_educacao
GO

CREATE DATABASE bjardim_da_educacao
GO

USE bjardim_da_educacao
GO

CREATE TABLE Cargo
( 
   id INT IDENTITY,
   nomeCargo VARCHAR(100) NOT NULL,

   PRIMARY KEY (id)
)
insert into responsavel values

CREATE TABLE Funcionario
( 
   id       INT IDENTITY,
   nome     VARCHAR(100) NOT NULL,
   cpf      CHAR(11)     NULL,
   rg       VARCHAR(12)  NULL,
   sexo     CHAR(1)      NOT NULL,
   dataNasc DATE         NOT NULL,
   foto     VARBINARY(MAX) NULL,
   telfone  VARCHAR(25)  NOT NULL,
   email    VARCHAR(100) NULL, 
   logradouro 	VARCHAR(100) NOT NULL, -- nome da rua, avenida e etc
   numero_resid VARCHAR(10)  NOT NULL,
   complemento  VARCHAR(100) NULL,
   cep 	        CHAR(8)  NULL,
   bairro  	VARCHAR(100) NULL,
   cidade 	VARCHAR(100)  NULL,
   uf 		CHAR(2)  NULL,
   cargo_id INT NOT NULL,

   PRIMARY KEY (id),
   FOREIGN KEY (cargo_id) REFERENCES Cargo (id)
)
