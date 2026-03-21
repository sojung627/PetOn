-- pet 더미데이터 (회원 5~10 중 일부만 펫 보유)

-- user1 (mem_idx = 5) - 강아지 1마리 (대표)
INSERT INTO pet (
  mem_idx, pet_name, is_primary,
  pet_species, pet_gender, pet_breed, pet_age, pet_bday
) VALUES (
  5, '콩이', 'Y',
  '강아지', 'F', '말티즈', 3, '2022-03-10'
);

-- user2 (mem_idx = 6) - 고양이 2마리 (대표 1마리)
INSERT INTO pet (
  mem_idx, pet_name, is_primary,
  pet_species, pet_gender, pet_breed, pet_age, pet_bday
) VALUES (
  6, '호두', 'Y',
  '고양이', 'M', '코리안숏헤어', 2, '2023-01-05'
);

INSERT INTO pet (
  mem_idx, pet_name, is_primary,
  pet_species, pet_gender, pet_breed, pet_age, pet_bday
) VALUES (
  6, '라떼', 'N',
  '고양이', 'F', '러시안블루', 4, '2021-07-20'
);

-- user3 (mem_idx = 7) - 반려동물 없음

-- user4 (mem_idx = 8) - 강아지 1마리
INSERT INTO pet (
  mem_idx, pet_name, is_primary,
  pet_species, pet_gender, pet_breed, pet_age, pet_bday
) VALUES (
  8, '보리', 'Y',
  '강아지', 'M', '시바이누', 5, '2020-11-11'
);

-- user5 (mem_idx = 9) - 고양이 1마리
INSERT INTO pet (
  mem_idx, pet_name, is_primary,
  pet_species, pet_gender, pet_breed, pet_age, pet_bday
) VALUES (
  9, '나비', 'Y',
  '고양이', 'F', '샴', 1, '2024-02-01'
);

-- user6 (mem_idx = 10) - 강아지 2마리
INSERT INTO pet (
  mem_idx, pet_name, is_primary,
  pet_species, pet_gender, pet_breed, pet_age, pet_bday
) VALUES (
  10, '몽이', 'Y',
  '강아지', 'M', '푸들', 4, '2021-09-09'
);

INSERT INTO pet (
  mem_idx, pet_name, is_primary,
  pet_species, pet_gender, pet_breed, pet_age, pet_bday
) VALUES (
  10, '탄이', 'N',
  '강아지', 'M', '웰시코기', 2, '2023-06-15'
);