-- 코드를 입력하세요

-- 1. 2022년 10월 5일에 등록 조건 
-- 2. 게시글 ID, 작성자 ID, 게시글 제목, 가격, 거래상태를 조회
-- 3. 거래상태 : ALE - 판매중, RESERVED - 예약중, DONE - 거래완료 분류 출력
-- 4. 게시글 ID 기준, 내림차순 정렬

#1차 시도 (중첩IF사용)
SELECT board_id, writer_id, title, price, 
        IF(status LIKE "SALE","판매중",
            IF(status LIKE "DONE", "거래완료", "예약중"))as status
FROM used_goods_board
WHERE DATE_FORMAT(created_date, "%Y-%m-%d") = "2022-10-05"
ORDER BY 1 DESC;

#2차 시도 (CASE문 사용)
SELECT board_id, writer_id, title, price, 
        CASE 
            WHEN status LIKE "SALE" THEN "판매중"
            WHEN status LIKE "DONE" THEN "거래완료"
            WHEN status LIKE "RESERVED" THEN "예약중"
        END 
        AS status
FROM used_goods_board
WHERE DATE_FORMAT(created_date, "%Y-%m-%d") = "2022-10-05"
ORDER BY 1 DESC;


#date format말고 date함수 사용가능한데 자료형의 변화차이가 없음.