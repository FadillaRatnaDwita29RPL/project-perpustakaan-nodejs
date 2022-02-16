require('dotenv').config();
const express = require('express');
const app = express();
const anggotaRouter = require("./api/anggota/anggota.router");
const petugasRouter = require("./api/petugas/petugas.router");
const pinjamRouter = require("./api/pinjam/pinjam.router");
const bukuRouter = require("./api/buku/buku.router");
app.use(express.json());
app.use("/api/anggota", anggotaRouter);
app.use("/api/petugas", petugasRouter);
app.use("/api/pinjam", pinjamRouter)
app.use("/api/buku", bukuRouter)
const tanggal = new Date()
app.listen(process.env.APP_PORT, ()=>{
console.log("Tersambung di PORT : " + process.env.APP_PORT + tanggal)

})
