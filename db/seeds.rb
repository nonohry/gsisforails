# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Status.delete_all
Position.delete_all
Gender.delete_all
Religion.delete_all
Group.delete_all
Score.delete_all
Active.delete_all
AdminUser.delete_all
Status.create([{nama: 'Dosen Tetap'}, {nama: 'Dosen PNS'}, {nama: 'Dosen Honorer'}])
Position.create([{nama: 'Tenaga Pengajar'}, {nama: 'Asisten Ahli'}, {nama: 'Lektor'}, {nama: 'Lektor Kepala'}, {nama: 'Guru Besar'}])
Gender.create([{nama: 'Perempuan'}, {nama: 'Laki-Laki'}])
Religion.create([{nama: 'Islam'}, {nama: 'Kristen'}, {nama: 'Protestan'}, {nama: 'Hindu'}, {nama: 'Budha'}, {nama: 'Khonghucu'}])
Group.create([{nama: 'Pagi'}, {nama: 'Sore'}])
Score.create([{kode: 4, nama: 'A', deskripsi: 'Sangat Baik'}, {kode: 3, nama: 'B', deskripsi: 'Baik'}, {kode: 2, nama: 'C', deskripsi: 'Cukup'}, {kode: 1, nama: 'D', deskripsi: 'Kurang / Tidak Lulus'}, {kode: 0, nama: 'E', deskripsi: 'Tidak Lulus'}])
Active.create([{nama: 'Aktif'}, {nama: 'Cuti'}, {nama: 'DO / Putus Studi'}, {nama: 'Keluar'}, {nama: 'Lulus'}, {nama: 'Non Aktif'}])
AdminUser.create([{username: 'gopanx', password: 'kilerjo'}])