create database IMDB;

-- Question 1: Can you get all data about movies?

select * from movies_new

-- Question 2: How do you get all data about directors?

select director from movies_new

-- Question 3: Check how many movies are present 

select count(name) from movies_new

-- Question 4: Find these 3 directors: Stanley Kubrick ; Robert Redford ; Alan Parker

select * from movies_new where director = 'Stanley Kubrick' or director = 'Robert Redford' or director = 'Alan Parker'

-- Question 5: Find all directors with name starting with Alan

select * from movies_new where director like 'Alan'

-- Question 6: Count of name with score = 5 .

select count(score) from movies_new where score = 5

-- Question 8: What are the 3 most bankable movies?

select name from movies_new 
order by budget desc 
limit 3

-- Question 9: What are the top 5 movies with max runtime?

select name from movies_new 
order by runtime desc 
limit 5

-- Question 10: What is the most awarded vote since the January 1st, 2000?

select name, writer, star from movies_new 
where released > 'january 1, 2000'
order by votes desc
limit 1 









