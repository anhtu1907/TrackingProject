INSERT INTO Account (username, password, email, nickname,last_open)
VALUES ('admin', '123456', 'admin@gmail.com',N'Admin','00:00:00');
INSERT INTO Account (username, password, email, nickname,last_open)
VALUES ('user', '123456', 'user@gmail.com',N'Hinata','00:00:00');

Update Account set isadmin = 1 where account_id = 1

select * from Account

-- 2. Insert statements (10 genres) for Genre table
INSERT INTO Genre (name, description)
VALUES
  ('Action', 'Anime in the action genre features characters engaged in physical feats and combat.'),
  ('Adventure', 'Adventure anime often involve exploration, travel, and the discovery of new and exciting places.'),
  ('Comedy', 'Comedy anime focuses on humor and lightheartedness, aiming to make viewers laugh.'),
  ('Drama', 'Drama anime explore serious themes and emotional situations, often evoking feelings in the viewer.'),
  ('Fantasy', 'Fantasy anime features elements of magic, supernatural abilities, and mythical creatures.'),
  ('Mecha', 'Mecha anime prominently feature giant robots or machines piloted by humans.'),
  ('Mystery', 'Mystery anime involve solving puzzles, uncovering secrets, and uncovering the truth behind a crime or event.'),
  ('Romance', 'Romance anime focus on love stories and the development of relationships between characters.'),
  ('Sci-Fi', 'Sci-Fi anime explore themes of science fiction, technology, space exploration, and futuristic settings.'),
  ('Slice of Life', 'Slice of Life anime depict everyday experiences and situations in a realistic or lighthearted way.');


INSERT INTO Studio(studio_name) VALUES 
('Toei Animation'), ('D&C Media'), ('SHUEISHA'), ('Pierrot'), ('CoMix Wave Films'), ('Ufotable'), ('Doga Kobo')

  -- 3. Insert statements (7 Anime) for Anime table
 INSERT INTO Anime (account_id, title, poster, status, aried, episodes, new_episode, studio_id, type, introduction, season, nation)
VALUES 
		(1, 'One Piece', 'https://cdn.myanimelist.net/images/anime/1244/138851.jpg', 1, '1999-07-20', NULL, 1102, 1, 1, 'Monkey D. Luffy recruits crewmates to find the legendary One Piece...', NULL, 1),
		(1, 'Solo Leveling', 'https://cdn.myanimelist.net/images/anime/1926/140799.jpg', 2, '2024-07-01', 12, 12, 2, 1, 'A low-ranked hunter gets a chance to change his fate...', 4, 1),
		(1, 'Kaiju No. 8', 'https://cdn.myanimelist.net/images/anime/1370/140362.jpg', 1, '2024-04-13', 12, 3, 3, 1, 'Defense Force member Kafka Hibino dreams of joining...', 1, 1),
		(1, 'Black Clover', 'https://cdn.myanimelist.net/images/anime/2/88336.jpg', 3, '2017-03-10', 170, 170, 4, 1, 'Asta, a magicless boy in a world of magic, dreams of becoming...', 3, 1),
		(1, 'Your Name', 'https://cdn.myanimelist.net/images/anime/5/87048.jpg', 1, '2016-08-26', 1, 1, 5, 2, 'Two teenagers discover they are linked and can swap bodies...', NULL, 1),
		(1, 'Fights Break Sphere', 'https://cdn.myanimelist.net/images/anime/1504/99979.jpg', 1, '2022-10-22', 104, 95, 6, 1, 'After defeating the Nine-Colored Heavenly Thunder Beast and becoming a Dou Zun, Xiao Yan travels to the Central Plains to seek out the Three Great Ancient Factions', 2, 2),
		(1, 'Oshi no Ko (Season 2)', 'https://cdn.myanimelist.net/images/anime/1206/142245.jpg', 4, NULL, NULL, 0, 7, 1, 'Second season of "Oshi no Ko".', 3, 1)

SELECT * FROM Anime

-- 4. Insert statements for Schedule
INSERT INTO Schedule(anime_id, day, time)
VALUES
	(1, 8, '12:00:00'),
	(2, 5, '18:45:00'),
	(3, 8, '19:00:00'),
<<<<<<< HEAD
	(6, 7, '23:30:00'),
	(1, 5, '12:00:00'),
	(3, 4, '18:45:00'),
	(4, 7, '19:00:00'),
	(5, 6, '23:30:00'),
	(2, 6, '18:45:00'),
	(4, 4, '19:00:00'),
	(5, 2, '23:30:00')
=======
	(6, 7, '23:30:00')
>>>>>>> b550c251204b4cd80132e39612f5820a3034bdaa

select * from Schedule

I-- 5. Insert statement for GenreWithAnime
INSERT INTO GenreWithAnime(anime_id, genre_id)
VALUES
	(1, 1),
	(1, 2),
	(2, 1),
	(2, 5),
	(3, 1),
	(3, 5),
	(4, 5),
	(4, 7),
	(5, 8),
	(6, 1),
	(6, 10),
	(7, 4)

select * from GenreWithAnime

-- 6. Inser statements for TrackingList table
INSERT INTO TrackingList(account_id , tl_name, created_day, number_of_anime, mode, last_updated)
VALUES
	(2,'Action' ,'2024-5-1', 3, 2, '2024-5-6')
INSERT INTO TrackingList(account_id , tl_name, created_day, number_of_anime, last_updated)
VALUES
	(2,'Romantic','2024-5-18',1,'2024-5-21')

SELECT * FROM TrackingList

-- 7. Insert statements for TrackingAnime Table 
INSERT INTO TrackingAnime(tl_id, anime_id, status, last_watched_episode, isFavorite)
VALUES
	(1, 1, 2, 1102, 1),
	(1, 4, 3, 500, 0),
	(1, 7, 1, NULL, 1),
	(2, 5, 1, 1, 1)

	Delete from TrackingAnime where anime_id = 3
	Select * from TrackingAnime

	SELECT TL.account_id, AN.anime_id, AN.poster, AN.title, TA.status, TA.last_watched_episode, TL.created_day
                FROM Account A
                INNER JOIN Anime AN ON A.account_id = AN.account_id
                INNER JOIN TrackingAnime TA ON AN.anime_id = TA.anime_id
                INNER JOIN TrackingList TL ON TA.tl_id = TL.tl_id WHERE TL.tl_name = 'Action' AND TL.account_id = 2


				SELECT tl.* 
                 FROM TrackingList tl  
                JOIN TrackingAnime ta ON tl.tl_id = ta.tl_id 

				SELECT tl_name from TrackingList where tl_id = 1

				SELECT * FROM Schedule ORDER BY anime_id ASC

				SELECT Anime.anime_id,Anime.poster,Anime.status, Anime.title,Schedule.schedule_id ,Schedule.day, Schedule.time FROM Anime 
                INNER JOIN Schedule ON Anime.anime_id = Schedule.anime_id ORDER BY Anime.anime_id ASC

				SELECT * FROM Schedule where day = 8

				SELECT a.* 
                FROM Anime a  
                JOIN TrackingAnime ta ON a.anime_id = ta.anime_id 
                WHERE ta.isFavorite = 1;