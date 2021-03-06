-- COPY (SELECT * FROM track) TO stdout CSV HEADER DELIMITER E'\t';
COPY(
    SELECT
        t.id AS pk,
        t.gid AS mbid,
        tn.name AS name,
        t.position,
        t.number,
        t.length,
        t.recording AS recording_fk,
        t.medium AS medium_fk,
        t.artist_credit AS artist_credit_fk
    FROM track t
    JOIN track_name tn ON t.name=tn.id
)
TO stdout CSV HEADER DELIMITER E'\t';
