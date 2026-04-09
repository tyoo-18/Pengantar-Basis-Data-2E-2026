CREATE TABLE supplier (
    id_supplier INT PRIMARY KEY,
    nama_supplier VARCHAR(100),
    kota VARCHAR(50)
);

INSERT INTO supplier VALUES
(1,'Miftah', 'Surabaya'),
(2,'Joni', 'Bangkalan'),
(3,'Tyoo', 'Sampang');

UPDATE supplier
SET kota = 'Jakarta'
WHERE id_supplier = 3;

DELETE FROM supplier
WHERE id_supplier = 3;