use mental_health_project;
select * from Done_Data;

-- Identify country wise treatment count and find the country which has maximum number of counts --
select Country,Treatment from Done_Data
where Country='Canada' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Treatment='True' 
group by Country;

select Country,count(Treatment) from Done_Data
where Country='Canada' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='United States' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='United Kingdom' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='France' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Portugal' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Netherlands' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Switzerland' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Poland' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Germany' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Austria' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Australia' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Colombia' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='New Zeland' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Norway' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Russia' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Mexico' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Brazil' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Slovenia' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Costa Rica' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Austria' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Ireland' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='India' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='South Africa' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Italy' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Bulgaria' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Swedan' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Spain' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Singapore' and Treatment='True';

select Country,count(Treatment) from Done_Data
where Country='Isreal' and Treatment='True';

SELECT Country, Age, COUNT(*)
FROM Done_Data
GROUP BY Country, Age
HAVING COUNT(*) > 1;

-- Identify gender wise treatment count --
select Gender,count(Treatment) from Done_Data
where Gender='Male' and Treatment='True';

select count(Gender),treatment from Done_Data
where Gender='Male' and treatment='True';

select Gender,count(Treatment) from Done_Data
where Gender='Female' and Treatment='True';

select Gender,count(Treatment) from Done_Data
where Gender='trans' and Treatment='True';

select Gender,count(Treatment) from Done_Data
where Treatment='True' 
group by Gender;

select Country,count(Country) from Done_Data
group by Country;

select count(distinct Country) from Done_Data;


-- Age wise mental health sickness identification --
select * from Done_Data
where Age>=30 and Age<=40
and
Treatment='True';

select Age,count(Treatment) from Done_Data 
where Age>=30 and Age<=40
and
Treatment='True';

select Age,count(Treatment) from Done_Data 
where Age
between 30 and 40
and treatment='True';

select Age,count(Treatment) from Done_Data 
where treatment='True'
and Age
between 30 and 40
group by Age;

select Age,count(Treatment) from Done_Data 
where Age>=50
and
Treatment='True';

select Age,count(Treatment) from Done_Data 
where Age
between 50 and 60
and treatment='True';

select Age,count(Treatment) from Done_Data 
where Age>=70
and
Treatment='True';

select Age,count(Treatment) from Done_Data 
where Age<=30
and
Treatment='True';

-- Mental Sickness Identification with referance to Self Employement --
select Self_Employed,Gender,count(Treatment)
from Done_Data
where Self_Employed='True'
and Treatment='True'
group by Gender;

select Self_Employed,Gender,count(Treatment)
from Done_Data
where Self_Employed='False'
and Treatment='True'
group by Gender;

select Self_Employed,Gender,count(Treatment)
from Done_Data
where Treatment='True'
group by Gender,Self_Employed;

-- Identify total treatment count as per no_of_employees working --
select count(Treatment),No_of_Employees
from Done_Data
where Treatment='True'
group by No_of_Employees;

-- Identify total treatment count as per Tech_Company releated employees --
select count(Treatment),Tech_Company
from Done_Data
where Treatment='True'
group by Tech_Company;

-- Identify total treatment count as per the countries which conducted wellness programs --
select count(Treatment),wellness_program,Country
from Done_Data
where Treatment='True'
group by Country,wellness_program;

-- Identify the countries which provides medical insurence for mental sickness --
select Country,Medical_Insurence
from Done_Data
group by country;