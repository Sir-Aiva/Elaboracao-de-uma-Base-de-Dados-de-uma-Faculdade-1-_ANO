--Introdução de dados na tabela Professor

Insert into Professor values (124672354,'Maria','Cruz',to_date('19800313','YYYYMMDD'),'Professor Assistente');
Insert into Professor values (235672834,'João','Silva',to_date('19790424','YYYYMMDD'),'Professor Assistente');
Insert into Professor values (382643178,'José','Martinho',to_date('19780209','YYYYMMDD'),'Professor Assistente');
Insert into Professor values (418321902,'Francisco','Benoliel',to_date('19820328','YYYYMMDD'),'Associado');
Insert into Professor values (137283938,'Nuno','Amado',to_date('19810508','YYYYMMDD'),'Professor Assistente');
Insert into Professor values (246728918,'Joana','Lucas',to_date('19800224','YYYYMMDD'),'Catedrático');
Insert into Professor values (391837498,'Ana','Balhau',to_date('19840411','YYYYMMDD'),'Professor Assistente');
Insert into Professor values (427374918,'António','Pina',to_date('19830523','YYYYMMDD'),'Professor Assistente');
Insert into Professor values (148912837,'Joaquim','Silva',to_date('19820310','YYYYMMDD'),'Catedrático');
Insert into Professor values (248193163,'Carlos','Lucas',to_date('19860426','YYYYMMDD'),'Catedrático');
Insert into Professor values (308746214,'Artur','Fonseca',to_date('19850606','YYYYMMDD'),'Associado');
Insert into Professor values (437284219,'Sara','Moreira',to_date('19840324','YYYYMMDD'),'Auxiliar');

--Introdução de dados na tabela Departamento

Insert into Departamento values (1,'Informática','Sala 39',382643178);
Insert into Departamento values (2,'Matematica','Sala 59',427374918);
Insert into Departamento values (3,'Eletrónica','Sala 31',418321902);
Insert into Departamento values (4,'Direito','Sala 13',391837498);
Insert into Departamento values (5,'Quimica','Sala 23',248193163);
Insert into Departamento values (6,'Historia','Sala 34',235672834);
Insert into Departamento values (7,'Gestão','Sala 44',391837498);
Insert into Departamento values (8,'Ciências Politicas','Sala 19',148912837);
Insert into Departamento values (9,'Marketing','Sala 45',124672354);
Insert into Departamento values (10,'Medicina','Sala 6',391837498);



--Introdução de dados na tabela Estudante

Insert into Estudante values (225078147,'Miguel Bastos',to_date('19960124','YYYYMMDD'),'Mestrado',NULL,5);
Insert into Estudante values (278640494,'Ricardo Antunes',to_date('19920104','YYYYMMDD'),'Mestrado',NULL,5);
Insert into Estudante values (299482367,'Francisco Carregal',to_date('19900924','YYYYMMDD'),'Mestrado',NULL,6);
Insert into Estudante values (278283012,'Daniel Azevedo',to_date('19910125','YYYYMMDD'),'Mestrado',NULL,1);
Insert into Estudante values (286465957,'Pedro Carvalho',to_date('19970126','YYYYMMDD'),'Mestrado',NULL,3);
Insert into Estudante values (205536549,'Daniel Rodrigues',to_date('19930127','YYYYMMDD'),'Mestrado',NULL,8);
Insert into Estudante values (288569954,'Caio Barbosa',to_date('19991018','YYYYMMDD'),'Mestrado',NULL,9);
Insert into Estudante values (219516545,'Rafael Cunha',to_date('19980910','YYYYMMDD'),'Mestrado',NULL,3);
Insert into Estudante values (227865677,'Rodrigo Azevedo',to_date('19950530','YYYYMMDD'),'Mestrado',NULL,7);
Insert into Estudante values (274672464,'Rita Borges',to_date('19950131','YYYYMMDD'),'Mestrado',NULL,7);
Insert into Estudante values (290474140,'Bruno Cavalcanti',to_date('19990323','YYYYMMDD'),'Mestrado',NULL,9);
Insert into Estudante values (244847380,'Eduardo Gonçalves',to_date('19840810','YYYYMMDD'),'Doutoramento',NULL,1);
Insert into Estudante values (208490469,'Samuel Costa',to_date('19961024','YYYYMMDD'),'Mestrado',NULL,6);
Insert into Estudante values (222418630,'Arthur Carvalho',to_date('19980815','YYYYMMDD'),'Mestrado',NULL,2);
Insert into Estudante values (274826054,'Bruna Costa',to_date('19980126','YYYYMMDD'),'Mestrado',NULL,5);
Insert into Estudante values (205537545,'Renan Castro',to_date('19980207','YYYYMMDD'),'Mestrado',NULL,10);
Insert into Estudante values (204760801,'Enzo Cavalcanti',to_date('19971118','YYYYMMDD'),'Mestrado',NULL,6);
Insert into Estudante values (293192537,'Vinicius Lima',to_date('19920729','YYYYMMDD'),'Doutoramento',NULL,8);
Insert into Estudante values (181206153,'José Ribeiro',to_date('19931230','YYYYMMDD'),'Mestrado',NULL,8);
Insert into Estudante values (124295681,'Maria Lurdes',to_date('19950311','YYYYMMDD'),'Mestrado',NULL,7);
Insert into Estudante values (124314473,'Enzo Cardoso',to_date('19980212','YYYYMMDD'),'Mestrado',NULL,2);
Insert into Estudante values (162389876,'Luis Carvalho',to_date('19960923','YYYYMMDD'),'Mestrado',NULL,9);
Insert into Estudante values (130584525,'Juliana Sousa ',to_date('19970824','YYYYMMDD'),'Mestrado',NULL,8);
Insert into Estudante values (175760411,'André Sousa',to_date('19980115','YYYYMMDD'),'Mestrado',NULL,9);
Insert into Estudante values (249669544,'Sofia Almeida ',to_date('19950706','YYYYMMDD'),'Mestrado',NULL,1);
Insert into Estudante values (211923192,'Vitor Cardoso ',to_date('19970927','YYYYMMDD'),'Mestrado',NULL,9);
Insert into Estudante values (199745943,'Luis Lima',to_date('19980218','YYYYMMDD'),'Mestrado',NULL,1);
Insert into Estudante values (121258467,'Lucas Pereira',to_date('19731119','YYYYMMDD'),'Doutoramento',NULL,4);
Insert into Estudante values (266829546,'Caio Correia',to_date('19801120','YYYYMMDD'),'Doutoramento',NULL,10);
Insert into Estudante values (262578204,'Guilherme Rodrigues',to_date('19920601','YYYYMMDD'),'Doutoramento',NULL,8);

--Atualização de tabela para adicionar contribuinte de estudante conselheiro

UPDATE Estudante SET ConselheiroContri = 274672464 WHERE N_Contri = 225078147;
UPDATE Estudante SET ConselheiroContri = 278283012 WHERE N_Contri = 278640494;
UPDATE Estudante SET ConselheiroContri = 266829546 WHERE N_Contri = 299482367;
UPDATE Estudante SET ConselheiroContri = 299482367 WHERE N_Contri = 278283012;
UPDATE Estudante SET ConselheiroContri = 278640494 WHERE N_Contri = 286465957;
UPDATE Estudante SET ConselheiroContri = 278640494 WHERE N_Contri = 205536549;
UPDATE Estudante SET ConselheiroContri = 266829546 WHERE N_Contri = 288569954;
UPDATE Estudante SET ConselheiroContri = 262578204 WHERE N_Contri = 219516545;
UPDATE Estudante SET ConselheiroContri = 181206153 WHERE N_Contri = 227865677;
UPDATE Estudante SET ConselheiroContri = 278640494 WHERE N_Contri = 274672464;
UPDATE Estudante SET ConselheiroContri = 274826054 WHERE N_Contri = 290474140;
UPDATE Estudante SET ConselheiroContri = 121258467 WHERE N_Contri = 244847380;
UPDATE Estudante SET ConselheiroContri = 162389876 WHERE N_Contri = 208490469;
UPDATE Estudante SET ConselheiroContri = 278283012 WHERE N_Contri = 222418630;
UPDATE Estudante SET ConselheiroContri = 162389876 WHERE N_Contri = 274826054;
UPDATE Estudante SET ConselheiroContri = 249669544 WHERE N_Contri = 205537545;
UPDATE Estudante SET ConselheiroContri = 244847380 WHERE N_Contri = 204760801;
UPDATE Estudante SET ConselheiroContri = 278283012 WHERE N_Contri = 293192537;
UPDATE Estudante SET ConselheiroContri = 266829546 WHERE N_Contri = 181206153;
UPDATE Estudante SET ConselheiroContri = 205536549 WHERE N_Contri = 124295681;
UPDATE Estudante SET ConselheiroContri = 278640494 WHERE N_Contri = 124314473;
UPDATE Estudante SET ConselheiroContri = 266829546 WHERE N_Contri = 162389876;
UPDATE Estudante SET ConselheiroContri = 274672464 WHERE N_Contri = 130584525;


--Introdução de dados na tabela Projeto

Insert into Projeto values (1,to_date('20180110','YYYYMMDD'),to_date('20181202','YYYYMMDD'),'UAL',3590,246728918);
Insert into Projeto values (2,to_date('20180124','YYYYMMDD'),to_date('20181026','YYYYMMDD'),'Fundação BCP',4672,235672834);
Insert into Projeto values (3,to_date('20180128','YYYYMMDD'),to_date('20181222','YYYYMMDD'),'Fundação BCP',8422,235672834);
Insert into Projeto values (4,to_date('20181002','YYYYMMDD'),to_date('20181115','YYYYMMDD'),'Fundação Mário Soares',7322,148912837);
Insert into Projeto values (5,to_date('20181007','YYYYMMDD'),to_date('20181126','YYYYMMDD'),'Fundação Champalimaud',9519,437284219);
Insert into Projeto values (6,to_date('20181103','YYYYMMDD'),to_date('20190105','YYYYMMDD'),'Fundação Champalimaud',6047,248193163);
Insert into Projeto values (7,to_date('20181104','YYYYMMDD'),to_date('20190107','YYYYMMDD'),'Fundação Mário Soares',2050,248193163);
Insert into Projeto values (8,to_date('20181113','YYYYMMDD'),to_date('20190109','YYYYMMDD'),'Fundação BCP',5902,124672354);
Insert into Projeto values (9,to_date('20181116','YYYYMMDD'),to_date('20190126','YYYYMMDD'),'Fundação Calouste Gulbenkian',3560,437284219);
Insert into Projeto values (10,to_date('20181121','YYYYMMDD'),to_date('20190117','YYYYMMDD'),'Fundação Calouste Gulbenkian',2340,418321902);
Insert into Projeto values (11,to_date('20181113','YYYYMMDD'),to_date('20220310','YYYYMMDD'),'UAL',2500,437284219);

--Introdução de dados na tabela E_Trabalha

Insert into E_Trabalha values (225078147,1,246728918);
Insert into E_Trabalha values (225078147,2,235672834);
Insert into E_Trabalha values (293192537,3,235672834);
Insert into E_Trabalha values (199745943,4,148912837);
Insert into E_Trabalha values (266829546,5,437284219);
Insert into E_Trabalha values (162389876,6,248193163);
Insert into E_Trabalha values (227865677,7,248193163);
Insert into E_Trabalha values (225078147,8,124672354);
Insert into E_Trabalha values (204760801,9,148912837);
Insert into E_Trabalha values (249669544,10,418321902);
Insert into E_Trabalha values (199745943,1,235672834);
Insert into E_Trabalha values (262578204,1,308746214);


--Introdução de dados na tabela Trabalha

Insert into Trabalha values (20,1,382643178);
Insert into Trabalha values (15,2,427374918);
Insert into Trabalha values (10,3,418321902);
Insert into Trabalha values (25,4,391837498);
Insert into Trabalha values (30,5,248193163);
Insert into Trabalha values (50,6,235672834);
Insert into Trabalha values (90,7,391837498);
Insert into Trabalha values (35,8,148912837);
Insert into Trabalha values (40,9,124672354);
Insert into Trabalha values (40,10,391837498);


--Introdução de dados na tabela P_Trabalha

Insert into P_Trabalha values (246728918,1);
Insert into P_Trabalha values (235672834,2);
Insert into P_Trabalha values (235672834,3);
Insert into P_Trabalha values (148912837,4);
Insert into P_Trabalha values (437284219,5);
Insert into P_Trabalha values (248193163,6);
Insert into P_Trabalha values (248193163,7);
Insert into P_Trabalha values (124672354,8);
Insert into P_Trabalha values (148912837,9);
Insert into P_Trabalha values (418321902,10);
Insert into P_Trabalha values (124672354,10);
Insert into P_Trabalha values (382643178,10);
Insert into P_Trabalha values (246728918,3);
Insert into P_Trabalha values (382643178,1);
Insert into P_Trabalha values (382643178,5);


--Introdução de dados na tabela Contacto_Estudante

Insert into Contato_estudante values (225078147,913594759);
Insert into Contato_estudante values (278640494,935860800);
Insert into Contato_estudante values (299482367,967662105);
Insert into Contato_estudante values (278283012,916253741);
Insert into Contato_estudante values (286465957,914373261);
Insert into Contato_estudante values (205536549,936599516);
Insert into Contato_estudante values (288569954,969203788);
Insert into Contato_estudante values (219516545,962874296);
Insert into Contato_estudante values (227865677,916302471);
Insert into Contato_estudante values (274672464,916308363);
Insert into Contato_estudante values (290474140,931868243);
Insert into Contato_estudante values (244847380,218643695);
Insert into Contato_estudante values (208490469,211732380);
Insert into Contato_estudante values (222418630,917264561);
Insert into Contato_estudante values (274826054,935147537);
Insert into Contato_estudante values (205537545,936443947);
Insert into Contato_estudante values (204760801,212836016);
Insert into Contato_estudante values (293192537,962240900);
Insert into Contato_estudante values (181206153,211248966);
Insert into Contato_estudante values (124295681,917912550);
Insert into Contato_estudante values (124314473,914514676);
Insert into Contato_estudante values (162389876,933740944);
Insert into Contato_estudante values (130584525,212246674);
Insert into Contato_estudante values (175760411,913544350);
Insert into Contato_estudante values (249669544,935286490);
Insert into Contato_estudante values (211923192,962635494);
Insert into Contato_estudante values (199745943,214034136);
Insert into Contato_estudante values (121258467,933871192);
Insert into Contato_estudante values (266829546,964120405);
Insert into Contato_estudante values (262578204,214176846);

--Introdução de dados na tabela Especialidade_Professor

Insert into Especialidade_Professor values (124672354,'Mecânica');
Insert into Especialidade_Professor values (235672834,'Base de Dados');
Insert into Especialidade_Professor values (382643178,'Sistemas');
Insert into Especialidade_Professor values (418321902,'Sistemas');
Insert into Especialidade_Professor values (137283938,'Física');
Insert into Especialidade_Professor values (246728918,'Culinária');
Insert into Especialidade_Professor values (391837498,'Quimica');
Insert into Especialidade_Professor values (427374918,'Quimica');
Insert into Especialidade_Professor values (148912837,'Culinária');
Insert into Especialidade_Professor values (248193163,'Física');
Insert into Especialidade_Professor values (308746214,'Engenharia de Redes');
Insert into Especialidade_Professor values (437284219,'Inteligência Artifical');

CREATE OR REPLACE trigger checkcont
BEFORE INSERT OR UPDATE ON e_trabalha
FOR EACH ROW
DECLARE
v_cont number;
begin
select count(SupervisorContri) into v_cont from e_trabalha;
IF (v_cont > 3) THEN 
RAISE_APPLICATION_ERROR (-20502,
 'O professor não pode supervisionar mais que 3 projetos.');
end if;
END;
