CREATE TABLE "todo" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar UNIQUE NOT NULL,
  "is_completed" bool DEFAULT false
);

--Inserting 3 tasks
insert into todo (
	id,
	title,
	description,
	is_completed
) values (
	'd7c0d752-84e6-43e4-ac56-32e5439eb443',
	'Play CSS game',
	'Go to the gaming website and play the Selectors game',
	true 
), (
	'48bda12c-2469-4d9f-9634-665bc9afb17d',
	'Watch and practice on Udemy',
	'Watch at least 1 hour of the course and practice for 30 minutes',
	false
), (
	'6f164772-36ec-469c-909b-43140c858667', 
	'Stop Youtube',
	'Watch less than 2 hours of youtube videos',
	false
);

--Twe Queries, one for all the todo's and other with just the completed ones
select * from todo;

select * from todo where is_completed = true;

--Update
update todo set is_completed = true where id = '48bda12c-2469-4d9f-9634-665bc9afb17d';

--Delete
delete from todo where id = '48bda12c-2469-4d9f-9634-665bc9afb17d';