INSERT INTO item (
    item_name,
    item_origin_price,
    item_now_price,
    item_stock,
    item_type_idx,
    item_for,
    item_is_sale,
    item_brand,
    item_thumbnail_img,
    item_detail_img,
    item_regdate,
    item_moddate
) VALUES (
    '탐사 클래식 진도 사료, 10kg, 2개',
    36000,
    29660,
    33,
    2,
    'DOG',
    'Y',
    '탐사',
    'item_thumbnail/test01.jpg',
    'item_detail/long01.jpg',
    '2025-08-16',
    '2026-01-24'
);

INSERT INTO item (
    item_name, item_origin_price, item_now_price, item_stock,
    item_type_idx, item_for, item_is_sale, item_brand,
    item_thumbnail_img, item_detail_img, item_regdate, item_moddate
) VALUES (
    '국견진도 프리미엄급 전연령 진돗개사료 강아지사료 개사료 샘플2봉증정',
    42200, 38800, 7,
    2, 'DOG', 'Y', '대림팜스',
    'item_thumbnail/test02.jpg', 'item_detail/long02.png',
    '2025-08-09', '2026-01-01'
);

INSERT INTO item (
    item_name, item_origin_price, item_now_price, item_stock,
    item_type_idx, item_for, item_is_sale, item_brand,
    item_thumbnail_img, item_detail_img, item_regdate, item_moddate
) VALUES (
    'now 퍼피 그레인프리 스몰브리드 건식사료',
    51000, 34540, 15,
    2, 'DOG', 'Y', '펫큐리안',
    'item_thumbnail/test03.png', 'item_detail/long03.jpeg',
    '2025-02-22', '2025-10-07'
);

INSERT INTO item (
    item_name, item_origin_price, item_now_price, item_stock,
    item_type_idx, item_for, item_is_sale, item_brand,
    item_thumbnail_img, item_detail_img, item_regdate, item_moddate
) VALUES (
    '바이오진도 강아지 대형견 진돗개 대용량 사료',
    40900, 34090, 256,
    2, 'DOG', 'Y', '천하제일사료',
    'item_thumbnail/test04.png', 'item_detail/long04.jpg',
    '2025-04-12', '2026-01-01'
);

INSERT INTO item (
    item_name, item_origin_price, item_now_price, item_stock,
    item_type_idx, item_for, item_is_sale, item_brand,
    item_thumbnail_img, item_detail_img, item_regdate, item_moddate
) VALUES (
    '펫발란스 어덜트 미디움 & 라지 브리드 치킨 라이스 반려견 사료',
    25850, 24600, 97,
    2, 'DOG', 'Y', '펫발란스',
    'item_thumbnail/test05.png', 'item_detail/long05.jpg',
    '2025-07-23', '2026-01-07'
);

INSERT INTO item (
    item_name, item_origin_price, item_now_price, item_stock,
    item_type_idx, item_for, item_is_sale, item_brand,
    item_thumbnail_img, item_detail_img, item_regdate, item_moddate
) VALUES (
    '팜스코 에브리캣 10kg 참치맛+닭 대용량 고양이사료 전연령고양이사료',
    28500, 27300, 331,
    2, 'CAT', 'Y', '대림팜스',
    'item_thumbnail/test06.png', 'item_detail/long06.jpg',
    '2025-01-12', '2026-01-24'
);

INSERT INTO item (
    item_name, item_origin_price, item_now_price, item_stock,
    item_type_idx, item_for, item_is_sale, item_brand,
    item_thumbnail_img, item_detail_img, item_regdate, item_moddate
) VALUES (
    'ANF 식스프리플러스 인도어 캣 기능성 사료',
    31200, 21920, 74,
    2, 'CAT', 'Y', 'ANF',
    'item_thumbnail/test07.png', 'item_detail/long07.jpg',
    '2025-06-04', '2026-01-12'
);

INSERT INTO item (
    item_name, item_origin_price, item_now_price, item_stock,
    item_type_idx, item_for, item_is_sale, item_brand,
    item_thumbnail_img, item_detail_img, item_regdate, item_moddate
) VALUES (
    '뉴트리나 프라임캣 블루 20kg 고양이사료 대용량 대포장 길냥이밥',
    31680, 31680, 53,
    2, 'CAT', 'N', '뉴트리나',
    'item_thumbnail/test08.jpg', 'item_detail/long08.jpg',
    '2025-09-27', '2026-01-05'
);

INSERT INTO item (
    item_name, item_origin_price, item_now_price, item_stock,
    item_type_idx, item_for, item_is_sale, item_brand,
    item_thumbnail_img, item_detail_img, item_regdate, item_moddate
) VALUES (
    '코멧 베이직 전연령 고양이 사료',
    51300, 29910, 378,
    2, 'CAT', 'Y', '코멧',
    'item_thumbnail/test09.jpg', 'item_detail/long09.jpg',
    '2025-11-12', '2026-01-04'
);

INSERT INTO item (
    item_name, item_origin_price, item_now_price, item_stock,
    item_type_idx, item_for, item_is_sale, item_brand,
    item_thumbnail_img, item_detail_img, item_regdate, item_moddate
) VALUES (
    '잘먹잘싸 전연령용 고양이 건식사료',
    19800, 19800, 34,
    2, 'CAT', 'N', '잘먹잘싸',
    'item_thumbnail/test10.jpg', 'item_detail/long10.png',
    '2025-11-27', '2026-01-02'
);

COMMIT;