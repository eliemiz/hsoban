SELECT * FROM PRODUCT ORDER BY PRODUCT_ID;
-- shop category별 main 화면에서 필요한 SQL
SELECT DISTINCT product_id, name, price, THUMBNAIL FROM PRODUCT ORDER BY PRODUCT_ID;
UPDATE product
	SET THUMBNAIL = '/hsoban/img/shop/Bowl7'
WHERE PRODUCT_ID =100006;

/* BOWL */
-- 국그릇: 블랙, 베이지, 그린(유광), 와인, 그레이, 진그레이
INSERT INTO PRODUCT VALUES ('100000','베이지','국그릇','BOWL','11.5cm(d) * 6cm(h)',34000,'/src/shop/shop_description.jsp','/img/shop/Bowl1_00.jpg');
INSERT INTO PRODUCT VALUES ('100000','와인','국그릇','BOWL','11.5cm(d) * 6cm(h)',34000,'/src/shop/shop_description.jsp','/img/shop/Bowl1_00.jpg');
INSERT INTO PRODUCT VALUES ('100000','그레이','국그릇','BOWL','11.5cm(d) * 6cm(h)',34000,'/src/shop/shop_description.jsp','/img/shop/Bowl1_00.jpg');
INSERT INTO PRODUCT VALUES ('100000','진그레이','국그릇','BOWL','11.5cm(d) * 6cm(h)',34000,'/src/shop/shop_description.jsp','/img/shop/Bowl1_00.jpg');
-- 틴샐러드볼大: 블랙, 베이지, 그린(유광), 와인, 그레이, 진그레이
INSERT INTO PRODUCT VALUES ('100001','블랙','틴샐러드볼大','BOWL','23cm(d) * 바닥지름 8cm * 6cm(h)',78000,'/src/shop/shop_description.jsp','/img/shop/Bowl2_00.jpg');
INSERT INTO PRODUCT VALUES ('100001','베이지','틴샐러드볼大','BOWL','23cm(d) * 바닥지름 8cm * 6cm(h)',78000,'/src/shop/shop_description.jsp','/img/shop/Bowl2_00.jpg');
INSERT INTO PRODUCT VALUES ('100001','와인','틴샐러드볼大','BOWL','23cm(d) * 바닥지름 8cm * 6cm(h)',78000,'/src/shop/shop_description.jsp','/img/shop/Bowl2_00.jpg');
INSERT INTO PRODUCT VALUES ('100001','그레이','틴샐러드볼大','BOWL','23cm(d) * 바닥지름 8cm * 6cm(h)',78000,'/src/shop/shop_description.jsp','/img/shop/Bowl2_00.jpg');
INSERT INTO PRODUCT VALUES ('100001','진그레이','틴샐러드볼大','BOWL','23cm(d) * 바닥지름 8cm * 6cm(h)',78000,'/src/shop/shop_description.jsp','/img/shop/Bowl2_00.jpg');
-- 스프볼: 블랙, 베이지, 와인, 그레이, 진그레이
INSERT INTO PRODUCT VALUES ('100002','베이지','스프볼','BOWL','13.5cm(d) * 5cm(h)',42000,'/src/shop/shop_description.jsp','/img/shop/Bowl2_00.jpg');
INSERT INTO PRODUCT VALUES ('100002','와인','스프볼','BOWL','13.5cm(d) * 5cm(h)',42000,'/src/shop/shop_description.jsp','/img/shop/Bowl2_00.jpg');
INSERT INTO PRODUCT VALUES ('100002','그레이','스프볼','BOWL','13.5cm(d) * 5cm(h)',42000,'/src/shop/shop_description.jsp','/img/shop/Bowl2_00.jpg');
INSERT INTO PRODUCT VALUES ('100002','진그레이','스프볼','BOWL','13.5cm(d) * 5cm(h)',42000,'/src/shop/shop_description.jsp','/img/shop/Bowl2_00.jpg');
-- 밥그릇: 블랙, 베이지, 그린(유광), 와인, 그레이, 진그레이
INSERT INTO PRODUCT VALUES ('100003','블랙','밥그릇','BOWL','9.5cm(d) * 6cm(h)',32000,'/src/shop/shop_description.jsp','/img/shop/Bowl4_00.jpg');
INSERT INTO PRODUCT VALUES ('100003','그린','밥그릇','BOWL','9.5cm(d) * 6cm(h)',32000,'/src/shop/shop_description.jsp','/img/shop/Bowl4_00.jpg');
INSERT INTO PRODUCT VALUES ('100003','와인','밥그릇','BOWL','9.5cm(d) * 6cm(h)',32000,'/src/shop/shop_description.jsp','/img/shop/Bowl4_00.jpg');
INSERT INTO PRODUCT VALUES ('100003','그레이','밥그릇','BOWL','9.5cm(d) * 6cm(h)',32000,'/src/shop/shop_description.jsp','/img/shop/Bowl4_00.jpg');
INSERT INTO PRODUCT VALUES ('100003','진그레이','밥그릇','BOWL','9.5cm(d) * 6cm(h)',32000,'/src/shop/shop_description.jsp','/img/shop/Bowl4_00.jpg');
-- 토리볼: 블랙, 베이지, 그린(유광), 와인, 그레이, 진그레이
INSERT INTO PRODUCT VALUES ('100004','블랙','토리볼','BOWL','9.5cm(d) * 7cm(h)',32000,'/src/shop/shop_description.jsp','/img/shop/Bowl5_00.jpg');
INSERT INTO PRODUCT VALUES ('100004','베이지','토리볼','BOWL','9.5cm(d) * 7cm(h)',32000,'/src/shop/shop_description.jsp','/img/shop/Bowl5_00.jpg');
INSERT INTO PRODUCT VALUES ('100004','그린','토리볼','BOWL','9.5cm(d) * 7cm(h)',32000,'/src/shop/shop_description.jsp','/img/shop/Bowl5_00.jpg');
INSERT INTO PRODUCT VALUES ('100004','와인','토리볼','BOWL','9.5cm(d) * 7cm(h)',32000,'/src/shop/shop_description.jsp','/img/shop/Bowl5_00.jpg');
INSERT INTO PRODUCT VALUES ('100004','그레이','토리볼','BOWL','9.5cm(d) * 7cm(h)',32000,'/src/shop/shop_description.jsp','/img/shop/Bowl5_00.jpg');
INSERT INTO PRODUCT VALUES ('100004','진그레이','토리볼','BOWL','9.5cm(d) * 7cm(h)',32000,'/src/shop/shop_description.jsp','/img/shop/Bowl5_00.jpg');
-- 라운드볼: 블랙, 그레이, 진그레이
INSERT INTO PRODUCT VALUES ('100005','블랙','라운드볼','BOWL','22.5cm(d) * 8.5cm(h)',120000,'/src/shop/shop_description.jsp','/img/shop/Bowl6_00.jpg');
INSERT INTO PRODUCT VALUES ('100005','그레이','라운드볼','BOWL','22.5cm(d) * 8.5cm(h)',120000,'/src/shop/shop_description.jsp','/img/shop/Bowl6_00.jpg');
INSERT INTO PRODUCT VALUES ('100005','진그레이','라운드볼','BOWL','22.5cm(d) * 8.5cm(h)',120000,'/src/shop/shop_description.jsp','/img/shop/Bowl6_00.jpg');
-- 속 더 깊은 볼: 블랙, 베이지, 그레이, 진그레이
INSERT INTO PRODUCT VALUES ('100006','블랙','속 더 깊은 볼','BOWL','25cm(d) * 8.5cm(h)',140000,'/src/shop/shop_description.jsp','/img/shop/Bowl7_00.jpg');
INSERT INTO PRODUCT VALUES ('100006','베이지','속 더 깊은 볼','BOWL','25cm(d) * 8.5cm(h)',140000,'/src/shop/shop_description.jsp','/img/shop/Bowl7_00.jpg');
INSERT INTO PRODUCT VALUES ('100006','그레이','속 더 깊은 볼','BOWL','25cm(d) * 8.5cm(h)',140000,'/src/shop/shop_description.jsp','/img/shop/Bowl7_00.jpg');
INSERT INTO PRODUCT VALUES ('100006','진그레이','속 더 깊은 볼','BOWL','25cm(d) * 8.5cm(h)',140000,'/src/shop/shop_description.jsp','/img/shop/Bowl7_00.jpg');


/* Plate.Dish */
-- 피크닉볼大: 블랙, 그린, 그레이
INSERT INTO product VALUES ('200000','블랙','피크닉볼大','Plate.Dish','27cm(d) * 23cm(l) * 3.5cm(h)',108000,'/src/shop/shop_description.jsp','/img/shop/PlateDish1_00.jpg');
INSERT INTO product VALUES ('200000','그린','피크닉볼大','Plate.Dish','27cm(d) * 23cm(l) * 3.5cm(h)',108000,'/src/shop/shop_description.jsp','/img/shop/PlateDish1_00.jpg');
INSERT INTO product VALUES ('200000','그레이','피크닉볼大','Plate.Dish','27cm(d) * 23cm(l) * 3.5cm(h)',108000,'/src/shop/shop_description.jsp','/img/shop/PlateDish1_00.jpg');
UPDATE product
	SET THUMBNAIL = '/hsoban/img/shop/PlateDish4'
WHERE PRODUCT_ID =200003;
-- 딥타원접시 특대: 블랙, 그린, 그레이
INSERT INTO PRODUCT VALUES ('200001','블랙','딥타원접시 특대','Plate.Dish','40cm(d) * 21cm(l) * 5cm(h)',160000,'/src/shop/shop_description.jsp','/img/shop/PlateDish2');
INSERT INTO PRODUCT VALUES ('200001','그린','딥타원접시 특대','Plate.Dish','40cm(d) * 21cm(l) * 5cm(h)',160000,'/src/shop/shop_description.jsp','/img/shop/PlateDish2');
INSERT INTO PRODUCT VALUES ('200001','그레이','딥타원접시 특대','Plate.Dish','40cm(d) * 21cm(l) * 5cm(h)',160000,'/src/shop/shop_description.jsp','/img/shop/PlateDish2');
-- 딥사각접시
INSERT INTO PRODUCT VALUES ('200002','블랙','딥사각접시','Plate.Dish','26cm(d) * 19.5cm(l) * 3cm(h)',68000,'/src/shop/shop_description.jsp','/img/shop/PlateDish3');
INSERT INTO PRODUCT VALUES ('200002','그린','딥사각접시','Plate.Dish','26cm(d) * 19.5cm(l) * 3cm(h)',68000,'/src/shop/shop_description.jsp','/img/shop/PlateDish3');
INSERT INTO PRODUCT VALUES ('200002','그레이','딥사각접시','Plate.Dish','26cm(d) * 19.5cm(l) * 3cm(h)',68000,'/src/shop/shop_description.jsp','/img/shop/PlateDish3');
-- 대접시
INSERT INTO PRODUCT VALUES ('200003','블랙','대접시','Plate.Dish','45cm(d) * 23cm(l) * 2.5cm(h)',160000,'/src/shop/shop_description.jsp','/img/shop/PlateDish4');
INSERT INTO PRODUCT VALUES ('200003','그린','대접시','Plate.Dish','45cm(d) * 23cm(l) * 2.5cm(h)',160000,'/src/shop/shop_description.jsp','/img/shop/PlateDish4');
INSERT INTO PRODUCT VALUES ('200003','그레이','대접시','Plate.Dish','45cm(d) * 23cm(l) * 2.5cm(h)',160000,'/src/shop/shop_description.jsp','/img/shop/PlateDish4');



/* Noodle Bowl */
-- 일자면기: 블랙, 베이지, 그레이
INSERT INTO PRODUCT VALUES ('300000','블랙','일자면기','Noodle Bowl','15.5cm(d) * 6cm(h)',68000,'/src/shop/shop_description.jsp','/img/shop/NoodleBowl1_00.jpg');
INSERT INTO PRODUCT VALUES ('300000','베이지','일자면기','Noodle Bowl','15.5cm(d) * 6cm(h)',68000,'/src/shop/shop_description.jsp','/img/shop/NoodleBowl1_00.jpg');
INSERT INTO PRODUCT VALUES ('300000','그레이','일자면기','Noodle Bowl','15.5cm(d) * 6cm(h)',68000,'/src/shop/shop_description.jsp','/img/shop/NoodleBowl1_00.jpg');
UPDATE product
	SET THUMBNAIL = '/hsoban/img/shop/NoodleBowl1'
WHERE PRODUCT_ID =300000;
--윤볼: 블랙, 베이지, 그레이, 진그레이
INSERT INTO PRODUCT VALUES ('300001','블랙','윤볼','Noodle Bowl','18cm(d) * 7cm(h)',68000,'/src/shop/shop_description.jsp','/hsoban/img/shop/NoodleBowl2');
INSERT INTO PRODUCT VALUES ('300001','베이지','윤볼','Noodle Bowl','18cm(d) * 7cm(h)',68000,'/src/shop/shop_description.jsp','/hsoban/img/shop/NoodleBowl2');
INSERT INTO PRODUCT VALUES ('300001','그레이','윤볼','Noodle Bowl','18cm(d) * 7cm(h)',68000,'/src/shop/shop_description.jsp','/hsoban/img/shop/NoodleBowl2');
INSERT INTO PRODUCT VALUES ('300001','진그레이','윤볼','Noodle Bowl','18cm(d) * 7cm(h)',68000,'/src/shop/shop_description.jsp','/hsoban/img/shop/NoodleBowl2');
-- 햇볼大:
INSERT INTO PRODUCT VALUES ('300002','블랙','햇볼大','Noodle Bowl','16cm(d) * 8.5cm(h)',68000,'/src/shop/shop_description.jsp','/hsoban/img/shop/NoodleBowl3');
INSERT INTO PRODUCT VALUES ('300002','베이지','햇볼大','Noodle Bowl','16cm(d) * 8.5cm(h)',68000,'/src/shop/shop_description.jsp','/hsoban/img/shop/NoodleBowl3');
INSERT INTO PRODUCT VALUES ('300002','그레이','햇볼大','Noodle Bowl','16cm(d) * 8.5cm(h)',68000,'/src/shop/shop_description.jsp','/hsoban/img/shop/NoodleBowl3');
INSERT INTO PRODUCT VALUES ('300002','진그레이','햇볼大','Noodle Bowl','16cm(d) * 8.5cm(h)',68000,'/src/shop/shop_description.jsp','/hsoban/img/shop/NoodleBowl3');


/* Side Bowl *//* 추가 필요 */
-- 사각멀티볼: 블랙,그린,그레이
INSERT INTO product VALUES ('400000','블랙','사각멀티볼','Side Bowl','26cm(d) * 13cm(l) * 2.5cm(h)',58000,'/src/shop/shop_description.jsp','/img/shop/SideBowl1_00.jpg');
INSERT INTO product VALUES ('400000','그린','사각멀티볼','Side Bowl','26cm(d) * 13cm(l) * 2.5cm(h)',58000,'/src/shop/shop_description.jsp','/img/shop/SideBowl1_00.jpg');
INSERT INTO product VALUES ('400000','그레이','사각멀티볼','Side Bowl','26cm(d) * 13cm(l) * 2.5cm(h)',58000,'/src/shop/shop_description.jsp','/img/shop/SideBowl1_00.jpg');
UPDATE product
	SET THUMBNAIL = '/hsoban/img/shop/SideBowl1'
WHERE PRODUCT_ID =400000;
-- 나즌볼中: 블랙, 베이지, 그린, 그레이
INSERT INTO product VALUES ('400001','블랙','나즌볼中','Side Bowl','22cm(d) * 11.5cm(l) * 2.5cm(h)',48000,'/src/shop/shop_description.jsp','/hsoban/img/shop/SideBowl2');
INSERT INTO product VALUES ('400001','베이지','나즌볼中','Side Bowl','22cm(d) * 11.5cm(l) * 2.5cm(h)',48000,'/src/shop/shop_description.jsp','/hsoban/img/shop/SideBowl2');
INSERT INTO product VALUES ('400001','그린','나즌볼中','Side Bowl','22cm(d) * 11.5cm(l) * 2.5cm(h)',48000,'/src/shop/shop_description.jsp','/hsoban/img/shop/SideBowl2');
INSERT INTO product VALUES ('400001','그레이','나즌볼中','Side Bowl','22cm(d) * 11.5cm(l) * 2.5cm(h)',48000,'/src/shop/shop_description.jsp','/hsoban/img/shop/SideBowl2');
-- 피클볼中
INSERT INTO product VALUES ('400002','블랙','피클볼中','Side Bowl','19cm(d) * 10.5cm(l) * 2.5cm(h)',36000,'/src/shop/shop_description.jsp','/hsoban/img/shop/SideBowl3');
INSERT INTO product VALUES ('400002','베이지','피클볼中','Side Bowl','19cm(d) * 10.5cm(l) * 2.5cm(h)',36000,'/src/shop/shop_description.jsp','/hsoban/img/shop/SideBowl3');
INSERT INTO product VALUES ('400002','그린','피클볼中','Side Bowl','19cm(d) * 10.5cm(l) * 2.5cm(h)',36000,'/src/shop/shop_description.jsp','/hsoban/img/shop/SideBowl3');
INSERT INTO product VALUES ('400002','그레이','피클볼中','Side Bowl','19cm(d) * 10.5cm(l) * 2.5cm(h)',36000,'/src/shop/shop_description.jsp','/hsoban/img/shop/SideBowl3');
-- 콩접시中
INSERT INTO product VALUES ('400003','블랙','콩접시中','Side Bowl','11cm(d) * 11cm(l) * 3.5cm(h)',26000,'/src/shop/shop_description.jsp','/hsoban/img/shop/SideBowl4');
INSERT INTO product VALUES ('400003','베이지','콩접시中','Side Bowl','11cm(d) * 11cm(l) * 3.5cm(h)',26000,'/src/shop/shop_description.jsp','/hsoban/img/shop/SideBowl4');
INSERT INTO product VALUES ('400003','그린','콩접시中','Side Bowl','11cm(d) * 11cm(l) * 3.5cm(h)',26000,'/src/shop/shop_description.jsp','/hsoban/img/shop/SideBowl4');
INSERT INTO product VALUES ('400003','그레이','콩접시中','Side Bowl','11cm(d) * 11cm(l) * 3.5cm(h)',26000,'/src/shop/shop_description.jsp','/hsoban/img/shop/SideBowl4');
-- 종지
INSERT INTO product VALUES ('400004','블랙','종지','Side Bowl','8.5cm(d) * 2cm(h)',14000,'/src/shop/shop_description.jsp','/hsoban/img/shop/SideBowl5');
INSERT INTO product VALUES ('400004','베이지','종지','Side Bowl','8.5cm(d) * 2cm(h)',14000,'/src/shop/shop_description.jsp','/hsoban/img/shop/SideBowl5');
INSERT INTO product VALUES ('400004','그린','종지','Side Bowl','8.5cm(d) * 2cm(h)',14000,'/src/shop/shop_description.jsp','/hsoban/img/shop/SideBowl5');
INSERT INTO product VALUES ('400004','그레이','종지','Side Bowl','8.5cm(d) * 2cm(h)',14000,'/src/shop/shop_description.jsp','/hsoban/img/shop/SideBowl5');


/* Cup */
-- 머그: 블랙, 베이지, 와인, 그린, 그레이, 진그레이
INSERT INTO PRODUCT VALUES ('500000','블랙','머그','Cup','7cm(d) * 9cm(h) (용량:320ml)',38000,'/src/shop/shop_description.jsp','/img/shop/Cup1_00.jpg');
INSERT INTO PRODUCT VALUES ('500000','베이지','머그','Cup','7cm(d) * 9cm(h) (용량:320ml)',38000,'/src/shop/shop_description.jsp','/img/shop/Cup1_00.jpg');
INSERT INTO PRODUCT VALUES ('500000','와인','머그','Cup','7cm(d) * 9cm(h) (용량:320ml)',38000,'/src/shop/shop_description.jsp','/img/shop/Cup1_00.jpg');
INSERT INTO PRODUCT VALUES ('500000','그린','머그','Cup','7cm(d) * 9cm(h) (용량:320ml)',38000,'/src/shop/shop_description.jsp','/img/shop/Cup1_00.jpg');
INSERT INTO PRODUCT VALUES ('500000','그레이','머그','Cup','7cm(d) * 9cm(h) (용량:320ml)',38000,'/src/shop/shop_description.jsp','/img/shop/Cup1_00.jpg');
INSERT INTO PRODUCT VALUES ('500000','진그레이','머그','Cup','7cm(d) * 9cm(h) (용량:320ml)',38000,'/src/shop/shop_description.jsp','/img/shop/Cup1_00.jpg');
-- 티잔: 블랙, 베이지, 그레이, 진그레이, 와인
INSERT INTO PRODUCT VALUES ('500001','블랙','티잔','Cup','6cm(d) * 7.5cm(h) (용량:170ml)',32000,'/src/shop/shop_description.jsp','/img/shop/Cup2_00.jpg');
INSERT INTO PRODUCT VALUES ('500001','베이지','티잔','Cup','6cm(d) * 7.5cm(h) (용량:170ml)',32000,'/src/shop/shop_description.jsp','/img/shop/Cup2_00.jpg');
INSERT INTO PRODUCT VALUES ('500001','그레이','티잔','Cup','6cm(d) * 7.5cm(h) (용량:170ml)',32000,'/src/shop/shop_description.jsp','/img/shop/Cup2_00.jpg');
INSERT INTO PRODUCT VALUES ('500001','진그레이','티잔','Cup','6cm(d) * 7.5cm(h) (용량:170ml)',32000,'/src/shop/shop_description.jsp','/img/shop/Cup2_00.jpg');
INSERT INTO PRODUCT VALUES ('500001','와인','티잔','Cup','6cm(d) * 7.5cm(h) (용량:170ml)',32000,'/src/shop/shop_description.jsp','/img/shop/Cup2_00.jpg');
-- 저그: 블랙, 베이지, 와인, 그레이, 진그레이
INSERT INTO PRODUCT VALUES ('500002','블랙','저그','Cup','10cm(d) * 13cm(h) (용량:500ml)',68000,'/src/shop/shop_description.jsp','/img/shop/Cup3_00.jpg');
INSERT INTO PRODUCT VALUES ('500002','베이지','저그','Cup','10cm(d) * 13cm(h) (용량:500ml)',68000,'/src/shop/shop_description.jsp','/img/shop/Cup3_00.jpg');
INSERT INTO PRODUCT VALUES ('500002','와인','저그','Cup','10cm(d) * 13cm(h) (용량:500ml)',68000,'/src/shop/shop_description.jsp','/img/shop/Cup3_00.jpg');
INSERT INTO PRODUCT VALUES ('500002','그레이','저그','Cup','10cm(d) * 13cm(h) (용량:500ml)',68000,'/src/shop/shop_description.jsp','/img/shop/Cup3_00.jpg');
INSERT INTO PRODUCT VALUES ('500002','진그레이','저그','Cup','10cm(d) * 13cm(h) (용량:500ml)',68000,'/src/shop/shop_description.jsp','/img/shop/Cup3_00.jpg');
-- 아이스롱머그: 블랙, 베이지, 그레이
INSERT INTO PRODUCT VALUES ('500003','블랙','아이스롱머그','Cup','8cm(d) * 15cm(h) (용량:550ml)',78000,'/src/shop/shop_description.jsp','/img/shop/Cup4_00.jpg');
INSERT INTO PRODUCT VALUES ('500003','베이지','아이스롱머그','Cup','8cm(d) * 15cm(h) (용량:550ml)',78000,'/src/shop/shop_description.jsp','/img/shop/Cup4_00.jpg');
INSERT INTO PRODUCT VALUES ('500003','그레이','아이스롱머그','Cup','8cm(d) * 15cm(h) (용량:550ml)',78000,'/src/shop/shop_description.jsp','/img/shop/Cup4_00.jpg');
UPDATE product
	SET THUMBNAIL = '/hsoban/img/shop/Cup4'
WHERE PRODUCT_ID =500003;

/* Others */
-- 수저받침대: 블랙, 와인, 그린
INSERT INTO product VALUES ('600000','블랙','수저받침대','Others','11cm(d) * 3.5cm(l) * 0.7cm(h)',14000,'/src/shop/shop_description.jsp','/img/shop/Others1_00.jpg');
INSERT INTO product VALUES ('600000','와인','수저받침대','Others','11cm(d) * 3.5cm(l) * 0.7cm(h)',14000,'/src/shop/shop_description.jsp','/img/shop/Others1_00.jpg');
INSERT INTO product VALUES ('600000','그린','수저받침대','Others','11cm(d) * 3.5cm(l) * 0.7cm(h)',14000,'/src/shop/shop_description.jsp','/img/shop/Others1_00.jpg');
-- 소스팟: 블랙, 베이지, 그린, 그레이, 진그레이
INSERT INTO PRODUCT VALUES ('600001','블랙','소스팟','Others','5cm(d) * 6.5cm(h)',22000,'/src/shop/shop_description.jsp','/img/shop/Others2_00.jpg');
INSERT INTO PRODUCT VALUES ('600001','베이지','소스팟','Others','5cm(d) * 6.5cm(h)',22000,'/src/shop/shop_description.jsp','/img/shop/Others2_00.jpg');
INSERT INTO PRODUCT VALUES ('600001','그린','소스팟','Others','5cm(d) * 6.5cm(h)',22000,'/src/shop/shop_description.jsp','/img/shop/Others2_00.jpg');
INSERT INTO PRODUCT VALUES ('600001','그레이','소스팟','Others','5cm(d) * 6.5cm(h)',22000,'/src/shop/shop_description.jsp','/img/shop/Others2_00.jpg');
INSERT INTO PRODUCT VALUES ('600001','진그레이','소스팟','Others','5cm(d) * 6.5cm(h)',22000,'/src/shop/shop_description.jsp','/img/shop/Others2_00.jpg');
-- 술병: 블랙, 베이지, 와인, 그린, 그레이, 진그레이
INSERT INTO PRODUCT VALUES ('600002','블랙','술병','Others','6.5cm(d) * 16cm(h)',68000,'/src/shop/shop_description.jsp','/img/shop/Others3_00.jpg');
INSERT INTO PRODUCT VALUES ('600002','베이지','술병','Others','6.5cm(d) * 16cm(h)',68000,'/src/shop/shop_description.jsp','/img/shop/Others3_00.jpg');
INSERT INTO PRODUCT VALUES ('600002','와인','술병','Others','6.5cm(d) * 16cm(h)',68000,'/src/shop/shop_description.jsp','/img/shop/Others3_00.jpg');
INSERT INTO PRODUCT VALUES ('600002','그린','술병','Others','6.5cm(d) * 16cm(h)',68000,'/src/shop/shop_description.jsp','/img/shop/Others3_00.jpg');
INSERT INTO PRODUCT VALUES ('600002','그레이','술병','Others','6.5cm(d) * 16cm(h)',68000,'/src/shop/shop_description.jsp','/img/shop/Others3_00.jpg');
INSERT INTO PRODUCT VALUES ('600002','진그레이','술병','Others','6.5cm(d) * 16cm(h)',68000,'/src/shop/shop_description.jsp','/img/shop/Others3_00.jpg');
-- 드리퍼: 블랙, 베이지, 그레이
INSERT INTO PRODUCT VALUES ('600003','블랙','드리퍼','Others','11.5cm(d) * 8cm(h)',120000,'/src/shop/shop_description.jsp','/img/shop/Others4_00.jpg');
INSERT INTO PRODUCT VALUES ('600003','베이지','드리퍼','Others','11.5cm(d) * 8cm(h)',120000,'/src/shop/shop_description.jsp','/img/shop/Others4_00.jpg');
INSERT INTO PRODUCT VALUES ('600003','그레이','드리퍼','Others','11.5cm(d) * 8cm(h)',120000,'/src/shop/shop_description.jsp','/img/shop/Others4_00.jpg');
UPDATE product
	SET THUMBNAIL = '/hsoban/img/shop/Others4'
WHERE PRODUCT_ID =600003;

/* Set */
INSERT INTO product VALUES ('700000','2인세트','2인세트','Set','햇볼小 *2 / 햇볼中 *2 / 틴샐러드볼mini *3 / 가로접시中 *2 / 에그볼 *2 / 나즌콩접시 *2 / 피쉬접시 *1 / 원턱접시中 *1 / 하프볼 *1 / 수저받침 *2',674000,'/src/shop/shop_description2.jsp','/img/shop/Set1_00.jpg');
INSERT INTO product VALUES ('700001','4인세트','4인세트','Set','밥그릇 *4 / 국그릇 *4 / 나즌콩접시 *2 / 가로접시大 *4 / 트레이접시中 *1 / 일자찬기小 *2 / 틴샐러드볼 미니 *3 / 마스크볼mini *4 / 마스크볼中 *1 / 마스크볼大 *1 / 칭칭볼中 *1 / 대야볼大 *1 / 수저받침 *4',1286000,'/src/shop/shop_description2.jsp','/img/shop/Set2_00.jpg');
UPDATE product
	SET THUMBNAIL = '/hsoban/img/shop/Set2'
WHERE PRODUCT_ID =700001;
SELECT price FROM PRODUCT WHERE PRODUCT_ID >= 700000;