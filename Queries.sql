select * from "Target";

select * from "Features";

-- Joining Features and Target tables
SELECT t.cmplnt_num,
    t.patrol_boro,
	t.cmplnt_fr_dt
INTO JoinedTable
FROM target as t
LEFT JOIN features as f
ON t.cmplnt_num = f.cmplnt_num;