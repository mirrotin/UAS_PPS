const express = require('express');
const bodyParser = require('body-parser');
const koneksi = require('./library/soalDb');
const app = express();
const PORT = process.env.PORT || 3000;

// set body parser
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

// ============= create data / insert data
// coba di postman --> (post, x-www-urlencoded)
app.post('/posts', (req, res) => {

    console.log('datanya', req.body);
    // buat variabel penampung data dan query sql
    const data = { ...req.body };
    const querySql = 'INSERT INTO posts SET ?';
    console.log('coba create/input baru');
    console.log('datanya=', req.body);

    // jalankan query
    koneksi.query(querySql, data, (err, rows, field) => {
        // error handling
        if (err) {
            return res.status(500).json({ message: 'Gagal insert soal ujian!', error: err });
        }

        // jika request berhasil
        res.status(201).json({ success: true, message: 'Berhasil insert soal ujian!' });
    });
});


// ============= read data / get data
// coba di postman --> (get)
app.get('/posts', (req, res) => {
    // buat query sql
    const querySql = 'SELECT * FROM posts ORDER BY idsoal desc';
    console.log('Ini GET');

    // jalankan query
    koneksi.query(querySql, (err, rows, field) => {
        // error handling
        if (err) {
            return res.status(500).json({ message: 'Ada kesalahan', error: err });
        }

        // jika request berhasil
        res.status(200).json({ success: true, data: rows });
    });
});


// ========= get one record data
// coba di postman --> (get)
app.get('/posts/:idsoal', (req, res) => {
    // buat query sql
    const querySql = `SELECT * FROM posts WHERE idsoal = ${req.params.idsoal}`;
    console.log(`Request idsoal = ${req.params.idsoal}`)


    // jalankan query
    koneksi.query(querySql, (err, rows, field) => {
        // error handling
        if (err) {
            return res.status(500).json({ message: 'Ada kesalahan', error: err });
        }

        // jika request berhasil
        res.status(200).json({ success: true, data: rows });
    });
});


// update data 
// coba di postman --> (put, body)
app.put('/posts/:idsoal', (req, res) => {
    // buat variabel penampung data dan query sql
    const data = { ...req.body };
    const querySearch = 'SELECT * FROM posts WHERE idsoal = ?';
    const queryUpdate = 'UPDATE posts SET ? WHERE idsoal = ?';

    // jalankan query untuk melakukan pencarian data
    koneksi.query(querySearch, req.params.idsoal, (err, rows, field) => {
        // error handling
        if (err) {
            return res.status(500).json({ message: 'Ada kesalahan', error: err });
        }

        // jika idsoal yang dimasukkan sesuai dengan data yang ada di db
        if (rows.length) {
            // jalankan query update
            koneksi.query(queryUpdate, [data, req.params.idsoal], (err, rows, field) => {
                // error handling
                if (err) {
                    return res.status(500).json({ message: 'Ada kesalahan', error: err });
                }

                // jika update berhasil
                res.status(200).json({ success: true, message: 'Berhasil update soal ujian!' });
            });
        } else {
            return res.status(404).json({ message: 'Soal ujian tidsoalak ditemukan!', success: false });
        }
    });
});


// delete data
// coba di postman --> (delete)
app.delete('/posts/:idsoal', (req, res) => {
    // buat query sql untuk mencari data dan hapus
    const querySearch = 'SELECT * FROM posts WHERE idsoal = ?';
    const queryDelete = 'DELETE FROM posts WHERE idsoal = ?';

    // jalankan query untuk melakukan pencarian data
    koneksi.query(querySearch, req.params.idsoal, (err, rows, field) => {
        // error handling
        if (err) {
            return res.status(500).json({ message: 'Ada kesalahan', error: err });
        }

        // jika idsoal yang dimasukkan sesuai dengan data yang ada di db
        if (rows.length) {
            // jalankan query delete
            koneksi.query(queryDelete, req.params.idsoal, (err, rows, field) => {
                // error handling
                if (err) {
                    return res.status(500).json({ message: 'Ada kesalahan', error: err });
                }

                // jika delete berhasil
                res.status(200).json({ success: true, message: 'Berhasil hapus soal ujian!' });
            });
        } else {
            return res.status(404).json({ message: 'Soal ujian tidsoalak ditemukan!', success: false });
        }
    });
});


// buat server nya
app.listen(PORT, () => console.log(`Server running at port: ${PORT}`));