/* Challenge 1 - Who Have Published What At Where? */

SELECT authors.au_id AS "AUTHOR ID", authors.au_lname AS "LAST NAME",
authors.au_fname AS "FIRST NAME", titles.title AS "TITLE", publishers.pub_name AS "PUBLISHER"
FROM titles
JOIN publishers
ON publishers.pub_id = titles.pub_id
JOIN titleauthor
ON titleauthor.title_id = titles.title_id
JOIN authors
ON titleauthor.au_id = authors.au_id;


/*Challenge 2 - Who Have Published How Many At Where? */

SELECT authors.au_id AS "AUTHOR ID", authors.au_lname AS "LAST NAME",
authors.au_fname AS "FIRST NAME", publishers.pub_name AS "PUBLISHER",
COUNT(titles.title) AS "TITLE COUNT"
FROM titles
JOIN publishers
ON publishers.pub_id = titles.pub_id
JOIN titleauthor
ON titleauthor.title_id = titles.title_id
JOIN authors
ON titleauthor.au_id = authors.au_id
GROUP BY authors.au_fname, publishers.pub_name
ORDER BY COUNT(titles.title) DESC, authors.au_fname, authors.au_lname

/*Challenge 3 - Best Selling Authors */

SELECT authors.au_id AS "AUTHOR ID", 
authors.au_lname AS "LAST NAME", authors.au_fname AS "FIRST NAME",
SUM(sales.qty) AS "TOTAL"
FROM authors
JOIN titleauthor
ON titleauthor.au_id = authors.au_id
JOIN titles
ON titles.title_id = titleauthor.title_id
JOIN sales
ON sales.title_id = titles.title_id
GROUP BY authors.au_fname, authors.au_lname
ORDER BY SUM(sales.qty) DESC
LIMIT 3;


/*Challenge 4 - Best Selling Authors Ranking */

SELECT authors.au_id AS "AUTHOR ID", 
authors.au_lname AS "LAST NAME", authors.au_fname AS "FIRST NAME",
SUM(sales.qty) AS "TOTAL"
FROM authors
LEFT JOIN titleauthor
ON titleauthor.au_id = authors.au_id
LEFT JOIN titles
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales
ON sales.title_id = titles.title_id
GROUP BY authors.au_fname, authors.au_lname
ORDER BY SUM(sales.qty) DESC;	



