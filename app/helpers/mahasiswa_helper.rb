module MahasiswaHelper
  def semester_aktif
    "#{@mahasiswa.course.parameter.tahun_ajaran} #{@mahasiswa.course.parameter.semester}"
  end
    
end
