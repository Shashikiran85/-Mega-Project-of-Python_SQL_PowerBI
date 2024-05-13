select * from [dbo].[world_ranking_universities]

/* Questions using SQL:
1)	Retrieve all columns for universities in the USA.*/

select *
from [dbo].[world_ranking_universities]
where country = 'USA'
order by world_rank 


/*2)	Find the top 10 universities with the highest scores in 2012.*/

select top 10 
 world_rank, institution, country, score, year
from world_ranking_universities
where year = 2012
order by score desc


/*3)	List universities in the United Kingdom with a score above 80 in 2013.*/

select institution, country, score, year
from world_ranking_universities
where year = 2013 and score > 80


/* 4)	Count the number of universities in each country. */

select country, count(*) no_of_Universities
from world_ranking_universities
group by country
order by no_of_Universities desc


/*5)	Calculate the average score for universities in each country in 2014.*/

select  country, avg(score) as AVG_Score, year
from world_ranking_universities
where year = 2014
group by country, year
order by AVG_Score desc


/*6)	Find universities with a quality_of_education score greater than 20. */

select institution,country, quality_of_education
from world_ranking_universities
where quality_of_education >20


/*7)	Retrieve universities with a score between 70 and 80.*/

select institution , country, score
from world_ranking_universities
where score between 70 and 80


/*8)	List the top 5 universities with the highest alumni employment scores in 2012*/

select top 5 institution, alumni_employment, year
from world_ranking_universities
where year = 2012
order by alumni_employment desc


/*9)	Find the university with the highest quality_of_faculty in 2013.*/

select  top 1
       institution,
       quality_of_faculty,
	   year
from world_ranking_universities
where year = 2013
order by quality_of_faculty desc


/* 10)	Count the number of universities that have a national_rank less than 5.*/

select count(institution) no_of_universities
from world_ranking_universities
where national_rank < 5


/*11)	Retrieve universities with a quality_of_education rank equal to 1.*/

select institution,
       country,
	   quality_of_education
from world_ranking_universities
where quality_of_education = 1


/* 12)	List the top 10 universities with the highest citations in 2014.*/

    Select Top 10
	       institution,
		   country,
		   citations,
		   year
	from world_ranking_universities
	where year = 2014
	order by citations desc


/*13)	Calculate the average influence score for universities in the USA.*/

select  institution,
       country,
	    Avg(influence) as Avg_influence_score
from world_ranking_universities
where country = 'USA'
group by institution,
       country


/*14)	Find universities with a broad_impact rank less than or equal to 50.*/

select institution,
       country,
	   broad_impact
from world_ranking_universities
where broad_impact <= 50


/*15)	Retrieve universities in Japan with a score greater than 60 in 2012.*/

select institution,
       country,
	   score,
	   year
from world_ranking_universities
where country = 'Japan' and
      year = 2012 and
	  score > 60


/*16)	List the top 5 universities with the highest patents in 2013.*/

select Top 5
       institution,
	   patents,
	   year
from world_ranking_universities
where year = 2013
order by patents desc


/*17)	Count the number of universities with a quality_of_faculty score between 5 and 10.*/

select count(*) no_of_universities
from world_ranking_universities
where quality_of_faculty between 5 and 10


/* 18)	Calculate the average score for universities in the United Kingdom in 2014.*/

select institution,
       country,
	   avg(score) as Avg_score,
	   year
from world_ranking_universities
where year = 2014 
     and country = 'United Kingdom'
group by institution, country, year
order by Avg_score desc



/*19)	Find universities with a national_rank between 1 and 3 in 2012.*/

select institution,
       national_rank,
	   year
from world_ranking_universities
where national_rank between 1 and 3 
      and year  = 2012
order by national_rank 


/*20)	List universities with a citations rank less than 10.*/

select institution,
        citations
from world_ranking_universities
where citations < 10


/*21)	Retrieve the university with the highest alumni_employment in 2013.*/

select Top 1
       institution,
       country,
	   alumni_employment,
	   year
from world_ranking_universities
where year = 2013
order by alumni_employment desc


/*22)	Find the top 5 universities with the highest publications in 2012 */

select top 5
      institution,
	  publications,
	  year
from world_ranking_universities
where year = 2012
order by publications desc


/*23)	Count the number of universities in each year. */
 select year,
       count(*) no_of_universities
 from world_ranking_universities
 group by year
 order by year

 /*24)	Calculate the average alumni_employment score for universities in the USA.*/

 select  country,
        avg (alumni_employment) Avg_alumnni_employemnt_score
 from world_ranking_universities
 where country = 'USA'
 group by country
 order by Avg_alumnni_employemnt_score desc


 /*25)	Retrieve universities with a broad_impact score greater than 70.*/

 select institution,
        broad_impact
 from world_ranking_universities
 where broad_impact > 70


 /*26)	List the top 10 universities with the highest influence in 2014. */

 select top 10
       institution,
	   influence,
	   year
 from world_ranking_universities
 where year = 2014
 order by influence desc


 /*27)	Find universities with a patents rank equal to 1. */

 select institution,
        patents
 from world_ranking_universities
 where patents = 1

 /*28)	Count the number of universities with a broad_impact between 20 and 30*/

 select broad_impact,
       count(*) no_of_universities
 from world_ranking_universities
 where broad_impact between 20 and 30
 group by broad_impact
 order by no_of_universities desc

 /*29)	Calculate the average quality_of_faculty score for universities in the United Kingdom.*/

 select  avg(quality_of_faculty) avg_quality_of_faculty_score,
         country
 from world_ranking_universities
 where country = 'United Kingdom'
 group by country
 order  by avg_quality_of_faculty_score desc



 /*30)	Find universities with an influence rank less than 5.*/

select institution,
       influence
from world_ranking_universities
where influence < 5


/*31)	Retrieve universities with a score greater than 75 and a national_rank less than or equal to 10 in 2013. */

 select institution,
        score,
        national_rank,
		year
 from world_ranking_universities
 where 
       score > 75 
	   And national_rank <= 10
	   And year = 2013


/* 32)	List the top 5 universities with the highest patents in 2014.*/

select Top 5
       institution,
	   patents,
	   year
from world_ranking_universities
where year = 2014
order by patents desc


/*33)	Count the number of universities with an alumni_employment score greater than 50. */

select 
      count(*) no_of_universities
from world_ranking_universities
where alumni_employment >50


/*34)	Calculate the average quality_of_education score for universities in Japan*/

select 
      avg(quality_of_education) avg_quality_of_education,
	  country
from world_ranking_universities
where country = 'Japan'
group by country


/* 35)	Find universities with a quality_of_education rank equal to 1 in 2014.*/

select 
      institution,
	  quality_of_education,
	  year
from world_ranking_universities
where quality_of_education = 1
      And year = 2014


/* 36)	Retrieve universities with a score greater than 80 and an alumni_employment rank less than 5.*/

select institution,
       score,
	   alumni_employment
from world_ranking_universities
where score > 80 
      And alumni_employment < 5

/*37)	List the top 10 universities with the highest publications in 2013.*/

select Top 10
       institution,
	   publications,
	   year
from world_ranking_universities
where year = 2013
order by publications desc


/*38)	Count the number of universities with a broad_impact score between 40 and 50*/

select 
      count(*) no_of_universities
from world_ranking_universities
where broad_impact between 40 and 50


/* 39)	Calculate the average score for universities in Australia.*/

select  avg (score) avg_score,
        country
from world_ranking_universities
where country = 'Australia'
group by country


/*40)	Find universities with an influence rank equal to 1 in 2012.*/

select institution,
       influence,
	   year 
from world_ranking_universities
where influence = 1
      And year = 2012


/* 41)	Retrieve universities with a quality_of_faculty score greater than 15.*/

select institution,
       quality_of_faculty

from world_ranking_universities
where quality_of_faculty > 15


/*42)	List the top 5 universities with the highest alumni_employment in 2014.*/

select Top 5
       institution,
	   alumni_employment,
	   year
from world_ranking_universities
where year = 2014
order by alumni_employment desc


/*43)	Count the number of universities with a national_rank less than 20 in 2013*/

select count(*) No_of_Universities
from world_ranking_universities
where national_rank < 20
      And year = 2013



/*44)	Calculate the average citations score for universities in Germany.. */

select 
       avg(citations) Avg_citations,
	   country
from world_ranking_universities
where country = 'Germany'
group by country



/*45)	Find universities with a publications rank equal to 1.*/

Select institution,
       publications
from world_ranking_universities
where publications = 1


/*46)	Retrieve universities with a broad_impact score greater than 60 and a national_rank less than or equal to 5.*/

Select institution,
       broad_impact,
	   national_rank
from world_ranking_universities
where broad_impact > 60
      And national_rank <= 5



/*47)	List the top 10 universities with the highest quality_of_education in 2012.*/

Select Top 10
       institution,
	   quality_of_education,
	   year
From world_ranking_universities
where year = 2012
order by quality_of_education desc


/*48)	Count the number of universities with a score greater than 90. */

Select count(*) no_of_universities
from world_ranking_universities
where score > 90


/*49)	Calculate the average influence score for universities in the United Kingdom.*/

Select avg(influence) Avg_influence,
       country
from world_ranking_universities
where country = 'United Kingdom'
Group by country



/*50)	Find universities with a quality_of_education rank less than or equal to 5 in 2014.*/

select institution,
       quality_of_education,
	   year
from world_ranking_universities
where quality_of_education <= 5
      And year = 2014