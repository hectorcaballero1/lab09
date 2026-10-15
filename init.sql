CREATE TABLE noticias (
    id SERIAL PRIMARY KEY,
    url TEXT,
    contenido TEXT,
    categoria VARCHAR(50),
    bag_of_words JSONB
);

CREATE TABLE stopwords (
    id SERIAL PRIMARY KEY,
    word TEXT UNIQUE NOT NULL
);

COPY noticias (url, contenido, categoria) FROM '/data/news_es.csv' WITH (FORMAT csv, HEADER true);
COPY stopwords (word) FROM '/data/stoplist.txt';
