-- 0. 코드 테이블
CREATE TABLE role (
    role_idx    BIGSERIAL    PRIMARY KEY,	-- 회원 종류(일반인 / 수의사 / 관리자)
    role_name   VARCHAR(20)  NOT NULL       -- user / doctor / admin
);

CREATE TABLE grade (
    grade_idx             BIGSERIAL      PRIMARY KEY,	-- 회원 등급
    grade_name            VARCHAR(20)  	 NOT NULL,	 -- basic / silver / gold / vip
    grade_discount_rate   NUMERIC(5,2)   NOT NULL  	 -- 0.05, 0.10, 0.20
);

-- 1. 회원
CREATE TABLE member (
    mem_idx        BIGSERIAL     PRIMARY KEY,	-- 회원 번호
    mem_id         VARCHAR(50)   UNIQUE NOT NULL,	-- 아이디
    mem_pwd        VARCHAR(100)  NOT NULL,			-- 비번
    mem_name       VARCHAR(50),		-- 이름
    mem_tel        VARCHAR(20),		-- 연락처
    mem_email      VARCHAR(100),	-- 이메일
    mem_ip		   VARCHAR(100)   NOT NULL,		-- ip 주소
    mem_role_idx   BIGINT         NOT NULL,		-- FK
    mem_grade_idx  BIGINT         NOT NULL,		-- FK
    mem_bday       DATE,						-- 생일
    mem_regdate    TIMESTAMP DEFAULT CURRENT_TIMESTAMP,		-- 회원 가입일
    mem_is_deleted CHAR(1) 		  DEFAULT 'N',				-- 탈퇴 여부
    mem_deldate	   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,		-- 탈퇴한 날짜
    CONSTRAINT fk_member_role
        FOREIGN KEY (mem_role_idx)  REFERENCES role(role_idx),
    CONSTRAINT fk_member_grade
        FOREIGN KEY (mem_grade_idx) REFERENCES grade(grade_idx),
    CONSTRAINT ck_mem_is_deleted
    	CHECK (mem_is_deleted IN ('Y','N'))
);

CREATE TABLE member_profile (
    mem_idx        BIGINT        PRIMARY KEY,  -- PK + FK
    mem_nickname   VARCHAR(50),		-- 닉네임
    mem_intro      VARCHAR(255),	-- 자기소개
    mem_img        VARCHAR(255),	-- 프로필 사진
    CONSTRAINT fk_profile_member
        FOREIGN KEY (mem_idx) REFERENCES member(mem_idx)
        ON DELETE CASCADE
);

CREATE TABLE member_addr (
    addr_idx          BIGSERIAL     PRIMARY KEY,	-- 주소 번호
    mem_idx           BIGINT        NOT NULL,		-- 회원 번호
    mem_zipcode       VARCHAR(10),		-- 우편주소
    mem_addr          VARCHAR(255),		-- 주소
    mem_addr_detail   VARCHAR(255),		-- 상세주소
    CONSTRAINT fk_addr_member
        FOREIGN KEY (mem_idx) REFERENCES member(mem_idx)
        ON DELETE CASCADE
);