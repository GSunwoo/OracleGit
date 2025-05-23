/****
파일명 : Or05Date.sql
날짜함수
설명 : 년,월,일,시,분,초의 포맷으로 날짜형식을 지정하거나 날짜를 계산할 때 사용하는 함수
****/

/*
months_between() : 현재날짜와 기준날짜 사이의 개월수를 반환한다.
    형식] months_between(현재날짜, 기준날짜[과거]);
*/

select
    months_between(sysdate, '20240101'),
    ceil(months_between(sysdate, '20240101')) "올림처리",
    floor(months_between(sysdate, '20240101')) "버림처리"
from dual;

/*
퀴즈] 만약 "2020년01월01일" 문자열을 그대로 적용해서 개월수를 계산하려면??
*/
/*
"2020년01월01일" 이 문자열은 날짜의 형식으로 인식되지 않으므로 to_date를 통해 날짜형식으로
변환해야한다. 또한 날짜서식 사이에 한글은 허용되지 않으므로 "로 감싸줘야한다.
*/
select
    months_between(sysdate, to_date('2020년01월01일','yyyy"년"mm"월"dd"일"'))"그냥",
    ceil(months_between(sysdate, to_date('2020년01월01일','yyyy"년"mm"월"dd"일"'))) "올림처리",
    floor(months_between(sysdate, to_date('2020년01월01일','yyyy"년"mm"월"dd"일"'))) "버림처리"
from dual;

/*
last_day() : 해당월의 마지막 날짜를 반환한다.
*/
select last_day('220403') from dual; -- 4월은 30일까지 있음
select last_day('240201') from dual; -- 24년은 윤년이므로 29일 출력
select last_day('250201') from dual; -- 일반적으로 2월은 28일까지 있음

-- 컬럼이 date 타입인 경우 간단한 날짜연산이 가능하다
select
    sysdate "오늘",
    sysdate + 1 "내일",
    sysdate - 7 "일주일전"
from dual;









