/* Create table about the people and what they do here */
-- Create the People table
CREATE TABLE People (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    profession TEXT NOT NULL
);

-- Create the Movies table
CREATE TABLE Movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    release_year INTEGER NOT NULL,
    person_id INTEGER
);

-- Create the Songs table
CREATE TABLE Songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    release_year INTEGER NOT NULL,
    person_id INTEGER
);

-- Create the Books table
CREATE TABLE Books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    publication_year INTEGER NOT NULL,
    person_id INTEGER
);

-- Create the Relationships table
CREATE TABLE Relationships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id_1 INTEGER,
    person_id_2 INTEGER,
    relationship_type TEXT
);

-- Insert values into the People table
INSERT INTO People (name, profession) VALUES
('Tom Hanks', 'Movie Star'),
('Meryl Streep', 'Movie Star'),
('Taylor Swift', 'Singer'),
('J.K. Rowling', 'Author');

-- Insert values into the Movies table
INSERT INTO Movies ( title, release_year, person_id) VALUES
('Forrest Gump', 1994, 1),
('The Iron Lady', 2011, 2);

-- Insert values into the Songs table
INSERT INTO Songs (title, release_year, person_id) VALUES
('Love Story', 2008, 3),
('Shake It Off', 2014, 3);

-- Insert values into the Books table
INSERT INTO Books (title, publication_year, person_id) VALUES
('Harry Potter and the Philosopher Stone', 1997, 4),
('Harry Potter and the Chamber of Secrets', 1998, 4);

-- Insert values into the Relationships table
INSERT INTO Relationships ( person_id_1, person_id_2, relationship_type) VALUES
(1, 2, 'Married');

SELECT name,profession,a.title,a.release_year
    FROM People
    JOIN Movies a
    ON People.id=a.person_id;
    
SELECT name,profession,a.title,a.release_year
    FROM People
    JOIN Songs a
    ON People.id=a.person_id;

SELECT name,profession,a.title,a.publication_year
    FROM People
    JOIN Books a
    ON People.id=a.person_id;
    
SELECT b.name,c.name,a.relationship_type
    FROM Relationships a
    JOIN People b
    ON a.person_id_1=b.id
    JOIN People c
    ON a.person_id_2=c.id;
