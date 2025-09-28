USE EX1;

CREATE TABLE Authors(
                        AuthorID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        AuthorName VARCHAR(100)
);


CREATE TABLE Articles(
                         ArticleID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                         ArticleTitle VARCHAR(100),
                         WordCount INT,
                         Views INT



);

CREATE TABLE Publications
(
    AritcleID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    AuthorID  INT,
    ArticleID INT,
    FOREIGN KEY(AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (ArticleID) REFERENCES Articles(ArticleID)
);

INSERT INTO Authors (AuthorName) VALUES ('Maria Charlotte'), ('Juan Perez'), ('Gemma Alcocer');
INSERT INTO Articles (ArticleTitle,WordCount,Views)
VALUES
    ( 'Best Paint Colors', 814, 14),
    ( 'Small Space Decorating Tips', 1146, 221),
    ('Hot Accessories', 986, 105),
    ( 'Mixing Textures', 765, 22),
    ('Kitchen Refresh', 1242, 307),
    ('Homemade Art Hacks', 1002, 193),
    ( 'Refinishing Wood Floors', 1571, 7542);
