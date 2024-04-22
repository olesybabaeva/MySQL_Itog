create schema Itogovay;
use Itogovay;

/*
Создать функцию, которая принимает кол-во секунд 
и форматирует их в кол-во дней, часов, минут и секунд.
Пример: 123456 -> 1 days 10 hours 17 minutes 36 seconds
*/
drop function data_convert;

delimiter $$
create function data_convert(seconds_input int)
returns varchar(200)
deterministic
	begin
		declare days int;
        declare hours int;pflf
        declare minutes int;
        declare seconds int;
		declare converts varchar(200) default '';
        set days = seconds_input / 86400;
        set hours = (seconds_input % 86400) / 3600;
        set minutes = floor((seconds_input % 3600) / 60);
        set seconds = seconds_input % 60;
		set converts = concat(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds ');
        return converts;
	end $$
delimiter ;
select data_convert(123456);
			