-- Questão 1

SELECT  users.id, 
	users.name, 
	cities.name AS city 
FROM users 
JOIN cities 
ON users."cityId" = cities.id 
WHERE cities.name = 'Rio de Janeiro'
ORDER BY id ASC;



-- Questão 2

SELECT  testimonials.id, 
	writernames.name AS writer, 
	recipientnames.name AS recipient, 
	testimonials.message
FROM testimonials
JOIN users writernames
ON testimonials."writerId" = writernames.id
JOIN users recipientnames
ON testimonials."recipientId" = recipientnames.id
ORDER BY testimonials.id ASC;



-- Questão 3

SELECT  users.id, 
	users.name, 
	courses.name AS course,
	schools.name AS school,
	educations."endDate"
FROM users
JOIN educations
ON educations."userId" = users.id
JOIN courses
ON courses.id = educations."courseId"
JOIN schools
ON schools.id = educations."schoolId"
WHERE users.id = 30
AND educations.status = 'finished';



-- Questão 4

SELECT  users.id,
	users.name,
	roles.name AS role,
	companies.name AS company,
	experiences."startDate"
FROM users
JOIN experiences
ON experiences."userId" = users.id
JOIN roles
ON roles.id = experiences."roleId"
JOIN companies
ON companies.id = experiences."companyId"
WHERE users.id = 50
AND experiences."endDate" IS NULL;
























