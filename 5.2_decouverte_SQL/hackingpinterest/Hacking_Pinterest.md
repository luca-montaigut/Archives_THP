CREATE TABLE `Utilisateurs` (
  `user_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `Nom` TEXT,
  `Prénom` TEXT
);

CREATE TABLE `Pins` (
  `pins_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `URL` TEXT,
  `user_id` INTEGER,
  FOREIGN KEY (`user_id`) REFERENCES Utilisateurs(`user_id`)
);

CREATE TABLE `Commentaires` (
  `comm_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `user_id` INTEGER,
  `pins_id` INTEGER,
  `Contenu` TEXT,
  FOREIGN KEY (`user_id`) REFERENCES Utilisateurs(`user_id`), 
  FOREIGN KEY (`user_id`) REFERENCES Pins(`pins_id`)
);


