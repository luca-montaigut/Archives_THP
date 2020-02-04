CREATE TABLE 'Cours' (
  'Cours_id' INTEGER PRIMARY KEY, 
  'Titre' TEXT,
  'Description' TEXT,
  'Eleves_id' INTEGER,
  FOREIGN KEY ('Eleves_id') REFERENCES Eleves('Eleves_id')
);

CREATE TABLE 'Eleves' (
  'Eleves_id' INTEGER PRIMARY KEY,
  'Nom' TEXT,
  'Prénom' TEXT
);


