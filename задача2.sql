create schema Itogovay_2;
use Itogovay_2;

/*
выведите только четные числа от 1 до 10 включительно.
Пример: 2,4,6,8,10 
*/
drop procedure number_chet;

delimiter $$
create procedure number_chet()
begin
	declare i int default 1;
	declare n int;
	declare res varchar(2000) default '';
	while i <= 10 do
		if i % 2 = 0 then
			set res = concat(res, i, ',');
		end if;
		set i = i + 1;
	end while;
        
	select res;
end $$
delimiter ;

call number_chet();
			
