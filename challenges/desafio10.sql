CREATE TABLE SpotifyClone.favorites(
  user_id INT NOT NULL,
  single_id INT NOT NULL,
  FOREIGN KEY(user_id) REFERENCES users(user_id),
  FOREIGN KEY(single_id) REFERENCES singles(single_id),
  CONSTRAINT PRIMARY KEY(user_id, single_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.favorites (user_id, single_id) VALUES
	(1, 3),
	(1, 6),
	(1, 10),
	(2, 4),
	(3, 1),
	(3, 3),
	(4, 7),
	(4, 4),
	(5, 2),
	(5, 10),
	(6, 4),
	(7, 7),
	(8, 3);
