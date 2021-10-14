# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Games Table
- id, name, year, north_america_sales, publisher_id

Publisher Table ( 1 to many)
- id, name

Game_Genres Table (joinger table maybe?)
- game_id, genre_id

Genres Table (many to many with games)
-id , name
