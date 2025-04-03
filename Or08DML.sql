/***
파일명 : Or08DML.sql
DML : Data Manipulation Language(데이터 조작어)
설명 : 레코드를 조작할 때 사용하는 쿼리문. 앞에서 학습했던 select문을 비롯하여
      update(레코드수정), delete(삭제), insert(입력)문이 있다.      
***/
--education 계정에서 학습

--새로운 테이블 생성
create table tb_sample (
    no number(10),
    name varchar(20),
    loc varchar2(15),
    manager varchar(30)
);

desc tb_sample;

/*
레코드 입력하기 : insert
    레코드 입력을 위한 쿼리문으로 문자형은 반드시 '로 감싸야하고
    숫자형은 '없이 기술한다. 만약 숫자형을 감싸게 되면 실행시 자동으로 변환되어
    입력된다.
*/
--레코드입력1 : 컬럼을 지정한 후 insert
insert into tb_sample(no,name, loc, manager)
    values (10, '기획실', '서울', '유비');
insert into tb_sample(no,name, loc, manager)
    values (20, '전산팀', '수원', '관우');

select * from tb_sample;

--레코드입력2 : 컬럼 지정없이 전체 컬럼을 대상으로 insert

insert into tb_sample values (30, '영업팀', '대구', '장비');
insert into tb_sample values (40, '인사팀', '부산', '조자룡');

select * from tb_sample;
/*
컬럼을 지정해서 insert 하는 경우 데이터를 삽입하지 않을 컬럼을 지정할 수 있다.
아래의 경우 name컬럼은 null값이 삽입된다.
*/
insert into tb_sample(no, loc, manager) values (50, '제주', '동탁');


























