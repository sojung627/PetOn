-- member 더미 (admin 1명, doctor 3명, user 6명)

-- admin 1명
INSERT INTO member (
  mem_id, mem_pwd, mem_name, mem_tel, mem_email,
  mem_ip, mem_role_idx, mem_grade_idx, mem_bday, mem_regdate
) VALUES (
  'admin1', '1234', '관리자', '010-0000-0000', 'admin1@pet.com',
  '172.30.1.0', 3, 4, '1990-01-01', CURRENT_DATE
);

-- doctor 3명
INSERT INTO member (
  mem_id, mem_pwd, mem_name, mem_tel, mem_email,
  mem_ip, mem_role_idx, mem_grade_idx, mem_bday, mem_regdate
) VALUES (
  'doc1', '1234', '수의사1', '010-1111-1111', 'doc1@pet.com',
  '172.30.1.1', 2, 3, '1985-03-10', CURRENT_DATE
);

INSERT INTO member (
  mem_id, mem_pwd, mem_name, mem_tel, mem_email,
  mem_ip, mem_role_idx, mem_grade_idx, mem_bday, mem_regdate
) VALUES (
  'doc2', '1234', '수의사2', '010-2222-2222', 'doc2@pet.com',
  '172.30.1.2', 2, 2, '1988-07-22', CURRENT_DATE
);

INSERT INTO member (
  mem_id, mem_pwd, mem_name, mem_tel, mem_email,
  mem_ip, mem_role_idx, mem_grade_idx, mem_bday, mem_regdate
) VALUES (
  'doc3', '1234', '수의사3', '010-3333-3333', 'doc3@pet.com',
  '172.30.1.3', 2, 1, '1992-11-05', CURRENT_DATE
);

-- user 6명
INSERT INTO member (
  mem_id, mem_pwd, mem_name, mem_tel, mem_email,
  mem_ip, mem_role_idx, mem_grade_idx, mem_bday, mem_regdate
) VALUES (
  'user1', '1234', '홍길동', '010-4444-4444', 'user1@pet.com',
  '172.30.1.4', 1, 1, '1995-02-14', CURRENT_DATE
);

INSERT INTO member (
  mem_id, mem_pwd, mem_name, mem_tel, mem_email,
  mem_ip, mem_role_idx, mem_grade_idx, mem_bday, mem_regdate
) VALUES (
  'user2', '1234', '김철수', '010-5555-5555', 'user2@pet.com',
  '172.30.1.5', 1, 2, '1993-06-30', CURRENT_DATE
);

INSERT INTO member (
  mem_id, mem_pwd, mem_name, mem_tel, mem_email,
  mem_ip, mem_role_idx, mem_grade_idx, mem_bday, mem_regdate
) VALUES (
  'user3', '1234', '이영희', '010-6666-6666', 'user3@pet.com',
  '172.30.1.6', 1, 1, '1998-09-01', CURRENT_DATE
);

INSERT INTO member (
  mem_id, mem_pwd, mem_name, mem_tel, mem_email,
  mem_ip, mem_role_idx, mem_grade_idx, mem_bday, mem_regdate
) VALUES (
  'user4', '1234', '박민수', '010-7777-7777', 'user4@pet.com',
  '172.30.1.7', 1, 3, '1991-12-25', CURRENT_DATE
);

INSERT INTO member (
  mem_id, mem_pwd, mem_name, mem_tel, mem_email,
  mem_ip, mem_role_idx, mem_grade_idx, mem_bday, mem_regdate
) VALUES (
  'user5', '1234', '정아름', '010-8888-8888', 'user5@pet.com',
  '172.30.1.8', 1, 2, '1994-04-18', CURRENT_DATE
);

INSERT INTO member (
  mem_id, mem_pwd, mem_name, mem_tel, mem_email,
  mem_ip, mem_role_idx, mem_grade_idx, mem_bday, mem_regdate
) VALUES (
  'user6', '1234', '최지훈', '010-9999-9999', 'user6@pet.com',
  '172.30.1.9', 1, 1, '1999-08-09', CURRENT_DATE
);