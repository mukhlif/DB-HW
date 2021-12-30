select max(audience), play_date
from match_mast
group by play_date;

select max(points), team_group, team_name
from soccer_team
group by team_name, team_group
having max(points) > 10;

select player_name, team_name, coach_name
from player_mast, couch_mast
where age > 25 and player_name like '%a%';

insert into player_mast(player_name) values('mukhlif mohammad');
insert into player_mast(player_name) values('ahmed mohammad alhomsi');

delete from player_mast where ((player_goal = 0) and goal_date > '2017/1/1');

update team_mast
set points = points + 10
where points =  (select min(points) from team_mast);

select player_name, player_goal
from player_mast
where (player_goal = max(player_goal) or player_goal = min(player_goal));

select avg(player_goal) average, player_name
from player_mast
having average = (select max(average) from player_mast);

select avg(points) average, team_name
from team_mast
having average = (select max(average) from team_mast);

select match_no, winning_team, losing_team
from match_details
where ((winning_team = 'Germany') and (losing_team = 'Poland'));