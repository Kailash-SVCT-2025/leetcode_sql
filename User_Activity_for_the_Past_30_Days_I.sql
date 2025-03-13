select activity_date day ,count(distinct user_id) ACTIVE_USERS
from activity
where activity_date between date_sub('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27'
GROUP BY ACTIVITY_DATE;