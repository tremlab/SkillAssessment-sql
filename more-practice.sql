-- Include your solutions to the More Practice problems in this file.



-- Insert a Brand
INSERT INTO brands (brand_id, name, founded, headquarters)
    VALUES ('sub', 'Subaru', 1953, 'Tokyo, Japan');


-- Insert Models

INSERT INTO models (year, brand_id, name)
    VALUES (2015, 'che', 'Malibu');

INSERT INTO models (year, brand_id, name)
    VALUES (2015, 'sub', 'Outback');

-- Create an Awards Table

CREATE TABLE awards(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    year INTEGER NOT NULL,
    model_id INTEGER
        REFERENCES models
);

-- Insert Awards

INSERT INTO awards (name, year, model_id)
    VALUES ('IIHS Safety Award', 2015, 47);

INSERT INTO awards (name, year, model_id)
    VALUES ('IIHS Safety Award', 2015, 48);

INSERT INTO awards (name, year)
    VALUES ('Best in Class', 2015);

   JOIN brands AS b
    ON m.brand_id = b.brand_id 




