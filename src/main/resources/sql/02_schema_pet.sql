-- 2. 반려동물
CREATE TABLE pet (
    pet_idx      BIGSERIAL     PRIMARY KEY,		-- 펫 idx
    mem_idx      BIGINT        NOT NULL,		-- 회원 idx
    pet_name     VARCHAR(50)   NOT NULL,		-- 펫 이름
    is_primary   CHAR(1)       DEFAULT 'N',		-- 펫 대표동물 여부
    pet_species  VARCHAR(50),	-- 펫 종류 ex) 강아지, 고양이
    pet_gender   VARCHAR(10),	-- 펫 성별
    pet_breed    VARCHAR(50),	-- 펫 품종 ex) 포메, 푸들, 시츄, 진돗개 .... 등등
    pet_age      INTEGER,		-- 펫 나이
    pet_bday     DATE,			-- 펫 생일
    CONSTRAINT fk_pet_member
        FOREIGN KEY (mem_idx) REFERENCES member(mem_idx)
        ON DELETE CASCADE,
	CONSTRAINT ck_is_primary
		CHECK (is_primary IN ('Y','N'))
);