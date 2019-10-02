use me;

drop procedure if exists increase_coder_salary;

delimiter //

create procedure increase_coder_salary(
	p_coder_id int(11),
    p_increase decimal(8, 2)
) begin
	declare v_error boolean default false;
	declare continue handler for sqlexception
		set v_error = true;

	start transaction;

	update coders
    set salary = salary + p_increase
    where coder_id = p_coder_id;
    
    if v_error then
		select "can't update";
        rollback;
	else
        commit;
	end if;
end;

// delimiter ;

call increase_coder_salary(104, 1);
