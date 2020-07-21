--Script para criação de tabelas

CREATE TABLE Professor
(N_Contri NUMBER(9,0),
NomeProprio VARCHAR2(30) NOT NULL,
Apelido VARCHAR2(30) NOT NULL,
Data_Nasc DATE NOT NULL,
Categoria VARCHAR2(30) NOT NULL,
CONSTRAINT N_Contri_Prof_pk PRIMARY KEY (N_Contri));

CREATE TABLE Departamento
(Numero NUMBER(4,0),
Nome VARCHAR2(50) NOT NULL,
Escritorio VARCHAR2(40),
GerenteContri NUMBER(9,0) NOT NULL,
CONSTRAINT Numero_pk PRIMARY KEY (Numero),
CONSTRAINT fk_N_Contri FOREIGN KEY (GerenteContri) REFERENCES Professor(N_Contri));

CREATE TABLE Estudante
(N_Contri NUMBER(9,0),
Nome VARCHAR2(30) NOT NULL,
Data_Nasc DATE NOT NULL,
Curso VARCHAR2(30) NOT NULL,
ConselheiroContri NUMBER(9,0),
NumDepto NUMBER(4,0) NOT NULL,
CONSTRAINT N_Contri_Est_pk PRIMARY KEY (N_Contri),
CONSTRAINT fk_ConselheiroContri FOREIGN KEY (ConselheiroContri) REFERENCES Estudante(N_Contri),
CONSTRAINT fk_NumDepto FOREIGN KEY (NumDepto) REFERENCES Departamento(Numero));

CREATE TABLE Projeto(
N_ID NUMBER(4,0),
Data_Inicio DATE NOT NULL,
Data_Fim DATE NOT NULL,
Financiador VARCHAR2(30) NOT NULL,
Orcamento NUMBER(4,0) NOT NULL,
ProfContri NUMBER(9,0) NOT NULL,
CONSTRAINT N_ID_pk PRIMARY KEY (N_ID),
CONSTRAINT fk_ProfContri FOREIGN KEY (ProfContri) REFERENCES Professor(N_Contri));

CREATE TABLE E_Trabalha(
EstContri NUMBER(9,0) NOT NULL,
Proj_ID NUMBER(4,0) NOT NULL,
SupervisorContri NUMBER(9,0) NOT NULL,
CONSTRAINT N_Contri_N_ID_E_Trab_pk PRIMARY KEY(EstContri,Proj_ID),
CONSTRAINT fk_EstContri FOREIGN KEY (EstContri) REFERENCES Estudante(N_Contri),
CONSTRAINT fk_N_ID FOREIGN KEY (Proj_ID) REFERENCES Projeto(N_ID),
CONSTRAINT fk_ProfContri_E_Trab FOREIGN KEY (SupervisorContri) REFERENCES Professor(N_Contri));

CREATE TABLE Trabalha(
Perc_Tempo NUMBER(3,0) NOT NULL,
NumDepto NUMBER(4,0) NOT NULL,
ProfContri NUMBER(9,0) NOT NULL,
CONSTRAINT Numero_N_Contri_Trab_pk PRIMARY KEY (NumDepto,ProfContri),
CONSTRAINT fk_NumDepto_Trab FOREIGN KEY (NumDepto) REFERENCES Departamento(Numero),
CONSTRAINT fk_ProfContri_Trab FOREIGN KEY (ProfContri) REFERENCES Professor(N_Contri));

CREATE TABLE P_Trabalha(
ProfContri NUMBER(9,0) NOT NULL,
Proj_ID NUMBER(4,0) NOT NULL,
CONSTRAINT N_Contri_N_ID_P_Trab_pk PRIMARY KEY (ProfContri,Proj_ID),
CONSTRAINT fk_N_Contri_P_Trab FOREIGN KEY (ProfContri) REFERENCES Professor(N_Contri),
CONSTRAINT fk_N_ID_P_Trab FOREIGN KEY (Proj_ID) REFERENCES Projeto(N_ID));

CREATE TABLE Contato_Estudante(
EstContri NUMBER(9,0) NOT NULL,
Contato NUMBER(9,0) NOT NULL,
CONSTRAINT N_Contri_Contato_Contri_Est_pk PRIMARY KEY (EstContri,Contato),
CONSTRAINT fk_N_Contri_Cont_Est FOREIGN KEY (EstContri) REFERENCES Estudante(N_Contri));

CREATE TABLE Especialidade_Professor(
ProfContri NUMBER(9,0) NOT NULL,
Especialidade VARCHAR2(30),
CONSTRAINT  NContri_Espec_pk PRIMARY KEY (ProfContri,Especialidade),
CONSTRAINT  fk_NContri_Espec_Prof FOREIGN KEY (ProfContri) REFERENCES Professor(N_Contri));

ALTER TABLE departamento ADD CONSTRAINT dep_uniq UNIQUE (nome);

ALTER TABLE departamento ADD CONSTRAINT check_esc check (escritorio = null);

ALTER TABLE projeto ADD CONSTRAINT check_date check (data_fim > data_inicio);






