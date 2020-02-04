CREATE TABLE 'Commentaires' (
  'comm_id' INTEGER PRIMARY KEY,
  'user_id' INTEGER,
  'news_id' INTEGER,
  'Contenu' TEXT,
  FOREIGN KEY ('user_id') REFERENCES Utilisateurs('user_id'), 
  FOREIGN KEY ('news_id') REFERENCES News('news_id')
);

CREATE TABLE 'Utilisateurs' (
  'user_id' INTEGER PRIMARY KEY,
  'Nom' TEXT,
  'Prénom' TEXT
);

CREATE TABLE 'News' (
  'news_id' INTEGER PRIMARY KEY,
  'URL' TEXT,
  'user_id' INTEGER,
  FOREIGN KEY ('user_id') REFERENCES Utilisateurs('user_id')
);

CREATE TABLE 'Commentaires de commentaires' (
  'comm2comm_id' INTEGER PRIMARY KEY,
  'user_id' INTEGER,
  'comm_id' INTEGER,
  'Contenu' TEXT,
  FOREIGN KEY ('user_id') REFERENCES Utilisateurs('user_id'),
  FOREIGN KEY ('comm_id') REFERENCES Commentaires('comm_id')
);

