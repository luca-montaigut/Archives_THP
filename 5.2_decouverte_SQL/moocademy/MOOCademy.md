CREATE TABLE 'Cours' (
  'Cours_id' INTEGER PRIMARY KEY,
  'Titre' TEXT,
  'Description' TEXT
);

CREATE TABLE 'Leçons' (
  'Leçon_id' INTEGER PRIMARY KEY,
  'Titre' TEXT,
  'body' TEXT,
  'Cours_id' INTEGER,
  FOREIGN KEY ('Cours_id') REFERENCES Cours('Cours_id')
);


