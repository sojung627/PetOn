-- 3. 상품 / 장바구니
CREATE TABLE item_type (
    item_type_idx		BIGSERIAL    PRIMARY KEY,
    item_type_category	VARCHAR(50)  NOT NULL				-- 사료, 간식, 장난감, 가구 등
);

CREATE TABLE item (
    item_idx            BIGSERIAL       PRIMARY KEY,
    item_name           VARCHAR(200)    NOT NULL,
    item_origin_price   INTEGER    		NOT NULL,
    item_now_price   	INTEGER			NOT NULL,
    item_stock          INTEGER         DEFAULT 0,
    item_type_idx		INTEGER			NOT NULL,
    item_for			VARCHAR(20)  	DEFAULT 'GENERAL',	-- DOG / CAT / GENERAL
    item_is_sale		VARCHAR(10)		DEFAULT 'N',
    item_brand			VARCHAR(50)		DEFAULT '기타',
    item_thumbnail_img  VARCHAR(255),
    item_detail_img     VARCHAR(255),
    item_regdate 		TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    item_moddate        TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_item_item_type
        FOREIGN KEY (item_type_idx) REFERENCES item_type(item_type_idx),
	CONSTRAINT ck_item_for
		CHECK (item_for IN ('DOG','CAT','GENERAL')),
    CONSTRAINT ck_item_is_sale
    	CHECK (item_is_sale IN ('Y','N'))
);

CREATE TABLE cart (  
    cart_idx      BIGSERIAL   PRIMARY KEY,
    mem_idx       BIGINT   NOT NULL,
    cart_regdate  DATE     DEFAULT CURRENT_DATE,
    CONSTRAINT fk_cart_member
        FOREIGN KEY (mem_idx) REFERENCES member(mem_idx)
        ON DELETE CASCADE
);

CREATE TABLE cart_item (
    cart_item_idx       BIGSERIAL PRIMARY KEY,
    cart_idx            BIGINT    NOT NULL,
    item_idx            BIGINT    NOT NULL,
    cart_item_quantity  INTEGER   DEFAULT 1,
    CONSTRAINT fk_cart_item_cart
        FOREIGN KEY (cart_idx) REFERENCES cart(cart_idx)
        ON DELETE CASCADE,
    CONSTRAINT fk_cart_item_item
        FOREIGN KEY (item_idx) REFERENCES item(item_idx),

    CONSTRAINT uq_cart_item_cart_item UNIQUE (cart_idx, item_idx)
);
