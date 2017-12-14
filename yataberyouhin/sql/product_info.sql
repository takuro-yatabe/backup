use yataberyouhin;

insert into product_info(id, product_id, product_name, product_name_kana, product_description, category_id, price, image_file_path, image_file_name, release_date, release_company, status, insert_date, update_date) values
(1,1,"クリスマスとくまの絵本","くりすますとくまのえほん","子供向けのクリスマスとくまの絵本",2,1500,"./image/kumabook.jpg","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(2,2,"Yataber12月号","やたばー12がつごう","サッカーの雑誌12月号",2,560,"./image/soccerbook.jpg","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(3,3,"歴史小説","れきししょうせつ","歴史の小説",2,800,"./image/rekishibook.jpg","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(4,4,"どうぶつの林 攻略本","どうぶつのはやし こうりゃくほん","ゲームソフト どうぶつ林の攻略本",2,1200,"./image/gamebook.jpg","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(5,5,"少年漫画","しょうねんまんが","少年向けの漫画",2,450,"./image/jompcomics.jpg","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(6,6,"少女漫画","しょうじょまんが","少女向けの漫画",2,450,"./image/girlcomic.jpg","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(7,7,"初心者向けJava解説本","しょしんしゃむけじゃばかいせつほん","初心者向けのJava解説本 解説DVD付き",2,2600,"./image/javabook.jpg","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(8,8,"上級者向けJava解説本","じょうきゅうしゃむけじゃばかいせつほん","上級者者向けのJava解説本 解説DVD付き",2,2800,"./image/javabook2.jpg","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),

(9,9,"青の炊飯器","あおのすいはんき","青色の炊飯器",3,10000,"test","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(10,10,"白の炊飯器","しろのすいはんき","白色の炊飯器",3,8000,"test","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(11,11,"黄色の冷蔵庫","きいろのれいぞうこ","黄色の冷蔵庫",3,80000,"test","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(12,12,"青の冷蔵庫","あおいれいぞうこ","青色の冷蔵庫",3,70000,"test","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(13,13,"くま型の冷蔵庫","くまがたのれいぞうこ","くまの形をした冷蔵庫",3,10000,"test","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(14,14,"黒のパソコン","くろいぱそこん","黒色のパソコン",3,130000,"test","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(15,15,"赤のパソコン","あかいぱそこん","赤色のパソコン",3,140000,"test","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(16,16,"白のパソコン","しろいぱそこん","白色のパソコン",3,100000,"test","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),

(17,17,"くまのぬいぐるみ","くまのぬいぐるみ","くまのぬいぐるみのおもちゃ クリスマスver.",4,3000,"test","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(18,18,"赤のパズル","あかいぱずる","赤色のパズルのおもちゃ",4,1000,"test","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(19,19,"黄色のパズル","きいろのぱずる","黄色のパズルのおもちゃ",4,800,"test","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(20,20,"黒いゲーム機","くろいげーむき","黒色のゲーム機",4,40000,"test","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(21,21,"歴史ゲーム","れきしのげーむ","歴史のゲームソフト",4,3600,"test","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(22,22,"サッカーゲーム","さっかーげーむ","サッカーのゲームソフト",4,3800,"test","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(23,23,"クリスマスツリー","くりすますつりー","180ｃｍの大きなクリスマスツリー 装飾品付き",4,6000,"test","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date)),
(24,24,"クリスマスリース","くりすますりーす","壁にかけられるクリスマスリース",4,1800,"test","testtest",cast('2017-12-05' as date),"yataberyouhin",1,NOW(),cast('2017-12-05' as date));
