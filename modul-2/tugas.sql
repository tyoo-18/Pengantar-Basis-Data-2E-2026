-- NOMOR 1
CREATE TABLE
    dokter (
        id_dokter BIGINT PRIMARY KEY,
        nama_dokter VARCHAR(250),
        spesialisasi VARCHAR(250)
    );

CREATE TABLE
    pasien (
        id_pasien BIGINT PRIMARY KEY,
        nama_pasien VARCHAR(250),
        tanggal_lahir DATE,
        no_telepon CHAR(12)
    );

CREATE TABLE
    rekam_medis (
        id_rekam BIGINT PRIMARY KEY,
        id_pasien BIGINT,
        id_dokter BIGINT,
        tanggal_periksa DATE,
        diagnosis VARCHAR(250),
        FOREIGN KEY (id_pasien) REFERENCES pasien (id_pasien) ON DELETE RESTRICT,
        FOREIGN KEY (id_dokter) REFERENCES dokter (id_dokter) ON DELETE RESTRICT
    );

-- NOMOR 2
INSERT INTO
    dokter (id_dokter, nama_dokter, spesialisasi)
VALUES
    (1, 'Rahmad Bagus Setiawan', 'Bedah Jantung'),
    (2, 'Miftahul Ulum', 'Bedah Otak');

INSERT INTO
    pasien (id_pasien, nama_pasien, tanggal_lahir, no_telepon)
VALUES
    (1, 'Tyoo', '2006-12-18', '081234567890'),
    (2, 'Jhony', '2002-10-19', '080987654321');

INSERT INTO
    rekam_medis (
        id_rekam,
        id_pasien,
        id_dokter,
        tanggal_periksa,
        diagnosis
    )
VALUES
    (1, 2, 2, '2026-04-09', 'pusing'),
    (2, 1, 1, '2026-04-05', 'sakit hati');

INSERT INTO
    rekam_medis (
        id_rekam,
        id_pasien,
        id_dokter,
        tanggal_periksa,
        diagnosis
    )
VALUES
    (1, 1, 5, '2026-04-09', 'demam tinggi');

-- NOMOR 3
-- a
UPDATE pasien
SET
    no_telepon = '088888888888'
WHERE
    id_pasien = 1;

-- b
UPDATE dokter
SET
    spesialisasi = 'Potong Kepala'
WHERE
    id_dokter = 2;

-- c
DELETE FROM rekam_medis
WHERE
    id_rekam = 1;

-- NOMOR 4
CREATE TABLE
    rekam_medis (
        id_rekam BIGINT PRIMARY KEY,
        id_pasien BIGINT,
        id_dokter BIGINT,
        tanggal_periksa DATE,
        diagnosis VARCHAR(250),
        FOREIGN KEY (id_pasien) REFERENCES pasien (id_pasien) ON DELETE RESTRICT,
        FOREIGN KEY (id_dokter) REFERENCES dokter (id_dokter) ON DELETE CASCADE
    );

INSERT INTO
    rekam_medis (
        id_rekam,
        id_pasien,
        id_dokter,
        tanggal_periksa,
        diagnosis
    )
VALUES
    (1, 1, 1, '2026-04-02', 'SAKIT HATI'),
    (2, 2, 1, '2026-04-05', 'ANEMIA'),
    (3, 2, 2, '2026-04-05', 'SAKIT DEMAM'),
    (4, 1, 2, '2026-04-09', 'PUSING');

DELETE FROM dokter
WHERE
    id_dokter = 2;

DELETE FROM pasien
WHERE
    id_pasien = 1;

-- NOMOR 5
CREATE TABLE
    rekam_medis (
        id_rekam BIGINT PRIMARY KEY,
        id_pasien BIGINT,
        id_dokter BIGINT,
        tanggal_periksa DATE,
        diagnosis VARCHAR(250),
        FOREIGN KEY (id_pasien) REFERENCES pasien (id_pasien) ON DELETE RESTRICT,
        FOREIGN KEY (id_dokter) REFERENCES dokter (id_dokter) ON DELETE RESTRICT
    );

INSERT INTO
    rekam_medis (
        id_rekam,
        id_pasien,
        id_dokter,
        tanggal_periksa,
        diagnosis
    )
VALUES
    (1, 1, 1, '2026-04-02', 'DBD'),
    (2, 2, 1, '2026-04-05', 'usus buntu');

TRUNCATE TABLE rekam_medis;

TRUNCATE TABLE pasien;