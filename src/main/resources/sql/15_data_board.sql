-- board 더미

-- 1) 공지사항: 관리자(mem_idx = 1), NOTICE(1)
INSERT INTO board (
    mem_idx, board_title, board_content, board_ip,
    board_tag, board_readhit, board_type_idx, board_regdate, board_moddate
) VALUES (
    1,
    '사이트 이용 안내', '커뮤니티 이용 수칙을 안내드립니다.',
    '172.30.1.10', 'NONE', 129, 1, CURRENT_DATE, CURRENT_DATE
);

-- 2) 연구소 글: 수의사(mem_idx = 2), LAB(3)
INSERT INTO board (
    mem_idx, board_title, board_content, board_ip,
    board_tag, board_readhit, board_type_idx, board_regdate, board_moddate
) VALUES (
    2,
    '강아지 피부질환 케이스 공유', '최근 진료한 피부질환 사례를 공유합니다.',
    '172.30.1.11', 'DOG', 34, 3, CURRENT_DATE, CURRENT_DATE
);

-- 3) 자유게시판 글: 일반 유저(mem_idx = 5), FREE(5)
INSERT INTO board (
    mem_idx, board_title, board_content, board_ip,
    board_tag, board_readhit, board_type_idx, board_regdate, board_moddate
) VALUES (
    5,
    '우리 집 고양이 자랑', '사진은 댓글에 올릴게요!',
    '172.30.1.12', 'CAT', 13, 5, CURRENT_DATE, CURRENT_DATE
);

-- 4) QnA 글: 일반 유저(mem_idx = 8), QnA(4)
INSERT INTO board (
    mem_idx, board_title, board_content, board_ip,
    board_tag, board_readhit, board_type_idx, board_regdate, board_moddate
) VALUES (
    8,
    '강아지가 밥을 안 먹어요ㅠ', '이틀째 밥을 안 먹는데 왜 이런거죠ㅠㅠ',
    '172.30.1.88', 'DOG', 5, 4, CURRENT_DATE, CURRENT_DATE
);

-- reply 더미

-- 자유게시판 글(board_idx = 3) 댓글
INSERT INTO reply (
    board_idx, mem_idx,
    reply_content, reply_ip, reply_regdate, reply_moddate,
    reply_ref, reply_step, reply_depth
) VALUES (
    3, 6,
    '고양이 너무 귀여워요!', '172.30.1.20', CURRENT_DATE, CURRENT_DATE,
    1, 0, 0
);

-- QnA 글(board_idx = 4) 수의사 댓글
INSERT INTO reply (
    board_idx, mem_idx,
    reply_content, reply_ip, reply_regdate, reply_moddate,
    reply_ref, reply_step, reply_depth
) VALUES (
    4, 2,
    '해당 증상은 병원 내원 후 검진을 권장드립니다.', '172.30.1.21', CURRENT_DATE, CURRENT_DATE,
    2, 0, 0
);

SELECT * FROM board;

DELETE FROM board WHERE board_idx = 110;