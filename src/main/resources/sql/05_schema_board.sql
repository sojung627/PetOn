-- 5. 커뮤니티
CREATE TABLE board_type (
    board_type_idx    BIGSERIAL      PRIMARY KEY,
    board_type_code   VARCHAR(50)    UNIQUE NOT NULL,
    board_type_name   VARCHAR(100)   NOT NULL,
    board_can_comment CHAR(1)        DEFAULT 'Y' CHECK (board_can_comment IN ('Y','N')),
    board_min_role    INTEGER        NOT NULL
);

DROP TABLE board CASCADE;
CREATE TABLE board (
    board_idx      	  BIGSERIAL       PRIMARY KEY,
    mem_idx        	  BIGINT          NOT NULL,
    board_title       VARCHAR(200)    NOT NULL,
    board_content 	  TEXT,
    board_ip       	  VARCHAR(40)	  NOT NULL,
    board_tag		  VARCHAR(40)	  DEFAULT 'NONE',	-- DOG / CAT / NONE
    board_thumbnail   VARCHAR(255), 
    board_readhit	  INTEGER		  DEFAULT 0,
    board_type_idx 	  BIGINT		  NOT NULL,
    board_regdate  	  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    board_moddate  	  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    board_is_deleted  CHAR(1) 		  DEFAULT 'N',	
    board_deldate	  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_board_member
        FOREIGN KEY (mem_idx) REFERENCES member(mem_idx)
        ON DELETE CASCADE,
    CONSTRAINT fk_board_board_type
        FOREIGN KEY (board_type_idx) REFERENCES board_type(board_type_idx),
    CONSTRAINT ck_board_is_deleted
    	CHECK (board_is_deleted IN ('Y','N')),
    CONSTRAINT ck_board_tag
    	CHECK (board_tag IN ('DOG','CAT','NONE'))
);

CREATE TABLE board_file (
    file_idx            BIGSERIAL       PRIMARY KEY,
    board_idx           BIGINT          NOT NULL,
    file_original_name  VARCHAR(255),
    file_saved_name     VARCHAR(255),
    file_path           VARCHAR(500),
    file_size           INTEGER,
    file_type           VARCHAR(50),
    file_regdate        DATE            DEFAULT CURRENT_DATE,
    CONSTRAINT fk_board_file_board
        FOREIGN KEY (board_idx) REFERENCES board(board_idx)
        ON DELETE CASCADE
);

CREATE TABLE reply (
    reply_idx         BIGSERIAL       PRIMARY KEY,
    board_idx         BIGINT          NOT NULL,
    mem_idx           BIGINT          NOT NULL,
    reply_content     VARCHAR(1000),
    reply_ip          VARCHAR(40),
    reply_regdate     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    reply_moddate     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    reply_is_deleted  CHAR(1) 		  DEFAULT 'N',
    reply_deldate	  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    reply_ref		  INTEGER,
    reply_step		  INTEGER,
    reply_depth		  INTEGER,
    CONSTRAINT fk_reply_board
        FOREIGN KEY (board_idx) REFERENCES board(board_idx)
        ON DELETE CASCADE,
    CONSTRAINT fk_reply_member 
        FOREIGN KEY (mem_idx)  REFERENCES member(mem_idx),
    CONSTRAINT ck_reply_is_deleted
    	CHECK (reply_is_deleted IN ('Y','N'))   
);