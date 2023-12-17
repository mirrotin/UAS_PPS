var express = require('express');
var router = express.Router();
const multer = require('multer');
const mysql = require('mysql');

//import database
var connection = require('../library/database');

// KONFIGURASI MULTER
const storage = multer.diskStorage({
    destination: 'public/uploads/',
    filename: (req, file, cb) => {
        cb(null, Date.now() + '-' + file.originalname);
    },
});

const upload = multer({ storage });

/**
 * MENAMPILKAN SEMUA LIST soal_ujian DI BANK SOAL
 */
router.get('/', function (req, res, next) {
    //query
    connection.query('SELECT * FROM posts ORDER BY idsoal desc', function (err, rows) {
        if (err) {
            req.flash('error', err);
            res.render('posts', {
                data: ''
            });
        } else {
            //render ke view posts index

            res.render('posts/index', {
                data: rows // <-- data posts
            });
        }
    });
});

/**
 * MEMBUAT SOAL BARU
 */
router.get('/create', function (req, res, next) {
    res.render('posts/create', {
        soal_ujian: '',
        jawabanA: '',
        jawabanB: '',
        jawabanC: '',
        jawabanD: '',
        level_kesulitan: '',
        bab: ''
    })
})

/**
 * MENYIMPAN SOAL
 */
router.post('/store', function (req, res, next) {

    let soal_ujian = req.body.soal_ujian;
    let jawabanA = req.body.jawabanA;
    let jawabanB = req.body.jawabanB;
    let jawabanC = req.body.jawabanC;
    let jawabanD = req.body.jawabanD;
    let level_kesulitan = req.body.level_kesulitan;
    let bab = req.body.bab;
    let errors = false;

    if (!errors) {

        let formData = {
            soal_ujian: soal_ujian,
            jawabanA: jawabanA,
            jawabanB: jawabanB,
            jawabanC: jawabanC,
            jawabanD: jawabanD,
            level_kesulitan: level_kesulitan,
            bab: bab
        }

        // insert query
        connection.query('INSERT INTO posts SET ?', formData, function (err, result) {
            //if(err) throw err
            if (err) {
                req.flash('error', err)

                // render to add.ejs
                res.render('posts/create', {
                    soal_ujian: formData.soal_ujian,
                    jawabanA: formData.jawabanA,
                    jawabanB: formData.jawabanB,
                    jawabanC: formData.jawabanC,
                    jawabanD: formData.jawabanD,
                    level_kesulitan: formData.level_kesulitan,
                    bab: formData.bab
                })
            } else {
                req.flash('success', 'Data Berhasil Disimpan!');
                res.redirect('/posts');
            }
        })
    }
})

/**
 * METODE ACAK SOAL UJIAN 
 */
router.get('/rangkai', function (req, res, next) {
    //query
    //render ke view posts index
    res.render('posts/rangkai');
});

/**
 * METODE ACAK
 */
router.get('/acak', function (req, res, next) {
    //query
    connection.query('SELECT * FROM posts ORDER BY RAND() LIMIT 25', function (err, rows) {
        if (err) {
            req.flash('error', err);
            res.render('posts', {
                data: ''
            });
        } else {
            //render ke view acak index
            res.render('posts/acak', {
                data: rows // <-- data posts
            });
        }
    });
});

module.exports = router;