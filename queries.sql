select * from borough_deaths;

select area_name, sum(new_deaths) from borough_deaths
group by 1 order by 2 desc;

select area_name, age_band, sum(new_doses) as cum_doses from borough_vaccines
group by area_name, age_band order by cum_doses desc;

select v.area_name,v.age_band, 