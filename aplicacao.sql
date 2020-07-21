/* 1.a) Listar o total de projetos cujo investigador principal	é do departamento xpto (trocar xpto	
pelo NOME de um	departamento inserido na vossa BD) */

DECLARE
d_nome departamento.nome%type := 'Historia';
p_count Number(1);
BEGIN
Select count(n_id)  into p_count FROM projeto,departamento WHERE projeto.profcontri = departamento.gerentecontri AND departamento.nome = d_nome;
dbms_output.put_line('O professor do curso de ' || d_nome || ' é investigador principal de ' || p_count || ' projetos. ');
END;

-- 1.b) Listar o nome completo de todos os	professores e nome do respectivo departamento onde trabalha esses professores

declare
cursor cur_c is select * from professor INNER JOIN departamento ON professor.n_contri = departamento.gerentecontri;
v_cur cur_c%rowtype;
begin
open cur_c;
loop
fetch cur_c into v_cur;
exit when cur_c%notfound;
dbms_output.put_line('O professor: '|| v_cur.nomeproprio ||' '|| v_cur.apelido ||', trabalha no departamento: '|| v_cur.nome);
end loop;
close cur_c;
end;

/* 2. Crie um bloco PL/SQL (procedimento, função, trigger, etc., o que achar mais conveniente) chamado calcula_orcamento para  calcular o orçamento disponível para um dado departamento (de acordo com projetos que estão associados a ele) */

CREATE OR REPLACE PROCEDURE calcula_orcamento
AS
v_nome varchar2(30);
v_profcontri departamento.gerentecontri%type;
v_orc number;
BEGIN
for o in (select SUM(projeto.orcamento) orcamento, departamento.nome from projeto INNER JOIN departamento ON projeto.profcontri = departamento.gerentecontri GROUP BY departamento.nome)
loop 
dbms_output.put_line('O departamento: '|| o.nome ||', '|| 'tem um orçamento de: '|| o.orcamento ||'€');
end loop;
END calcula_orcamento;

-- 3. Crie um bloco PL/SQL para	testar o "calcula_orcamento".

begin
calcula_orcamento();
end;
