select * from "Target";

select * from "Features";

-- Joining Features and Target tables
SELECT Target.CMPLNT_NUM,
    Target.PATROL_BORO,
	Target.CMPLNT_FR_DT,
INTO JoinedTable
FROM Target
LEFT JOIN Features
ON Target.CMPLNT_NUM = Features.CMPLNT_NUM;