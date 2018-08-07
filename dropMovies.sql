drop table edgetech.acting_credits;
drop table edgetech.director_movies_directed;
drop table edgetech.cast;
drop table edgetech.movie_genres;
drop table edgetech.movie_producers;
drop table edgetech.producer_movies_produced;
drop table edgetech.producer;
drop table edgetech.genre;
drop table edgetech.actor;
drop table edgetech.movie_details;
drop table edgetech.movie;
drop table edgetech.director;

ALTER TABLE `edgetech`.`movie` 
DROP FOREIGN KEY `FKfrudmge75x4by1qwvntkcbgvd`,
DROP FOREIGN KEY `FKbi47w3cnsfi30gc1nu2avgra2`;
ALTER TABLE `edgetech`.`movie` 
DROP INDEX `FKfrudmge75x4by1qwvntkcbgvd` ,
DROP INDEX `FKbi47w3cnsfi30gc1nu2avgra2` ;

ALTER TABLE `edgetech`.`movie_details` 
DROP FOREIGN KEY `FK2uffkfm0pi1bnf7he4ekwyxar`;
ALTER TABLE `edgetech`.`movie_details` 
DROP INDEX `FK2uffkfm0pi1bnf7he4ekwyxar` ;
