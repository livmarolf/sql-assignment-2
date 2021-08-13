SELECT *
FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE il.unit_price > 0.99;


SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;


SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id

-- ask about id^^ --

SELECT album.title, artist.name
FROM album
JOIN artist
ON album.artist_id = artist.artist_id


SELECT album.title, artist.name
FROM album
JOIN artist
ON album.artist_id = artist.artist_id


SELECT t.name
FROM track t
JOIN playlist_track pt
ON t.track_id = pt.track_id


SELECT t.name, p.name
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id


SELECT t.name, a.title
FROM genre g
JOIN track t ON g.genre_id = t.genre_id
JOIN album a On t.album_id = a.album_id
WHERE g.name = 'Alternative & Punk'