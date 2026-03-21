-- 1) role 코드
INSERT INTO role (role_name) VALUES ('user');
INSERT INTO role (role_name) VALUES ('doctor');
INSERT INTO role (role_name) VALUES ('admin');


-- 2) grade 코드
INSERT INTO grade (grade_name, grade_discount_rate) VALUES ('basic', 0.00);
INSERT INTO grade (grade_name, grade_discount_rate) VALUES ('silver', 0.05);
INSERT INTO grade (grade_name, grade_discount_rate) VALUES ('gold', 0.10);
INSERT INTO grade (grade_name, grade_discount_rate) VALUES ('vip', 0.20);


-- 3) item_type 코드
INSERT INTO item_type (item_type_category) VALUES ('일반');
INSERT INTO item_type (item_type_category) VALUES ('사료');
INSERT INTO item_type (item_type_category) VALUES ('간식');
INSERT INTO item_type (item_type_category) VALUES ('장난감');
INSERT INTO item_type (item_type_category) VALUES ('위생용품');
INSERT INTO item_type (item_type_category) VALUES ('배변용품');
INSERT INTO item_type (item_type_category) VALUES ('의류');
INSERT INTO item_type (item_type_category) VALUES ('방석/쿠션');
INSERT INTO item_type (item_type_category) VALUES ('야외활동');
INSERT INTO item_type (item_type_category) VALUES ('하우스/이동장');


-- 4) orders_status 코드
INSERT INTO orders_status (orders_status_name) VALUES ('결제대기');
INSERT INTO orders_status (orders_status_name) VALUES ('결제완료');
INSERT INTO orders_status (orders_status_name) VALUES ('배송중');
INSERT INTO orders_status (orders_status_name) VALUES ('배송완료');
INSERT INTO orders_status (orders_status_name) VALUES ('취소됨');
INSERT INTO orders_status (orders_status_name) VALUES ('환불완료');


-- 5) board_type 코드
-- 공지사항: 관리자만 글쓰기, 댓글 X
INSERT INTO board_type (
  board_type_code, board_type_name,
  board_can_comment, board_min_role
) VALUES (
  'NOTICE', '공지사항', 'N', 3
);

-- 이벤트: 관리자만 글쓰기, 댓글 X
INSERT INTO board_type (
  board_type_code, board_type_name,
  board_can_comment, board_min_role
) VALUES (
  'EVENT', '이벤트', 'N', 3
);

-- 연구소: 수의사 이상 글쓰기, 댓글 X
INSERT INTO board_type (
  board_type_code, board_type_name,
  board_can_comment, board_min_role
) VALUES (
  'LAB', '연구소', 'N', 2
);

-- QnA: 유저 이상 글쓰기, 댓글은 나중에 로직으로 수의사 이상 처리
INSERT INTO board_type (
  board_type_code, board_type_name,
  board_can_comment, board_min_role
) VALUES (
  'QNA', 'QnA', 'Y', 1
);

-- 자유게시판: 유저 모두 글/댓글 가능
INSERT INTO board_type (
  board_type_code, board_type_name,
  board_can_comment, board_min_role
) VALUES (
  'FREE', '자유게시판', 'Y', 1
);